<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\overallcompensation;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Report extends Common {
    private $param;
    /** 报案单添加
     *
     */
    public function addReport(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addReport.ini','ini');
        foreach($res['addreport'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addreportcomment'][$key].'不可为空';
                return json($data);
            }
        }

        //格式化数据
        $this->param['end_time'] = strtotime($this->param['end_time']);
        $this->param['report_time'] = strtotime($this->param['report_time']);
        $this->param['out_danger_time'] = strtotime($this->param['out_danger_time']);
        $this->param['report_type'] = 1;
        $res = Model('Report')->addReport($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加报案单".http_build_query($this->param)."结果：".$result,ADD_LOGS,37);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '报案单添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '报案单添加失败';
        return json($data);
    }

    /** 报案单修改
     *
     */
    public function editReport(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addReport.ini','ini');
        foreach($res['addreport'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addreportcomment'][$key].'不可为空';
                return json($data);
            }
        }
        //格式化数据
        $this->param['end_time'] = strtotime($this->param['end_time']);
        $this->param['report_time'] = strtotime($this->param['report_time']);
        $this->param['out_danger_time'] = strtotime($this->param['out_danger_time']);
        $this->param['report_type'] = 1;
        $res = Model('Report')->editReport(['report_id'=>$this->param['report_id']],$this->param);
        $result = $res == true? '成功': '失败';
        writLog("修改报案单".http_build_query($this->param)."结果：".$result,EDIT_LOGS,46);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '报案单修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '报案单修改成功';
        return json($data);
    }

    /** 报案单导出
     *
     */
    public function export(Request $request) {
        $this->param = array_filter($request->param());;

        $condition = [];
        if(isset($this->param['report_id'])){
            $condition['report_id'] = $this->param['report_id'];
        }
        if(isset($this->param['overall_id'])){
            $condition['overall_id'] = $this->param['overall_id'];
        }
        if(isset($this->param['plate'])){
            $condition['plate'] = $this->param['plate'];
        }
        if(isset($this->param['frame'])){
            $condition['frame'] = $this->param['frame'];
        }
        if(isset($this->param['coordinated_name'])){
            $condition['coordinated_name'] = $this->param['coordinated_name'];
        }
        if(isset($this->param['time_type']) && $this->param['time_type'] != -1) {
            if($this->param['time_type'] == 1) {
                $condition['report_time'] = ["between",strtotime($this->param['start_time']),strtotime($this->param['end_time'])];
            }else if($this->param['time_type'] == 2) {
                $condition['out_danger_time'] = ["between",strtotime($this->param['start_time']),strtotime($this->param['end_time'])];
            }
        }
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $total = false;
        if($this->param['total'] == 1) {
            $total = true;
        }
        $res = Model('Report')->getList($condition,$this->param['pagesize'],['page'=>$page,'query'=>$this->param]);
        if($total) {
            writLog("导出报案单".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,35);
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
