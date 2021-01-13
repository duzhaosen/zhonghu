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

class Upload extends Model {
    private $db = 'zh_attach';

    /** 上传图片落地
     * @param $condition
     */
    public function addUpload($condition) {
        $condition['create_user'] = getAdminInfo();
        $condition['create_time'] = time();
        return db($this->db)->insertGetId($condition);
    }

    /** 删除图片
     *
     */
    public function editUpload($condition) {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        return db($this->db)->update($condition);
    }
    /** 查询图片内容
     * $condition array()
     */
    public function getlist($condition,$field='*') {
        $result = array();
        $condition['type'] = 1;
        $res = db($this->db)->field($field)->where($condition)->select();
        if(!empty($res)) {
            $path = Config::parse(APP_PATH.'/admin/config/upload.ini','ini');
            foreach ($res as $key=>$value) {
                $value['url'] = $path['url']['path'].$value['folder'].'/'.$value['attach_url'];
                $result[$value['name']][] = $value;
            }
        }
        return $result;
    }
}
