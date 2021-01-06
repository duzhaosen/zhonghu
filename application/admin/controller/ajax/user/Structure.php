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

class Structure extends Common {
    private $param;
    /**组织添加
     *
     */
    public function addStructure(Request $request) {
        $this->param = $request->param();
        if(empty($this->param['name'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '组织名称不可为空';
            return json($data);
        }
        //格式化数据
        if(isset($this->param['pid'])) {
            $this->param['pid'] = $this->param['pid'];
        }
        $res = Model('Structure')->addStructure($this->param);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '组织添加成功';
            $data['data'] = $res;
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '组织添加失败';
        return json($data);
    }

    /**角色修改
     *
     */
    public function editStructure(Request $request) {
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
        $res = Model('Structure')->editStructure($this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '组织修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '组织修改成功';
        return json($data);
    }

    /**角色查询详情
     * @param Request $request
     */
    public function delStructure(Request $request) {
        $id = $request->param('id');
        if(!isset($id)) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id不可为空';
            return json($data);
        }
        $params = array();
        $params['id'] = $id;
        $params['type'] = 2;
        $res = Model('Structure')->editStructure($params);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '组织删除失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '组织删除成功';
        return json($data);
    }

    public function getStructure(Request $request) {
        $this->param = $request->param();
        $res = Model('Structure')->getList($this->param);
        $data['code'] = 100000;
        $data['msg'] = '查询成功';
        $data['data'] = $res;
        return json($data);
    }
}