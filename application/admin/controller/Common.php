<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/16
 * @createTime: 14:20
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller;
use think\Controller;
use think\Model;
use think\Request;
use \think\Session;

class Common extends Controller
{
    protected $power;
    public function __construct(Request $request = null)
    {
        //检测是否是登录状态
        $user_id = Session::get('user_id');
        if($user_id == false && $request->path() != 'admin/user/login/login') {
            $this->redirect('/admin/user/login/login');
        }else if($user_id == true &&$request->path() == 'admin/user/login/login') {
            $this->redirect('/admin/index/index');
        }
//
        parent::__construct($request);
//        //验证菜单权限
//        if($this->power) {
//            $admin = Session::get('user_admin');
//            if($admin == false) {
//                $powerIds = Session::get('user_powers');
//                if(!in_array($this->power, $powerIds)) {
//                    $this->redirect('/admin/power/nopower');
//                }
//            }
//        }
    }

    /**当前位置展示
     * @return string
     */
    public function getPosition() {
        $request = Request::instance();
        $where = array();
        if($request->controller()) {
            $controller = explode(".", $request->controller());
            $where['folder'] = $controller[0];
        }
        if($request->action()) {
            $where['action'] = isset($controller[1]) ? $controller[1].'/'.$request->action() : $request->action();
        }
        $position = Model('menu')->search($where,'id,name,pid');
        $html = '<li> <i class="ace-icon fa fa-home home-icon"></i>';
        if(!empty($position)) {
            if($position[0]['pid']) {
                $father_position = Model('menu')->search(['id'=>$position[0]['pid']],'name');
                $html .= '<a href="/admin/'.$where['folder'].'">'.$father_position[0]['name'].'</a>';
            }
            $html .='</li><li><a href="/admin/'.$where['folder'].'/'.$where['action'].'">'.$position[0]['name'].'</a>';
            $html .= '</li>';
        }
        return $html;
    }
}
