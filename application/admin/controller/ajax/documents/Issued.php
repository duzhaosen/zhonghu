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

class Issued extends Common {
    private $param;

    /** 单证下发
     * $request array()
     */
    public function issuedDocuments(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/issuedDocuments.ini','ini');
        foreach($res['issueddocuments'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['issueddocumentscomment'][$key].'不可为空';
                return json($data);
            }
        }
        //验证单证号
        $list = Model('Documents')->getListPage();
        if(!empty($list)) {
            foreach($list as $k =>$value) {
                if($this->param['issued_s_num'] >= $value['s_num'] && $this->param['issued_e_num'] <= $value['e_num']) {
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
        //格式化数据
        $res = Model('Documents')->addIssued($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加单证下发".http_build_query($this->param)."结果：".$result,ADD_LOGS,54);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '单证下发成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '单证下发失败';
        return json($data);
    }

    /** 单证删除
     *
     */
    public function delIssued(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['issued_id']) || empty($this->param['issued_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '单证下发批次号不可为空';
            return json($data);
        }
        $res = Model('Documents')->delIssued($this->param);
        $result = $res == true? '成功': '失败';
        writLog("删除单证下发".http_build_query($this->param)."结果：".$result,DEL_LOGS,54);
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

    /** 单证下发导出
     * @param Request $request
     */
    public function export(Request $request) {
        $this->param = array_filter($request->param());
        $condition = [];
        if(isset($this->param['documents_id'])) {
            $list = Model('Documents')->getIssuedListPage();
            if(!empty($list)) {
                foreach($list as $k =>$value) {
                    if($this->param['documents_id'] >= $value['issued_s_num'] && $this->param['documents_id'] <= $value['issued_e_num']) {
                        $condition['issued_s_num'] = $value['issued_s_num'];
                    }
                }
                if(!isset($condition['s_num'])) {
                    $condition['issued_s_num'] = $this->param['documents_id'];
                }
            }
        }
        if(isset($this->param['issued_id'])) {
            $condition['issued_id'] = $this->param['issued_id'];
        }
        if(isset($this->param['issued_user'])) {
            $condition['issued_user'] = $this->param['issued_user'];
        }
        if(isset($this->param['issued_create_user'])) {
            $condition['issued_create_user'] = $this->param['issued_create_user'];
        }
        if(isset($this->param['create_time'])) {
            $condition['issued_create_time'] = strtotime($this->param['issued_create_time']);
        }
        if(isset($this->param['issued_structure'])) {
            $condition['issued_structure'] = $this->param['issued_structure'];
        }

        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $total = false;
        if($this->param['total'] == 1) {
            $total = true;
        }
        $res = Model('Documents')->getIssuedList($condition,$this->param['pagesize'],['page'=>$page,'query'=>$this->param]);
        if($total) {
            writLog("单证入库导出".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,54);
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
