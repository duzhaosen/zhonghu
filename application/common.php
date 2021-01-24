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
use think\Request;
use think\Session;

define('ADD_LOGS',1);//添加类型
define('EDIT_LOGS',2);//编辑类型
define('DEL_LOGS',3);//删除类型
define('UPLOAD_LOGS',4);//上传类型
define('EXPORT_LOGS',5);//导出类型
define('AUDIT_LOGS',6);//审核类型
define('LOGIN_LOGS',7);//登陆类型

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

/**
 * 记录默认日志
 * @param $content
 * @param $logType
 * @param $fileName
 * @return bool
 */
function writLog($content, $logType, $power_id=0){
    try{
        list($msec, $sec) = explode(' ', microtime());
        $msectime =  (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);
        $data = array(
            'log_type' => $logType,
            'log_time' => date('Y-m-d H:i:s:').substr($msectime, -3),
            'power_id' => $power_id,
            'log_server_ip' => sprintf("%u", ip2long(request()->ip())),
            'login_name' => getAdminInfo(),
            'log_content' => str_replace('"','',json_encode($content, JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES))
        );
        Model('Logs')->addLogs($data);
        return true;
    }catch (Exception $e){
        return false;
    }
}

