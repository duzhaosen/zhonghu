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
use think\Request;
use think\Config;
use \think\Session;


class User extends Common
{
    private $param;
    public function index(Request $request)
    {
        $this->param = $request->param();
        foreach ($this->param as $key => $value) {
            if(empty($value)) {
                unset($this->param[$key]);
            }
        }
        $this->assign('param',$this->param);

        $user = Model('user')->getList($this->param);
        $this->assign('userlist',$user);

        $structureIds = [];
        if( isset($this->param['structure'])) {
            $structureIds = getTreeId([], 'Structure', $this->param['structure'], 'getList');
        }
        $list = Model('Roles')->getRoles();
        if(isset($this->param['roles'])) {
            foreach ($list as $key => $value) {
                if($this->param['roles'] == $value['id']) {
                    $list[$key]['checked'] = true;
                }
            }
        }
        $this->assign('rolesList',json_encode($list));

        $condition = array();
        $structureList = Model('Structure')->getList($condition);
        $this->assign('structureList', json_encode(getTree($structureList, $structureIds)));


        $res = Config::parse(APP_PATH.'/admin/config/user.ini','ini');
        $this->assign('managerList',$res['manager']);
        $this->assign('salesmanList',$res['salesman']);
        $this->assign('typeList',$res['type']);
        $this->fetch();
    }

    /**添加人员
     *
     */
    public function addUser(Request $request) {
        $this->param = $request->param();
        if(!empty($this->param)) {
            $user = Model('User')->getList($this->param);
        }else{
            $user[0] = [];
        }
        $this->assign('userlist',$user[0]);

        //角色
        $list = Model('Roles')->getRoles();
        $structureIds = [];
        if( isset($this->param['id'])) {
            $structureIds = getTreeId([], 'Structure', $user[0]['structure'], 'getList');
            foreach ($list as $key => $value) {
                if($user[0]['roles'] == $value['id']) {
                    $list[$key]['checked'] = true;
                }
            }
        }
        $this->assign('rolesList',json_encode($list));
        //组织
        $structureList = Model('Structure')->getList();
        $this->assign('structureList', json_encode(getTree($structureList, $structureIds)));
        $cityIds = '';
        if(isset($user[0]) && isset($user[0]['city'])) {
            $cityIds = $user[0]['city'];
        }
        $this->assign('cityList', json_encode(cityTree($cityIds)));

        //经办人
        $manager = Model('user')->getList(['manager'=>1]);
        $this->assign('managerList', $manager);
        $this->fetch();
    }
}
