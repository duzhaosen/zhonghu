<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\User;

use think\Request;
use app\admin\controller\Common;
use think\Config;
use think\Session;

class User extends Common {
    private $param;
    /**角色添加
     *
     */
    public function addUser(Request $request) {
        $salesman = $request->param('salesman');
        if($salesman == 2) {
            $verify = $this->verification($request, 'addusermanager', 'addusercomment');
        }else{
            $verify = $this->verification($request);
        }
        if($verify != false) {
            return $verify;
        }
        //密码加密
        $this->param['passwd'] = md5($this->param['passwd']);
        $res = Model('User')->addUser($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加用户".http_build_query($this->param)."结果：".$result,ADD_LOGS,89);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '用户添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '用户添加失败';
        return json($data);
    }

    /**人员修改
     *
     */
    public function editUser(Request $request) {
        $salesman = $request->param('salesman');
        if($salesman == 2) {
            $verify = $this->verification($request, 'editusermanager', 'editusercomment', $request->param('id'));
        }else{
            $verify = $this->verification($request, 'edituser', 'editusercomment', $request->param('id'));
        }
        if($verify != false) {
            return $verify;
        }
        $res = Model('User')->editUser($this->param);
        $result = $res == true? '成功': '失败';
        writLog("修改用户".http_build_query($this->param)."结果：".$result,EDIT_LOGS,90);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '人员修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '人员修改成功';
        return json($data);
    }

    /** 删除人员
     *
     */
    public function delUser(Request $request) {
        $this->param = $request->param();
        if($this->param['id'] == false || $this->param['type'] == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '重要信息不可为空';
            return json($data);
        }
        $res = Model('User')->editUser($this->param);
        $result = $res == true? '成功': '失败';
        writLog("删除用户".http_build_query($this->param)."结果：".$result,DEL_LOGS,28);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            if($this->param['type'] == 1) {
                $msg = '人员启用失败';
            }else if($this->param['type'] == 2) {
                $msg = '人员禁用失败';
            }else {
                $msg = '人员删除失败';
            }
            $data['msg'] = $msg;
            return json($data);
        }
        $data['code'] = 100000;
        if($this->param['type'] == 1) {
            $msg = '人员启用成功';
        }else if($this->param['type'] == 2) {
            $msg = '人员禁用成功';
        }else {
            $msg = '人员删除成功';
        }
        $data['msg'] = $msg;
        return json($data);
    }

    /**验证各个字段
     *
     */
    public function verification($request,$type='adduser', $comment='addusercomment', $id=0) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addUser.ini','ini');
        foreach($res[$type] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res[$comment][$key].'不可为空';
                return json($data);
            }
        }
        //验证各个字段
        //密码
        if($type == 'adduser' || $type == 'addusermanager') {
            if($this->param['passwd'] != $this->param['confirmPasswd']) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = '两次密码不一致';
                return json($data);
            }
            unset($this->param['confirmPasswd']);
        }

        //手机号验证
        if(!preg_match("/^1[345789]\d{9}$/", $this->param['phone'])){
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '手机号验证失败';
            return json($data);
        }

        //如果是不是经办人，经办人必填
        if($this->param['salesman'] == 1) {
            if(!isset($this->param['manager_id']) || empty($this->param['manager_id'])) {
                $data['code'] = 100001;
                $data['msg'] = '经办人为必填项';
                return json($data);
            }
        }
        return false;
    }

    /** 查询用户信息
     *
     */
    public function getUserInfo(Request $request) {
        $this->param = $request->param();
        $res = Model('User')->getList($this->param);

        //组织
        $res['structureList'] = Model('Structure')->getList();
        //来源
        $structure = Config::parse(APP_PATH.'/admin/config/structure.ini','ini');
        $res['sourceList'] = $structure['source'];

        $data['code'] = 100000;
        $data['msg'] = '查询成功';
        $data['data'] = $res;
        return json($data);
    }

    /** 修改用户密码
     *
     */
    public function editPass(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['password'] ) || empty($this->param['password'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '密码不可为空';
            return json($data);
        }
        if($this->param['password'] != $this->param['confirm_pass']) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '2次密码不一致';
            return json($data);

        }

        $user_id = Session::get('user_id');
        $condition = array();
        $condition['id'] = $user_id;
        $condition['passwd'] = md5($this->param['password']);
        $res = Model('User')->editUser($condition);
        $result = $res == true? '成功': '失败';
        writLog("修改密码".http_build_query($condition)."结果：".$result,EDIT_LOGS,28);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '密码修改失败';
            return json($data);
        }
        $data = array();
        $data['code'] = 100000;
        $data['msg'] = '密码修改成功';
        return json($data);
    }
}
