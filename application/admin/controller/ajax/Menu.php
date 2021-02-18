<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax;

use think\Request;
use app\admin\controller\Common;
use think\Config;

class Menu extends Common {
    private $param;
    /**菜单添加
     *
     */
    public function addMenu(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addMenu.ini','ini');
        foreach($res['addmenu'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addmenucomment'][$key].'不可为空';
                return json($data);
            }
        }
        //格式化数据
        if(isset($this->param['pid'])) {
            $sort = Model('Menu')->search(['id'=>$this->param['pid']],'level');
            $param['level'] = $sort[0]['level'] + 1;
        }
        $res = Model('Menu')->addMenu($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加菜单".http_build_query($this->param)."结果：".$result,ADD_LOGS,32);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '菜单添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '菜单添加失败';
        return json($data);
    }

    /**菜单删除
     *
     */
    public function delMenu(Request $request) {
        $id = $request->param('id');
        if($id == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id 不可为空';
            return json($data);
        }
        $res = Model('Menu')->editMenu(['id'=>$id,'type' => 2]);
        $result = $res == true? '成功': '失败';
        writLog("删除菜单ID-".$id."结果：".$result,DEL_LOGS,25);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '菜单删除失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '菜单删除成功';
        return json($data);
    }

    /**菜单修改
     *
     */
    public function editMenu(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addMenu.ini','ini');
        foreach($res['addmenu'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addmenucomment'][$key].'不可为空';
                return json($data);
            }
        }
        $res = Model('Menu')->editMenu($this->param);
        $result = $res == true? '成功': '失败';
        writLog("修改菜单".http_build_query($this->param)."结果：".$result,EDIT_LOGS,91);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '菜单修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '菜单修改成功';
        return json($data);
    }

    /**菜单排序
     *
     */
    public function sortMenu(Request $request) {
        $this->param['id'] = $request->param('id');
        $this->param['sort'] = $request->param('sort');
        if($this->param['sort'] == false || $this->param['id'] == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id或sort不可为空';
            return json($data);
        }
        $res = Model('Menu')->editMenu($this->param);
        $result = $res == true? '成功': '失败';
        writLog("菜单排序".http_build_query($this->param)."结果：".$result,EDIT_LOGS,91);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '排序修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '排序修改成功';
        return json($data);
    }
}
