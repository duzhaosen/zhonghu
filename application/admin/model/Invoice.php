<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/23
 * @createTime: 15:42
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\model;

use think\Config;
use \think\Model;
use think\Db;

class Invoice extends Model {
    private $db = 'zh_invoice';

    /** 发票信息查询
     * @param $condition
     */
    public function getList($condition) {
        return db($this->db)->where($condition)->select();
    }
}
