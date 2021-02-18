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

class Company extends Model {
    private $db = "zh_company";

    /** 查询公司
     * @param $condition
     * @param $page
     * @param $paginate
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getList($condition,$field='*') {
        $condition['type'] = 1;
        $result = Db($this->db)->field($field)->where($condition)->order('create_time','desc')->select();
        if(!empty($result)) {
            $comment = Config::parse(APP_PATH . '/admin/config/company.ini', 'ini');
            foreach ($result as $key => $value) {
                $result[$key]['typeStr'] = $comment['type'][$value['type']];
                $result[$key]['url'] = $comment['path']['path'].$value['chapter'];
            }
        }
        return  $result;
    }

    /** 添加公司
     * @param $condition
     * @return int|string
     */
    public function addCompany($condition) {
        $condition['create_user'] = getAdminInfo();
        $condition['create_time'] = time();
        return db($this->db)->insert($condition);
    }

    /** 编辑公司
     * @param $condition
     * @return int|string
     */
    public function editCompany($condition) {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        return db($this->db)->update($condition);
    }

}
