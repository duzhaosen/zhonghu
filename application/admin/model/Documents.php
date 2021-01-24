<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/16
 * @createTime: 15:12
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\model;

use think\Config;
use \think\Model;
use think\Db;

class Documents extends Model {
    private $db = "zh_documents_add";
    private $issued_db = "zh_documents_issued";
    private $info_db = "zh_documents_info";
    private $recycle_db = "zh_documents_recycle";

    /** 查询单证model
     * $condition array() 查询条件
     * $field string 查询返回字段，默认返回全部
     * @return array()
     */
    public function getList($condition=array(), $page=10,$paginate=[]) {
        $condition['status'] = 1;
        $commont = Config::parse(APP_PATH.'/admin/config/documents.ini','ini');
        $res = db($this->db)->where($condition)
            ->paginate($page,false,$paginate)->each(function($item,$key) use($commont) {
            $item['typeStr'] = $commont['type'][$item['type']];
            return $item;
        });
        return $res;
    }

    /** 查询是否单证使用
     * @param $condition
     * @return bool|\PDOStatement|string|\think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getInfoList($condition) {
        $result = db($this->info_db)->where($condition)->order(['is_issued'=>'asc'])->select();
        if(!empty($result)) {
            $commont = Config::parse(APP_PATH.'/admin/config/documents.ini','ini');
            foreach ($result as $key => $value) {
                $result[$key]['is_issuedStr'] = $commont['is_issued'][$value['is_issued']];
            }
        }
        return $result;
    }

    /** 查询单证信息，无分页信息
     *
     */
    public function getListPage($condition=[]) {
        $condition['status'] = 1;
        return db($this->db)->where($condition)->select();
    }

    /** 查询单证信息，无分页信息
     *
     */
    public function getIssuedListPage($condition=[]) {
        $condition['issued_status'] = 1;
        return db($this->issued_db)->where($condition)->select();
    }

    /**添加单证
     *
     */
    public function addDocuments($condition) {
        Db::startTrans();
        try{
            $condition['create_user'] = getAdminInfo();
            $condition['create_time'] = time();
            $condition['remaining'] = $condition['total'];
            $condition['add_id'] = date('mdHis',time());
            $condition['end_time'] = strtotime("+1 year");
            db($this->db)->insert($condition);
            //添加单证入库详情页
            $data = [];
            $num = 0;
            for ($i = $condition['s_num']; $i <= $condition['e_num']; $i++) {
                if(strlen($condition['s_num']) != strlen($i)) {
                    $i = str_pad($i,strlen($condition['s_num']),"0",STR_PAD_LEFT);
                }
                $data[$num]['related_id'] = $condition['add_id'];
                $data[$num]['documents_id'] = $i;
                $data[$num]['is_issued'] = 1;
                $num ++;
            }
            db($this->info_db)->insertAll($data);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            print_r($e);die;
            return false;
        }
        return true;
    }

    /**删除单证
     *
     */
    public function delDocuments($where) {
        $condition = [];
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        $condition['status'] = 2;
        return db($this->db)->where($where)->update($condition);
    }

