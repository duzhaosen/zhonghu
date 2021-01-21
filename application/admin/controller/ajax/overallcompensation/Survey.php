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

class Survey extends Common {
    private $param;

    /** 查勘中心导出
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
        if(isset($this->param['survey_user']) && $this->param['survey_user'] != -1) {
            $condition['survey_user'] = $this->param['survey_user'];
        }
        if(isset($this->param['report_type']) && $this->param['report_type'] != -1) {
            $condition['report_type'] = $this->param['report_type'];
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
            writLog("导出查勘中心".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,36);
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
