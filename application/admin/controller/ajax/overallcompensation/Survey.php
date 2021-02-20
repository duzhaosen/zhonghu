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
            writLog("导出查勘中心".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,58);
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

    /** 车损本车添加数据
     * @param Request $request
     */
    public function addCarForm(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addCarDamage.ini','ini');
        foreach($res['addcar'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addcarcomment'][$key].'不可为空';
                return json($data);
            }
        }
        $res = Model('Survey')->addDamage($this->param);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '车辆信息保存成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '车辆信息保存失败';
        return json($data);
    }

    /** 三者损提交数据
     *
     */
    public function addOtherCarForm(Request $request) {
        $field = $request->param();
        //格式化数据处理
        $condition = array();
        foreach ($field as $key => $value) {
            if(is_array($value)){
                foreach ($value as $k => $item) {
                    $condition[$k][$key] = $item;
                }
            }else{
                $condition[$key] = $value;
            }
        }
        foreach ($condition as $key => $value) {
            if(is_array($value)) {
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addCarDamage.ini','ini');
                foreach($res['addothercar'] as $k => $item) {
                    if($item && empty($value[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addothercarcomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }else{
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addCarDamage.ini','ini');
                foreach($res['addothercarform'] as $k => $item) {
                    if($item && empty($condition[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addothercarformcomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }
        }
        $res = Model('Survey')->addOtherDamage($condition);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '三车损保存成功';
            $data['data'] = $res;
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '三车损保存失败';
        return json($data);
    }
    /** 车损配件添加
     * @param Request $request
     */
    public function addAccessories(Request $request) {
        $field = $request->param();
        //格式化数据处理
        $condition = array();
        foreach ($field as $key => $value) {
            if(is_array($value)){
                foreach ($value as $k => $item) {
                    $condition[$k][$key] = $item;
                }
            }else{
                $condition[$key] = $value;
            }
        }
        foreach ($condition as $key => $value) {
            if(is_array($value)) {
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addAccessories.ini','ini');
                foreach($res['addaccessories'] as $k => $item) {
                    if($item && empty($value[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addaccessoriescomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }else{
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addAccessories.ini','ini');
                foreach($res['adddamage'] as $k => $item) {
                    if($item && empty($condition[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['adddamagecomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }
        }
        $res = Model('Survey')->addDamage($condition);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '配件车损保存成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '配件车损保存失败';
        return json($data);
    }

    /** 获取三者车损详情
     *
     */
    public function getAccessoriesInfo(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['related_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id不可为空';
            return json($data);
        }
        $res = Model('Survey')->getAccessoriesInfo($this->param);
        if(!empty($res)) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '人伤查询成功';
            $data['data'] = $res;
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '人伤查询失败';
        return json($data);
    }

    /** 工时添加
     * @param Request $request
     */
    public function addWork(Request $request) {
        $field = $request->param();
        //格式化数据处理
        $condition = array();
        foreach ($field as $key => $value) {
            if(is_array($value)){
                foreach ($value as $k => $item) {
                    $condition[$k][$key] = $item;
                }
            }else{
                $condition[$key] = $value;
            }
        }
        foreach ($condition as $key => $value) {
            if(is_array($value)) {
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addWork.ini','ini');
                foreach($res['addwork'] as $k => $item) {
                    if($item && empty($value[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addworkcomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }else{
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addWork.ini','ini');
                foreach($res['adddamage'] as $k => $item) {
                    if($item && empty($condition[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['adddamagecomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }
        }
        $res = Model('Survey')->addDamage($condition);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '工时车损保存成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '工时车损保存失败';
        return json($data);
    }

    /** 财务添加
     * @param Request $request
     */
    public function addFinance(Request $request) {
        $field = $request->param();
        //格式化数据处理
        $condition = array();
        foreach ($field as $key => $value) {
            if(is_array($value)){
                foreach ($value as $k => $item) {
                    $condition[$k][$key] = $item;
                }
            }else{
                $condition[$key] = $value;
            }
        }
        foreach ($condition as $key => $value) {
            if(is_array($value)) {
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addFinance.ini','ini');
                foreach($res['addfinance'] as $k => $item) {
                    if($item && empty($value[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addfinancecomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }else{
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addFinance.ini','ini');
                foreach($res['adddamage'] as $k => $item) {
                    if($item && empty($condition[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['adddamagecomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }
        }
        $res = Model('Survey')->addDamage($condition);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '财务车损保存成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '财务车损保存失败';
        return json($data);
    }

    /** 人伤添加
     *
     */
    public function addHuman(Request $request) {
        $field = $request->param();
        //格式化数据处理
        $condition = array();
        foreach ($field as $key => $value) {
            if(is_array($value)){
                foreach ($value as $k => $item) {
                    $condition[$k][$key] = $item;
                }
            }else{
                $condition[$key] = $value;
            }
        }
        foreach ($condition as $key => $value) {
            if(is_array($value)) {
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addHuman.ini','ini');
                foreach($res['addhumaninfo'] as $k => $item) {
                    if($item && empty($value[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addhumaninfocomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }else{
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addHuman.ini','ini');
                foreach($res['addhuman'] as $k => $item) {
                    if($item && empty($condition[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addhumancomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }
        }
        $res = Model('Survey')->addHuman($condition);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '人伤保存成功';
            //返回人伤所有id，赋值到页面中
            $result = Model('Survey')->getHumanList(['related_id'=>$condition['related_id'],'human_type'=>$condition['human_type']]);
            $ids = [];
            if(!empty($result)) {
                foreach ($result[0]['info']as $key => $value) {
                    $ids[] = $value['id'];
                }
            }
            $data['data'] = $ids;
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '人伤保存失败';
        return json($data);
    }

    /** 获取人伤详情
     * @param Request $request
     * @return \think\response\Json
     */
    public function getHuman(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['related_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '重要信息不可为空';
            return json($data);
        }
        $res = Model('Survey')->getHuamn($this->param);
        if(!empty($res)) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '人伤查询成功';
            $data['data'] = $res;
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '人伤查询失败';
        return json($data);
    }

    /** 人伤价格添加
     *
     */
    public function addHumanPrice(Request $request) {
        $field = $request->param();
        //格式化数据处理
        $condition = array();
        foreach ($field as $key => $value) {
            if(is_array($value)){
                foreach ($value as $k => $item) {
                    $condition[$k][$key] = $item;
                }
            }else{
                $condition[$key] = $value;
            }
        }
        foreach ($condition as $key => $value) {
            if(is_array($value)) {
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addHuman.ini','ini');
                foreach($res['addhumanprice'] as $k => $item) {
                    if($item && empty($value[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addhumanpricecomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }else{
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addHuman.ini','ini');
                foreach($res['addhumancondition'] as $k => $item) {
                    if($item && empty($condition[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addhumanconditioncomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }
        }
        $res = Model('Survey')->addHumanPrice($condition);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '人伤保存成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '人伤保存失败';
        return json($data);
    }

    /** 补偿款信息添加
     * @param Request $request
     */
    public function addCompensation(Request $request) {
        $field = $request->param();
        //格式化数据处理
        $condition = array();
        foreach ($field as $key => $value) {
            if(is_array($value)){
                foreach ($value as $k => $item) {
                    $condition[$k][$key] = $item;
                }
            }else{
                $condition[$key] = $value;
            }
        }
        if(!isset($condition['related_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '关联单号不可为空';
            return json($data);
        }
        if(!isset($condition['other_type'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '类型不可为空';
            return json($data);
        }
        foreach ($condition as $key => $value) {
            if(is_array($value)) {
                $res = Config::parse(APP_PATH.'/admin/config/formValidator/addCompensation.ini','ini');
                foreach($res['addcompensation'] as $k => $item) {
                    if($item && empty($value[$k])) {
                        $data = array();
                        $data['code'] = 100001;
                        $data['msg'] = $res['addcompensationcomment'][$k].'不可为空';
                        return json($data);
                    }
                }
            }
        }
        $res = Model('Survey')->addCompensation($condition);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '补偿款保存成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '补偿款保存失败';
        return json($data);
    }

    /** 查勘录入
     *
     */
    public function addSurvey(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addSurvey.ini','ini');
        foreach($res['addsurvey'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addsurveycomment'][$key].'不可为空';
                return json($data);
            }
        }
        $res = Model('Survey')->addSurvey($this->param);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '查勘录入保存成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '查勘录入保存失败';
        return json($data);
    }

    /** 提交审核
     *
     */
    public function addReview(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['report_id']) || !isset($this->param['status'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '报案单号不可为空';
            return json($data);
        }
        Model('Report')->
    }
}
