<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/24
 * @createTime: 14:46
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\user;

use app\admin\controller\Common;

class Login extends Common
{
    public function Login() {
        $this->fetch();
    }


    /**登出
     *
     */
    public function loginout() {
        writLog("推出登陆成功",LOGIN_LOGS,33);
        session('user_id', null);
        session('username', null);
        session('name', null);
        session('structure', null);
        session('roles', null);
        $this->redirect('/admin/user/login/login');
    }
}
