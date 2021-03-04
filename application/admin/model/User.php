<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/23
 * @createTime: 15:42
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\model;

use \think\Model;
use think\Db;
use think\Session;

class User extends Model {
    private $db = 'zh_user';

    /**查询用户
     * $condition array 查询条件
     * $field string 查询字段
     * @return array()
     */
    public function getList($condition=array(),$field='*', $type = 1) {
        if($type == 1) {
            $condition['type'] = 1;
        }

        if(!isset($condition['structure'])) {
            $admin = Session::get('user_admin');
            if($admin == false) {
                $structure = Session::get('structure');
                if($structure) {
                    $ReverseIds = Model('Structure')->getStructureList([],['pid'=>$structure]);
                    if(!empty($ReverseIds)) {
                        $condition['structure'] = ['in',$ReverseIds];
                    }
                }
            }
        }else{
            $admin = Session::get('user_admin');
            if($admin == false) {
                $structure = Session::get('structure');
                $ReverseIds = Model('Structure')->getStructureList([],['pid'=>$structure]);
                if(!in_array($condition['structure'],$ReverseIds)) {
                    return [];
                }
            }
        }
        $res = Db($this->db)->field($field)->where($condition)->select();
        if(!empty($res)) {
            foreach($res as $key => $value) {
                //组织
                if(!empty($value['structure'])) {
                    $structure = Model('Structure')->getList(['id'=>$value['structure']],'*');
                    if(!empty($structure)) {
                        $res[$key]['structureStr'] = $structure[0]['name'];
                        $res[$key]['sourceStr'] = $structure[0]['source'];
                        $res[$key]['source'] = $structure[0]['source'];
                    }else{
                        $res[$key]['structureStr'] = '';
                        $res[$key]['sourceStr'] = '';
                        $res[$key]['source'] = 0;
                    }
                    //来源
                    $all_structure = '&nbsp('.$res[$key]['structureStr'].')';
                }else{
                    $res[$key]['structureStr'] = '';
                    $all_structure = '';
                }
                //角色
                if(!empty($value['roles'])) {
                    $roles = Model('Roles')->getRoles(['id'=>$value['roles']],'*');
                    $res[$key]['rolesStr'] = $roles[0]['name'];
                    $all_roles = '&nbsp('.$res[$key]['rolesStr'].')';
                }else{
                    $res[$key]['rolesStr'] = '';
                    $all_roles = '';
                }

                $res[$key]['typeStr'] = $value['type'] == 1 ? '启用' : '禁用';
                $res[$key]['salesmanStr'] = $value['salesman'] == 1 ? '业务员' : '非业务员';
                $res[$key]['managerStr'] = $value['manager'] == 1 ? '经办人' : '非经办人';
                $res[$key]['sexStr'] = $value['sex'] == 1 ? '男' : '女';
                $res[$key]['create_time'] = $value['create_time'] == 0 ? '' : date('Y-m-d H:i:s', $value['create_time']);
                $res[$key]['op_time'] = $value['op_time'] == 0 ? '' : date('Y-m-d H:i:s', $value['op_time']);

                //详细信息字段

                $res[$key]['all_name'] = $value['name'].$all_structure.$all_roles;

                //经办人信息
                $res[$key]['managerInfo'] = Db($this->db)->where(['id'=>$value['manager_id']])->select();

                //用户地区
                $res[$key]['cityName'] = cityName($value['city']);
            }
            return $res;
        }
        return [];
    }

    /** 添加用户
     * @param $param
     * @return int|string
     */
    public function addUser($param) {
        $param['create_time'] = time();
        $param['create_user'] = getAdminInfo();
        $param['id'] = $this->getUserId();
        return Db($this->db)->insert($param);
    }

    /** 生成工号
     *
     */
    public function getUserId() {
        $res = Db($this->db)->field('id')->order('id desc')->select();
        return $res[0]['id'] + 1;
    }

    /** 修改用户
     * @param $param
     * @return int|string
     */
    public function editUser($param) {
        $param['op_time'] = time();
        $param['op_user'] = getAdminInfo();
        if($param['type'] == 3) {
            return db($this->db)->where(['id'=>$param['id']])->delete();
        }
        return Db($this->db)->update($param);
    }

    /** 查看当前用户只能查看哪些用户
     *
     */
    public function getLoginUserid() {
        $list = $this->getList(['salesman'=>1]);
        $userIds = array();
        foreach ($list as $key => $value) {
            $userIds[] = $value['id'];
        }
        return $userIds;
    }
}
