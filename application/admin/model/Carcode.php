<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/16
 * @createTime: 15:12
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\model;

use \think\Model;
use think\Db;

class Carcode extends Model {
    private $db = "zh_carcode";

    /** 查勘验证码
     * @param $condition
     * @param $page
     * @param $paginate
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function getList($condition,$page,$paginate=[]) {
        $result = Db($this->db)->where($condition)->order('id','desc')->paginate($page,false,$paginate);
        return  $result;
    }

}
