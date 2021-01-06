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

class Roles extends Common {
    private $param;
    /**角色添加
     *
     */
    public function addRoles(Request $request) {
        $this->param = $request->param();
        if(empty($this->param['name'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '角色名称不可为空';
            return json($data);
        }
        //格式化数据
        $this->param['type'] = isset($this->param['type']) ? 1 : 2;
        $this->param['admin'] = isset($this->param['admin']) ? 1 : 2;
        $this->param['salesman'] = isset($this->param['salesman']) ? 1 : 2;
        $res = Model('Roles')->addRoles($this->param);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '角色添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '角色添加失败';
        return json($data);
    }

    /**角色修改
     *
     */
    public function editRoles(Request $request) {
        $this->param = $request->param();
        if(empty($this->param['name'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '角色名称不可为空';
            return json($data);
        }
        if(empty($this->param['id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id不可为空';
            return json($data);
        }
        //格式化数据
        $this->param['type'] = isset($this->param['type']) ? 1 : 2;
        $this->param['admin'] = isset($this->param['admin']) ? 2 : 1;
        $this->param['salesman'] = isset($this->param['salesman']) ? 2 : 1;
        $res = Model('Roles')->editRoles($this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '角色修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '角色修改成功';
        return json($data);
    }

    /**角色查询详情
     * @param Request $request
     */
    public function getRoles(Request $request) {
        $id = $request->param('id');
        if(!isset($id)) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id不可为空';
            return json($data);
        }
        $res = Model('Roles')->getRoles(['id'=>$id],'*');
        if(empty($res)) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '角色详情为空，请稍后在查询';
            return json($data);
        }
        $powers = $res[0]['powers'] ? explode(",",$res[0]['powers']) : array();
        $menuList = Model('Menu')->search([],'id,name,pid');
        $res[0]['powsermenu'] = getAcrTree($menuList, $powers);
        //格式化数据
        $data['code'] = 100000;
        $data['msg'] = '角色查询成功';
        $data['data'] = $res;
        return json($data);
    }
}