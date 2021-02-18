<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/16
 * @createTime: 16:43
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\System;

use app\admin\controller\Common;
use think\Model;
use think\Request;
use think\Session;

class Menu extends Common {
    protected $power;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'index') {
            $this->power = 25;
        }
        else if($request->action() == 'add') {
            $this->power = 32;
        }
        else if($request->action() == 'edit') {
            $this->power = 91;
        }
        parent::__construct($request);
    }



    /**查询菜单页
     * @return string
     */
    public function index() {
        $list = Model('Menu')->search([],'*',true);
        $this->assign('menuList',$list);
        return $this->fetch();
    }

    /**
     * 添加菜单
     */
    public function add(Request $request) {
        $where = array();
        $ids = [];
        if($request->param('id')) {
            $where['id'] = $request->param('id');
        }
        $list = Model('Menu')->search($where);
        if($request->param('id')) {
            $ids = getTreeId([], 'Menu', $list[0]['pid'], 'search');
        }else if($request->param('pid')) {
            $ids = getTreeId([], 'Menu', $request->param('pid'), 'search');
        }
        !empty($where) ? $this->assign('list',$list[0]) : $this->assign('list',['isshow'=>1]);
        $menuList = Model('Menu')->search();
        $this->assign('menuList', json_encode(getTree($menuList, $ids)));
        return $this->fetch();
    }

    /**
     * 修改菜单
     */
    public function edit(Request $request) {
        $where = array();
        $ids = [];
        if($request->param('id')) {
            $where['id'] = $request->param('id');
        }else{
            $this->error("ID不可为空");
        }
        $list = Model('Menu')->search($where);
        if(empty($list)) {
            $this->error("ID未查询到信息");
        }
        if($request->param('id')) {
            $ids = getTreeId([], 'Menu', $list[0]['pid'], 'search');
        }
        !empty($where) ? $this->assign('list',$list[0]) : $this->assign('list',['isshow'=>1]);
        $menuList = Model('Menu')->search();
        $this->assign('menuList', json_encode(getTree($menuList, $ids)));
        return $this->fetch();
    }


    /**菜单查勘html
     * @return string
     */
    public function search() {
        $condition = array();
        $condition['isshow'] = 1;
        $admin = Session::get('user_admin');
        if($admin == false) {
            $condition['id'] = ['in',Session::get('user_powers')];
        }
        $menu = model('Menu')->search($condition);
        $list = $this->generateTree($menu);
        $html = '<ul class="nav nav-list">';
        $html .= $this->treeMenu($list);
        $html .= `</ul>`;
        return $html;
    }

    /**菜单无限极展示标签
     *
     */
    public function treeMenu($list,$html='') {
        $request = Request::instance();
        $controller = explode('.',$request->controller());
        $method = $request->action();
        foreach ($list as $key =>$value) {
            if(!isset($value['children'])) {
                if(isset($value['action'])) {
                    if($controller[0] == $value['folder'] && $controller[1].'/'.$method == $value['action']) {
                        $html .= '<li class="active">';
                    }else{
                        $html .= '<li class="">';
                    }
                }else{
                    $html .= '<li class="">';
                }
                isset($value['url']) ? $html .= '<a href="'.$value['url'].'">': $html .= '<a href="">';
                $html .= '<i class="menu-icon fa '.$value['icon'].'"></i>';
                $html .= '<span class="menu-text"> '.$value['name'].' </span>';
                $html .= '</a> <b class="arrow fa fa-angle-down"></b> </li>';
            }else{
                if($controller[0] == $value['folder']){
                    $html .= '<li class="open">';
                }else{
                    $html .= '<li class="">';
                }
                $html .= '<a href="'.$value['url'].'" class="dropdown-toggle">';
                $html .= '<i class="menu-icon fa '.$value['icon'].'"></i>';
                $html .= '<span class="menu-text">'.$value['name'].'</span>';
                $html .= '<b class="arrow fa fa-angle-down"></b>'.'</a>';
                $html .= '<b class="arrow"></b>';
                $html .= '<ul class="submenu">';
                if(isset($value['children'])) {
                    $html .= $this->treeMenu($value['children']);
                }
                $html .= '</ul></li>';
            }

        }
        return $html;
    }

    /**无限极分类菜单
     * @param $array
     * @return array
     */
    function generateTree($array){
        //第一步 构造数据
        $items = array();
        foreach($array as $value){
            $items[$value['id']] = $value;
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
