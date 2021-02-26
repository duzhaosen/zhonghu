<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\endorsements;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Endorsements extends Common {
    private $param;

    /** 批单添加
     * $request array()
     */
    public function addEndorsements(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addEndorsements.ini','ini');
        foreach($res['addendorsements'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addendorsementscomment'][$key].'不可为空';
                return json($data);
            }
        }
        //格式化数据
        $this->param['status'] = 2;
        $res = Model('Endorsements')->addEndorsements($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加批单".http_build_query($this->param)."结果：".$result,ADD_LOGS,46);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '批单添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '批单添加失败';
        return json($data);
    }

    /** 批单修改
     *
     */
    public function editEndorsements(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addEndorsements.ini','ini');
        foreach($res['addendorsements'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addendorsementscomment'][$key].'不可为空';
                return json($data);
            }
        }

        //验证车架号/车牌号是否在系统内且在统筹期间内
        $car_frame = $this->param['frame'];
        $car_list = Model('Endorsements')->getList(['endorsements.frame'=>$car_frame,'endorsements.type'=>1,'endorsements.p_temporary_id'=>['<>',$this->param['p_temporary_id']]]);
        if($car_list->total() > 0) {
            $list = $car_list->all();
            foreach($list as $key => $value) {
                if($value['end_time']+86400 > strtotime($this->param['start_time'])) {
                    $data = array();
                    $data['code'] = 100001;
                    $data['msg'] = '车架号已在其他单子的统筹期内'.$value['overall_id'];
                    return json($data);
                }
            }
        }
        $this->param['status'] = 2;
        $result = $res == true? '成功': '失败';
        writLog("修改批单".http_build_query($this->param)."结果：".$result,EDIT_LOGS,77);
        $res = Model('Endorsements')->editEndorsements($this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '批单修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '批单修改成功';
        return json($data);
    }



    /** 删除统批单
     * @param Request $request
     * @return \think\response\Json
     */
    public function delEndorsements(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['id']) || empty($this->param['id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '批单号不可为空';
            return json($data);
        }
        $condition = [];
        $condition['p_temporary_id'] = $this->param['id'];
        $condition['type'] = 2;
        $res = Model('Endorsements')->delEndorsements($condition);
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

    /** 批单导出
     *
     */
    public function export(Request $request) {
        $this->param = $request->param();

        $condition = [];
        if(isset($this->param['p_temporary_id']) && !empty($this->param['p_temporary_id'])){
            $condition['endorsements.p_temporary_id'] = $this->param['p_temporary_id'];
        }
        if(isset($this->param['endorsements_id']) && !empty($this->param['endorsements_id'])){
            $condition['endorsements.endorsements_id'] = $this->param['endorsements_id'];
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
            $condition['coordinator.coordinated_name'] = $this->param['coordinated_name'];
        }
        if(isset($this->param['plate']) && !empty($this->param['plate'])){
            $condition['endorsements.plate'] = $this->param['plate'];
        }
        if(isset($this->param['frame']) && !empty($this->param['frame'])){
            $condition['endorsements.frame'] = $this->param['frame'];
        }
        if(isset($this->param['endorsements_time_start']) && !empty($this->param['endorsements_time_start'])) {
            if(!empty($this->param['endorsements_time_end'])) {
                $condition['endorsements.endorsements_time'] = ['between',[strtotime($this->param['endorsements_time_start']),strtotime($this->param['endorsements_time_end'])]];
            }else{
                $condition['endorsements.endorsements_time'] = strtotime($this->param['endorsements_time_start']);
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
        $res = Model('Endorsements')->getList($condition,'*',$this->param['pagesize'],['page'=>$page,'query'=>$this->param]);
        if($total) {
            writLog("导出批单".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,47);
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

    /** 生成缴费信息
     *
     */
    public function addPayInfo(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['related_id']) || !isset($this->param['overall_type'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '重要参数不可为空';
            return json($data);
        }
        $res = Model('Endorsements')->addPayinfo($this->param);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '生成缴费信息成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '生成缴费信息失败';
        return json($data);
    }
}
