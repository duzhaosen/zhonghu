<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Config;
use think\Session;

// 应用公共文件

function getTree($list,$ids) {
    //第一步 构造数据
    $items = array();
    foreach($list as $value){
        $items[$value['id']] = $value;
    }
    //第二部 遍历数据 生成树状结构
    $tree = array();
    foreach($items as $key => $value){
        if(in_array($value['id'], $ids)) {
            $items[$key]['checked'] = "checked";
        }
        $items[$key]['text'] = $value['name'];
        if(isset($items[$value['pid']])){
            $items[$value['pid']]['nodes'][] = &$items[$key];
        }else{
            $tree[] = &$items[$key];
        }
    }
    return $tree;
}

/**获取id的每一层id
 * $id int 最底层菜单id
 * @return array(
 */
function getTreeId($ids=[], $model, $id, $action) {
    $res = Model($model)->$action(['id'=>$id],'id,pid');
    if(isset($res[0])) {
        $ids[] = $res[0]['id'];
        if(isset($res[0]['pid'])) {
            $ids = getTreeId($ids, $model, $res[0]['pid'], $action);
        }
    }
    return $ids;
}

function getAcrTree($list, $ids=[]) {
    //第一步 构造数据
    $items = array();
    foreach($list as $value){
        $items[$value['id']]['text'] = $value['name'];
        $items[$value['id']]['pid'] = $value['pid'];
        $items[$value['id']]['id'] = $value['id'];
        if(!empty($ids)) {
            if(in_array($value['id'],$ids)) {
                $items[$value['id']]['additionalParameters']['item-selected'] = true;
            }
        }
        $islast = Model('Menu')->search(['pid'=>$value['id']]);
        if(!empty($islast)) {
            $items[$value['id']]['type'] = 'folder';
        }else{
            $items[$value['id']]['type'] = 'item';
        }
    }
    //第二部 遍历数据 生成树状结构
    $tree = array();
    foreach($items as $key => $value){
        if(isset($items[$value['pid']])){
            $items[$value['pid']]['additionalParameters']['children'][] = &$items[$key];
        }else{
            $tree[] = &$items[$key];
        }
    }
    return $tree;
}

/** 地区格式化tree
 *
 */
function cityTree($id) {
    $res = Config::parse(APP_PATH.'/admin/config/city.ini', 'ini' , 'city');
    $items = json_decode($res['province'],true);
    $info = json_decode($res['info'],true);
    $tree = array();
    $num=-1;
    foreach($items as $key => $value){
        $num ++;
        $tree[$num]['id'] = $key;
        $tree[$num]['text'] = $value;
        if($id == $key) {
            $tree[$num]['checked'] = "checked";
        }
        if(isset($info[$key])){
            if(is_array($info[$key])) {
                $count = -1;
                foreach ($info[$key] as $k => $v) {
                    $count ++;
                    $tree[$num]['nodes'][$count] = [];
                    $tree[$num]['nodes'][$count]['id'] = $k;
                    $tree[$num]['nodes'][$count]['text'] = $v;
                    if($id == $k) {
                        $tree[$num]['checked'] = 'checked';
                        $tree[$num]['nodes'][$count]['checked'] = 'checked';
                    }
                    if(isset($info[$k])) {
                        $n = -1;
                        foreach ($info[$k] as $kk => $vv) {
                            $n ++;
                            $tree[$num]['nodes'][$count]['nodes'][$n] = [];
                            $tree[$num]['nodes'][$count]['nodes'][$n]['id'] = $kk;
                            $tree[$num]['nodes'][$count]['nodes'][$n]['text'] = $vv;
                            if($id == $kk) {
                                $tree[$num]['checked'] = "checked";
                                $tree[$num]['nodes'][$count]['checked'] = 'checked';
                                $tree[$num]['nodes'][$count]['nodes'][$n]['checked'] = "checked";
                            }
                        }
                    }
                }
            }
        }else{
            $tree[] = $info[$key];
        }
    }
    return $tree;
}


/** 地区名称
 *
 */
function cityName($id) {
    $name='';
    $res = Config::parse(APP_PATH.'/admin/config/city.ini', 'ini' , 'city');
    $items = json_decode($res['province'],true);
    $info = json_decode($res['info'],true);
    $num=-1;
    foreach($items as $key => $value){
        $num ++;
        $tree[$num]['id'] = $key;
        $tree[$num]['text'] = $value;
        if($id == $key) {
            $name = $value;
        }
        if(isset($info[$key])){
            if(is_array($info[$key])) {
                $count = -1;
                foreach ($info[$key] as $k => $v) {
                    $count ++;
                    $tree[$num]['nodes'][$count] = [];
                    $tree[$num]['nodes'][$count]['text'] = $v;
                    if($id == $k) {
                        $name = $tree[$num]['text'] . '-' . $v;
                    }
                    if(isset($info[$k])) {
                        $n = -1;
                        foreach ($info[$k] as $kk => $vv) {
                            $n ++;
                            $tree[$num]['nodes'][$count]['nodes'][$n] = [];
                            $tree[$num]['nodes'][$count]['nodes'][$n]['text'] = $vv;
                            if($id == $kk) {
                                $name = $tree[$num]['text'] .'-'.$tree[$num]['nodes'][$count]['text'] . '-' . $vv;
                            }
                        }
                    }
                }
            }
        }
    }
    return $name;
}


/** 获取当前的登录者信息
 *
 */
function getAdminInfo() {
    $admin = Session::get('name');
    return $admin;
}

/** 根据登陆者信息获取对应的权限
 *
 */
function getRolesUids() {
//    $
}

