<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\System;

use think\Request;
use app\admin\controller\Common;
use think\Config;

class Company extends Common {
    private $param;

    /**上传章
     * @param Request $request
     * @return \think\response\Json
     *
     */
    public function uploadChapter(Request $request) {
        $file = request()->file('file');
        if($file) {
            $path = Config::parse(APP_PATH . '/admin/config/company.ini', 'ini');
            $info = $file->move(ROOT_PATH . 'public' . $path['path']['path']);
            if ($info) {
                $data = array();
                $data['code'] = 100000;
                $data['msg'] = '章上传成功';
                $url = [];
                $url['chapter'] = $info->getSaveName();
                $url['url'] = $path['path']['path'].$info->getSaveName();
                $data['data'] = $url;
                return json($data);
            }
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '章上传失败';
        return json($data);
    }

    /** 添加公司
     * @param Request $request
     * @return \think\response\Json
     */
    public function addCompany(Request $request) {
        $this->param = $request->param();
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addCompany.ini','ini');
        foreach($res['addcompany'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addcompanycomment'][$key].'不可为空';
                return json($data);
            }
        }
        $res = Model('Company')->addCompany($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加公司".http_build_query($this->param)."结果：".$result,ADD_LOGS,93);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '添加失败';
        return json($data);
    }

    /** 公司修改
     * @param Request $request
     * @return \think\response\Json
     *
     */
    public function editCompany(Request $request) {
        $this->param = $request->param();
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addCompany.ini','ini');
        foreach($res['editcompany'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['editcompanycomment'][$key].'不可为空';
                return json($data);
            }
        }
        $res = Model('Company')->editCompany($this->param);
        $result = $res == true? '成功': '失败';
        writLog("编辑公司".http_build_query($this->param)."结果：".$result,EDIT_LOGS,94);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '编辑成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '编辑失败';
        return json($data);
    }

    public function delCompany(Request $request) {
        $id = $request->param('id');
        if($id == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '公司编码不可为空';
            return json($data);
        }
        $data = [];
        $data['id'] = $id;
        $data['type'] = 2;
        $res = Model('Company')->editCompany($data);
        $result = $res == true? '成功': '失败';
        writLog("删除公司::id-{$id}结果：".$result,DEL_LOGS,92);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '删除成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '删除失败';
        return json($data);
    }
}
