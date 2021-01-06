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

class User extends Common {
    private $param;
    /**角色添加
     *
     */
    public function addUser(Request $request) {
        $verify = $this->verification($request);
        if($verify != false) {
            return $verify;
        }
        //密码加密
        $this->param['passwd'] = md5($this->param['passwd']);
        $res = Model('User')->addUser($this->param);
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
        $verify = $this->verification($request, 'edituser', 'editusercomment', $request->param('id'));
        if($verify != false) {
            return $verify;
        }
        $res = Model('User')->editUser($this->param);
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
        if($this->param['id'] == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id不可为空';
            return json($data);
        }
        $this->param['type'] = 2;
        $res = Model('User')->editUser($this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '人员删除失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '人员删除成功';
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
        if($type == 'adduser') {
            if($this->param['passwd'] != $this->param['confirmPasswd']) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = '两次密码不一致';
                return json($data);
            }
            unset($this->param['confirmPasswd']);
        }

        //身份证号码位数
        if(strlen($this->param['identity']) != 18) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '身份证号码位数不对';
            return json($data);
        }

        //手机号验证
        if(!preg_match("/^1[345789]\d{9}$/", $this->param['phone'])){
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '手机号验证失败';
            return json($data);
        }

        //验证登录名是否唯一
        $loginName = Model('user')->getList(['username' => $this->param['username']]);
        if(!empty($loginName) && $loginName[0]['id'] != $id) {
            $data['code'] = 100001;
            $data['msg'] = '登录名已有重复';
            return json($data);
        }

        //验证身份证是否唯一
        $identity = Model('user')->getList(['identity' => $this->param['identity']]);
        if(!empty($identity) && $identity[0]['id'] != $id) {
            $data['code'] = 100001;
            $data['msg'] = '身份证已有重复';
            return json($data);
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
}