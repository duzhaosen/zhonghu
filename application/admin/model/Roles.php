<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/22
 * @createTime: 11:37
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\model;

use \think\Model;
use think\Db;

class Roles extends Model {
    private $db = "zh_roles";

    /**查询角色
     * @param array $condition
     * @param string $field
     * @return bool|false|\PDOStatement|string|\think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getRoles($condition=array(), $field='*') {
        $res = db($this->db)->field($field)->where($condition)->select();
        if(isset($res)) {
            foreach($res as $key => $value) {
                $res[$key]['typestr'] = $value['type'] == 1 ? '正常' : '禁用';
                $res[$key]['salesmanstr'] = $value['salesman'] == 1 ? '否' : '是';
                $res[$key]['isuserstr'] = $value['isuser'] == 1 ? '否' : '是';
                $res[$key]['adminstr'] = $value['admin'] == 1 ? '否' : '是';
                $res[$key]['group_powerstr'] = $value['group_power'] == 1 ? '否' : '是';
                $res[$key]['powerstr'] = $value['admin'] == 2 ? '超级管理员' : '普通权限';
                $res[$key]['text'] = $value['name'];
            }
        }
        return $res;
    }

    /**添加角色
     * @param $param
     * @return mixed
     */
    public function addRoles($param) {
        $param['create_user'] = getAdminInfo();
        $param['create_time'] = time();
        return db($this->db)->insert($param);
    }

    /**角色修改
     * @param $param
     */
    public function editRoles($param) {
        $param['op_user'] = getAdminInfo();
        $param['op_time'] = time();
        return db($this->db)->update($param);
    }
}