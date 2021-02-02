<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/21
 * @createTime: 10:37
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\user;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;
use think\Session;

class Structure extends Common
{
    public function index(Request $request) {
        $condition = array();
        $list = Model('Structure')->getList($condition);
        $format = Model('Structure')->formatTree($list);
        $this->assign('list',json_encode($format));

        $this->param = $request->param();
        foreach ($this->param as $key => $value) {
            if(empty($value)) {
                unset($this->param[$key]);
            }
        }
        $this->assign('param',$this->param);
        $user = Model('User')->getList($this->param,'*',0);
        $this->assign('userlist',$user);


        $list = Model('Roles')->getRoles();
        if(isset($this->param['roles'])) {
            foreach ($list as $key => $value) {
                if($this->param['roles'] == $value['id']) {
                    $list[$key]['checked'] = true;
                }
            }
        }
        $this->assign('rolesList',$list);

        $res = Config::parse(APP_PATH.'/admin/config/user.ini','ini');
        $this->assign('managerList',$res['manager']);
        $this->assign('salesmanList',$res['salesman']);
        $this->assign('typeList',$res['type']);

        $res = Config::parse(APP_PATH.'/admin/config/structure.ini','ini');
        $this->assign('sourceList',$res['source']);

        $this->fetch();
    }
}
