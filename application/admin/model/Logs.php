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
use think\Request;

class Logs extends Model {
    private $db = "zh_logs";

    /** 添加日志
     * @param $condition
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public function addLogs($condition) {
        $result = Db($this->db)->insert($condition);
        return  $result;
    }

    /** 查询日志
     *
     */
    public function getList($condition,$field='*',$page,$paginate=[]){
        $commont = Config::parse(APP_PATH.'/admin/config/Logs.ini','ini');
        $result = db($this->db)->where($condition)->field($field)->order('id','desc')
            ->paginate($page,false,$paginate)->each(function($item) use($commont) {
                $item['log_typeStr'] = $commont['log_type'][$item['log_type']];
                if($item['power_id'] != 0) {
                    $power_str = '';
                    $position = Model('menu')->search(['id'=>$item['power_id']],'id,name,pid');
                    if(!empty($position)) {
                        if($position[0]['pid']) {
                            $father_position = Model('menu')->search(['id'=>$position[0]['pid']],'name');
                            $power_str .= $father_position[0]['name'].'-';
                        }
                        $power_str .= $position[0]['name'];
                    }
                    $item['power_idStr'] = $power_str;
                }else{
                    $item['power_idStr'] = '';
                }
                $item['log_content'] = urldecode($item['log_content']);
                $item['log_server_ip'] = !empty($item['log_server_ip']) ? long2ip($item['log_server_ip']): '';
              return $item;
            });
        return $result;
    }

}
