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
        $res = Db($this->db)->field($field)->where($condition)->select();
        if(!empty($res)) {
            foreach($res as $key => $value) {
                //组织
                $structure = Model('Structure')->getList(['id'=>$value['structure']],'*');
                $res[$key]['structureStr'] = $structure[0]['name'];
                //来源
                $res[$key]['source'] = $structure[0]['source'];
                    //角色
                $roles = Model('Roles')->getRoles(['id'=>$value['roles']],'*');
                $res[$key]['rolesStr'] = $roles[0]['name'];

                $res[$key]['typeStr'] = $value['type'] == 1 ? '启用' : '禁用';
                $res[$key]['salesmanStr'] = $value['salesman'] == 1 ? '业务员' : '非业务员';
                $res[$key]['managerStr'] = $value['manager'] == 1 ? '经办人' : '非经办人';
                $res[$key]['sexStr'] = $value['sex'] == 1 ? '男' : '女';
                $res[$key]['create_time'] = date('Y-m-d H:i:s', $value['create_time']);
                $res[$key]['op_time'] = $value['op_time'] == 0 ? '' : date('Y-m-d H:i:s', $value['op_time']);

                //详细信息字段
                $res[$key]['all_name'] = $value['name'].'&nbsp('.$value['username'].')'.'&nbsp('.$res[$key]['structureStr'].')'.'&nbsp('.$res[$key]['rolesStr'].')';

                //经办人信息
                $res[$key]['managerInfo'] = $value['manager'] == 1 ? Db($this->db)->where(['id'=>$value['manager_id']])->select() : [];

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
        return Db($this->db)->insert($param);
    }

    /** 修改用户
     * @param $param
     * @return int|string
     */
    public function editUser($param) {
        $param['op_time'] = time();
        $param['op_user'] = getAdminInfo();
        return Db($this->db)->update($param);
    }
}