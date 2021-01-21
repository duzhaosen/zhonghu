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
use think\Session;

class Structure extends Model {
    private $db = "zh_structure";

    /**添加组织
     *
     */
    public function addStructure($param) {
        $param['create_user'] = getAdminInfo();
        $param['create_time'] = time();
        return Db($this->db)->insert($param);
    }

    /**修改组织
     *
     */
    public function editStructure($param) {
        $param['op_user'] = getAdminInfo();
        $param['op_time'] = time();
        return Db($this->db)->update($param);
    }
    /**查询组织model
     * $condition array() 查询条件
     * $field string 查询返回字段，默认返回全部
     * @return array()
     */
    public function getList($condition=array(), $field='*') {
        $condition['type'] = 1;
        if(!isset($condition['id'])) {
            $admin = Session::get('user_admin');
            if($admin == false) {
                $structure = Session::get('structure');
                $ReverseIds = $this->getStructureList([],['pid'=>$structure]);
                if($ReverseIds) {
                    $condition['id'] = ['in',$ReverseIds];
                }
            }
        }else{
            $admin = Session::get('user_admin');
            if($admin == false) {
                $structure = Session::get('structure');
                if($structure) {
                    $ReverseIds = $this->getStructureList([],['pid'=>$structure]);
                    if(!in_array($condition['id'],$ReverseIds)) {
                        return [];
                    }
                }
            }
        }
        $res = db($this->db)->field($field)->where($condition)->select();
        if(!empty($res)) {
            return $res;
        }
        return [];
    }

    /**
     *
     */
    public function getStructureList($ids=[],$condition,$field='*') {
        $condition['type'] = 1;
        $res = db($this->db)->field($field)->where($condition)->select();
        if(isset($res[0])) {
            foreach ($res as $key => $value) {
                $ids[] = $condition['pid'];
                $ids[] = $value['id'];
                if(isset($value['id'])) {
                    $this->getStructureList($ids,['pid'=>$value['id']]);
                }
            }
        }else{
            $ids[] = $condition['pid'];
        }
        $ids = array_unique($ids);
        return $ids;
    }

    /**格式化组织
     * @param $array
     * @return array
     */
    function formatTree($array){
        //第一步 构造数据
        $items = array();
        foreach($array as $value){
            $items[$value['id']] = $value;
            $items[$value['id']]['title'] = $value['name'];
            $items[$value['id']]['spread'] = true;
        }
        //第二部 遍历数据 生成树状结构
        $tree = array();
        foreach($items as $key => $value){
            if(isset($items[$value['pid']])){
                $items[$value['pid']]['children'][] = &$items[$key];
            }else{
                $tree[] = &$items[$key];
            }
        }
        return $tree;
    }
}