    /**添加下发单证
     *
     */
    public function addIssued($condition) {

        Db::startTrans();
        try{
            $condition['issued_create_user'] = getAdminInfo();
            $condition['issued_create_time'] = time();
            $condition['issued_remaining'] = $condition['issued_total'];
            $condition['issued_end_time'] = strtotime("+1 year");
            $condition['issued_id'] = date('dHis');
            $condition['issued_status'] = 1;
            db($this->issued_db)->insert($condition);
            //同步单证入库批次剩余量更新
            $list = db($this->db)->where(['add_id'=>$condition['add_id']])->find();
            $total = $list['total'] - $condition['issued_total'] <= 0 ? 0 : $list['total'] - $condition['issued_total'];
            db($this->db)->where(['add_id'=>$condition['add_id']])->update(['remaining'=> $total]);
            //添加单证入库详情页
            $data = [];
            $num = 0;
            for ($i = $condition['issued_s_num']; $i <= $condition['issued_e_num']; $i++) {
                if(strlen($condition['issued_s_num']) != strlen($i)) {
                    $i = str_pad($i,strlen($condition['issued_s_num']),"0",STR_PAD_LEFT);
                }
                $data[$num]['related_id'] = $condition['issued_id'];
                $data[$num]['documents_id'] = $i;
                $data[$num]['is_issued'] = 1;

                //更新详情表
                $where = array();
                $where['related_id'] = $condition['add_id'];
                $where['documents_id'] = $i;

                $info = [];
                $info['issued_time'] = time();
                $info['is_issued'] = 2;
                $info['issued_user'] = $condition['issued_create_user'];
                db($this->info_db)->where($where)->update($info);

                $num ++;
            }
            db($this->info_db)->insertAll($data);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
        return true;
    }

    /**删除单证
     *
     */
    public function delIssued($where) {
        $condition = [];
        $condition['issued_op_user'] = getAdminInfo();
        $condition['issued_op_time'] = time();
        $condition['issued_status'] = 2;
        return db($this->issued_db)->where($where)->update($condition);
    }

    /** 添加单证回收
     * @param $condition
     * @return int|string
     */
    public function addRecycle($condition) {
        $data = [];
        $condition['recycle_create_user'] = getAdminInfo();
        $condition['recycle_create_time'] = strtotime($condition['recycle_create_time']);
        $start = $condition['recycle_s_num'];
        unset($condition['recycle_s_num']);
        $end = $condition['recycle_e_num'];
        unset($condition['recycle_e_num']);
        unset($condition['recycle_total']);
        for ($i = $start; $i<= $end; $i++) {
            if(strlen($start) != strlen($i)) {
                $i = str_pad($i,strlen($start),"0",STR_PAD_LEFT);
            }
            $condition['documents_id'] = $i;
            $data[] = $condition;
        }
        return db($this->recycle_db)->insertAll($data);
    }

    /**删除单证回收
     *
     */
    public function delRecycle($where) {
        $condition = [];
        $condition['recycle_op_user'] = getAdminInfo();
        $condition['recycle_op_time'] = time();
        $condition['recycle_status'] = 2;
        return db($this->recycle_db)->where($where)->update($condition);
    }

    /** 查询单证下发列表
     * @param $condition
     * @param int $pagesize
     * @param $paginate
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getIssuedList($condition,$pagesize=10,$paginate=[]) {
        $condition['issued_status'] = 1;
        $commont = Config::parse(APP_PATH.'/admin/config/documents.ini','ini');
        $res = db($this->issued_db)->where($condition)
            ->paginate($pagesize,false,$paginate)->each(function($item,$key) use($commont) {
                $item['issued_typeStr'] = $commont['type'][$item['issued_type']];
                //人员
                $users = Model('User')->getList(['id'=> $item['issued_user']]);
                $item['issued_userStr'] = $users[0]['name'];
                //组织
                $structure = Model('Structure')->getList(['id'=> $item['issued_structure']]);
                $item['issued_structureStr'] = $structure[0]['name'];

                return $item;
            });
        return $res;
    }

    /** 查询单证回收列表
     * @param $condition
     * @param int $pagesize
     * @param $paginate
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getRecycleList($condition,$pagesize=10,$paginate=[]) {
        $condition['recycle.recycle_status'] = 1;
        $commont = Config::parse(APP_PATH.'/admin/config/documents.ini','ini');
        $res = db($this->recycle_db)->where($condition)->alias('recycle')
            ->join($this->db.' add','recycle.add_id=add.add_id')
            ->join($this->issued_db.' issued','recycle.issued_id=issued.issued_id')
            ->paginate($pagesize,false,$paginate)->each(function($item,$key) use($commont) {
                $item['recycle_typeStr'] = $commont['type'][$item['recycle_type']];
                $item['recycle_fettleStr'] = $commont['fettle'][$item['recycle_fettle']];
                //人员
                $users = Model('User')->getList(['id'=> $item['issued_user']]);
                $item['recycle_userStr'] = $users[0]['name'];
                //组织
                $structure = Model('Structure')->getList(['id'=> $item['issued_structure']]);
                $item['recycle_structureStr'] = $structure[0]['name'];

                return $item;
            });
        return $res;
    }

    /**编辑单证
     *
     */
    public function editDocuments($condition) {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        return db($this->db)->update($condition);
    }
}
