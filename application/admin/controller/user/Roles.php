<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/22
 * @createTime: 9:39
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\user;

use app\admin\controller\Common;

class Roles extends Common
{
    public function index()
    {
        $list = Model('Roles')->getRoles();
        $this->assign('list',$list);
        $menuList = Model('Menu')->search();
        $menu = getAcrTree($menuList,0);
        $this->assign('menuList', json_encode($menu));
        $this->fetch();
    }
}