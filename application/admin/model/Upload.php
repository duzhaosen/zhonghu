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

class Upload extends Model {
    private $db = 'zh_attach';

    /** 上传图片落地
     * @param $condition
     */
    public function addUpload($condition) {
        $condition['create_user'] = getAdminInfo();
        $condition['create_time'] = time();
        return db($this->db)->insert($condition);
    }
}