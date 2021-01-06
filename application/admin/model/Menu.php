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

class Menu extends Model {
    private $db = "zh_menu";

    /**查询菜单model
     * $condition array() 查询条件
     * $field string 查询返回字段，默认返回全部
     * @return array()
     */
    public function search($condition=array(), $field='*', $nodeOrder = false) {
        $condition['type'] = 1;
        $res = db($this->db)->field($field)->where($condition)->order('sort','asc')->select();
        if($nodeOrder) {
            $res = $this->nodeTree($res);
        }
        if(!empty($res)) {
            //格式化数据
            foreach ($res as $key => $value) {
                if(isset($value['folder'])) {
                    //URL路径拼接
                    $url = '/admin/'.$value['folder'].'/';
                    $url .= $value['action'] ? $value['action'] : '';
                    $url .= $value['param'] ? '?'.$value['param'] : '';
                    $res[$key]['url'] = $url == 'admin/' ? '' : $url;
                }else{
                    $res[$key]['url'] = '';
                }
                if(isset($value['isshow'])) {
                    $res[$key]['isshowStr'] = $value['isshow'] == 1 ? '展示' : '不展示';
                }
                if(isset($value['op_time'])) {
                    $res[$key]['op_time'] = date('Y-m-d H:i:s',$value['op_time']);
                }
                if(isset($value['create_time'])) {
                    $res[$key]['create_time'] = date('Y-m-d H:i:s',$value['create_time']);
                }
            }
            return $res;
        }
        return [];
    }


    function nodeTree($arr, $id = 0, $level = 0) {
        static $array = array();
        foreach ($arr as $v) {
            if ($v['pid'] == $id) {
                $v['level'] = $level;
                $array[] = $v;
                $this->nodeTree($arr, $v['id'], $level + 1);
            }
        }
        return $array;
    }

    /**添加菜单
     *
     */
    public function addMenu($condition) {
        $condition['create_user'] = getAdminInfo();
        $condition['create_time'] = time();
        return db($this->db)->insert($condition);
    }

    /**修改菜单
     *
     */
    public function editMenu($condition) {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        return db($this->db)->update($condition);
    }
}