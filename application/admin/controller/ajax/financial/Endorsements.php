<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\financial;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Endorsements extends Common {
    private $param;
    /** 财务审核批单导出
     *
     */
    public function export(Request $request) {
        $this->param = array_filter($request->param());
        $condition = [];
        if(isset($this->param['p_temporary_id']) && !empty($this->param['p_temporary_id'])){
            $condition['endorsements.p_temporary_id'] = $this->param['p_temporary_id'];
        }
        if(isset($this->param['overall_id']) && !empty($this->param['overall_id'])){
            $condition['endorsements.overall_id'] = $this->param['overall_id'];
        }
        if(isset($this->param['documents_id']) && !empty($this->param['documents_id'])){
            $condition['endorsements.documents_id'] = $this->param['documents_id'];
        }
        if(isset($this->param['participate_name']) && !empty($this->param['participate_name'])){
            $condition['endorsements.participate_name'] = $this->param['participate_name'];
        }
        if(isset($this->param['coordinated_name']) && !empty($this->param['coordinated_name'])){
            $condition['endorsements.coordinated_name'] = $this->param['coordinated_name'];
        }
        if(isset($this->param['attribution_user']) && !empty($this->param['attribution_user'])){
            $condition['endorsements.attribution_user'] = $this->param['attribution_user'];
        }
        if(isset($this->param['plate']) && !empty($this->param['plate'])){
            $condition['endorsements.plate'] = $this->param['plate'];
        }
        if(isset($this->param['frame']) && !empty($this->param['frame'])){
            $condition['endorsements.frame'] = $this->param['frame'];
        }

        if(isset($this->param['start_time'])) {
            $condition['endorsements.start_time'] = strtotime($this->param['start_time']);
        }
        if(isset($this->param['end_time'])) {
            $condition['endorsements.end_time'] = strtotime($this->param['end_time']);
        }
        if(isset($this->param['financial_review_time_start'])) {
            if(!empty($this->param['financial_review_time_end'])) {
                $condition['endorsements.financial_review_time'] = ['between',[strtotime($this->param['financial_review_time_start']),strtotime($this->param['financial_review_time_end'])]];
            }else{
                $condition['endorsements.financial_review_time'] = strtotime($this->param['financial_review_time_start']);
            }
        }
        $this->param['endorsements.status'] = ['in',[3,4]];
        $page = 0;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $total = false;
        if($this->param['total'] == 1) {
            $total = true;
        }
        $res = Model('Endorsements')->getList($condition,'*',$this->param['pagesize'],['page'=>$page,'query'=>$this->param]);
        if($total) {
            writLog("财务审核导出批单".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,32);
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
