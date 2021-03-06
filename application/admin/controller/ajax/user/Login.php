<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\User;

use think\Controller;
use think\Request;

class Login extends Controller {
    private $param;
    /**登录
     *
     */
    public function Login(Request $request) {
        $this->param = $request->param();
        if(empty($this->param['id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '工号不可为空';
            return json($data);
        }
        if(empty($this->param['passwd'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '密码不可为空';
            return json($data);
        }
        $isLogin = false;
        if(isset($this->param['islogin']) && $this->param['islogin'] == 'on') {
            $isLogin = true;
            unset($this->param['islogin']);
        }
        //判断格式化数据
        $this->param['passwd'] = md5($this->param['passwd']);
        $res = Model('User')->getList($this->param, '*', 0);
        if(!empty($res)) {
            //判断状态是否禁用
            if($res[0]['type'] == 2) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = '该用户已经禁用';
                return json($data);
            }
            //判断状态是否只是经办人
//            if($res[0]['salesman'] == 2 && $res[0]['manager'] == 1) {
//                $data = array();
//                $data['code'] = 100001;
//                $data['msg'] = '经办人不可登陆';
//                return json($data);
//            }
            $this->getSession($res);

            writLog("登陆成功",LOGIN_LOGS,80);
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '登录成功';
            return json($data);
        }
        //验证用户名是否错误
        unset($this->param['passwd']);
        $res = Model('User')->getList($this->param, '*', 0);
        if(empty($res)) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '工号错误';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '密码错误';
        return json($data);
    }

    /** 存入session
     *
     */
    public function getSession($res) {
        //存入session
        session('user_id', $res[0]['id']);
        session('username', $res[0]['name']);
        session('structure', $res[0]['structure']);
        session('structureStr', $res[0]['structureStr']);
        session('rolesStr', $res[0]['rolesStr']);
        //管理员
        $roles = Model('Roles')->getRoles(['id' => $res[0]['roles']]);
        session('user_admin', $roles[0]['admin'] == 1 ? false : true);
        //菜单权限
        session('user_powers',explode(",",$roles[0]['powers']));
        //验证码
        $code = Model('Carcode')->getList([],1);
        session('car_code',$code[0]['code']);
    }
}
