<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\documents;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Recycle extends Common {
    private $param;

    /** 单证回收
     * $request array()
     */
    public function recycleDocuments(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/recycleDocuments.ini','ini');
        foreach($res['recycledocuments'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['recycledocumentscomment'][$key].'不可为空';
                return json($data);
            }
        }
        //验证单证号
        $list = Model('Documents')->getListPage();
        if(!empty($list)) {
            foreach($list as $k =>$value) {
                if($this->param['recycle_s_num'] >= $value['s_num'] && $this->param['recycle_e_num'] <= $value['e_num']) {
                    $this->param['add_id'] = $value['add_id'];
                }
            }
            if(!isset($this->param['add_id']) || empty($this->param['add_id'])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = '此批单证尚未入库';
                return json($data);
            }
        }
        $list = Model('Documents')->getIssuedListPage();
        if(!empty($list)) {
            foreach($list as $k =>$value) {
                if($this->param['recycle_s_num'] >= $value['issued_s_num'] && $this->param['recycle_e_num'] <= $value['issued_e_num']) {
                    $this->param['issued_id'] = $value['issued_id'];
                }
            }
            if(!isset($this->param['issued_id']) || empty($this->param['issued_id'])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = '此批单证尚未下发';
                return json($data);
            }
        }
        //格式化数据
        $res = Model('Documents')->addRecycle($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加单证回收".http_build_query($this->param)."结果：".$result,ADD_LOGS,55);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '单证回收成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '单证回收失败';
        return json($data);
    }

    /** 单证删除
     *
     */
    public function delRecycle(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['id']) || empty($this->param['id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '回收号不可为空';
            return json($data);
        }
        $res = Model('Documents')->delRecycle($this->param);
        $result = $res == true? '成功': '失败';
        writLog("删除单证回收".http_build_query($this->param)."结果：".$result,DEL_LOGS,55);
        if($res == true) {
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

    public function export(Request $request) {
        $this->param = array_filter($request->param());
        $condition = [];
        if(isset($this->param['documents_id'])) {
            $condition['recycle.documents_id'] = $this->param['documents_id'];
        }
        if(isset($this->param['recycle_structure'])) {
            $condition['recycle.recycle_structure'] = $this->param['recycle_structure'];
        }
        if(isset($this->param['recycle_user'])) {
            $condition['recycle.recycle_user'] = $this->param['recycle_user'];
        }
        if(isset($this->param['recycle_create_time'])) {
            $condition['recycle.recycle_create_time'] = $this->param['recycle_create_time'];
        }
        if(isset($this->param['recycle_fettle'])) {
            $condition['recycle.recycle_fettle'] = $this->param['recycle_fettle'];
        }
        if(isset($this->param['recycle_create_user'])) {
            $condition['recycle.recycle_create_user'] = $this->param['recycle_create_user'];
        }

        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $total = false;
        if($this->param['total'] == 1) {
            $total = true;
        }
        $res= Model('Documents')->getRecycleList($condition,$this->param['pagesize'],['page'=>$page,'query'=>$this->param]);
        if($total) {
            writLog("单证入库导出".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,55);
            return ceil($res->total()/$this->param['pagesize']);
        }
        $line = '';
        $condition = explode(",",$this->param['condition']);
        foreach($res->all() as $key =>$value) {
            foreach ($condition as $k => $v) {
                if(strpos($v,'time') !== false && $value[$v] != 0){
                    $line .= date('Y-m-d H:i:s',$value[$v]).",";
                }else{
                    $line .= $value[$v].",";
                }
            }
            $line .= "\n";
        }
        return $line;
    }
}
