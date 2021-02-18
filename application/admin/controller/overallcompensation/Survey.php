<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\overallcompensation;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Survey extends Common {
    private $param;
    private $pagesize = 10;
    protected $power;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'index') {
            $this->power = 58;
        }
        else if($request->action() == 'add') {
            $this->power = 79;
        }
        parent::__construct($request);
    }
    public function index(Request $request) {
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
        $result = Model('Report')->getList($condition,$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('res',$result);
        $res = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $this->assign('export',$res['export']);
        $this->assign('export_url','/admin/ajax/overallcompensation/survey/export');
        $this->assign('export_name',"查勘中心".date('Ymd').".csv");
        $this->assign('time_type_list',$res['time_type']);
        $this->assign('survey_user',$res['survey_userstr']);
        $this->assign('report_type_list',$res['report_type']);
        $this->fetch();
    }

    /** 查勘录入
     *
     */
    public function add(Request $request) {
        $this->param = $request->param();

        $this->param = $request->param();
        if(!isset($this->param['report_id']) || empty($this->param['report_id'])) {
            $this->error("报案单号不可为空");
        }
        $list = Model('Report')->getList($this->param);
        if($list->total() == 0) {
            $this->error("报案单号不存在");
        }
        $this->assign('report_list',$list[0]);
        $res = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $this->assign('accident_situation',$res['accident_situation']);
        $this->assign('human_injury',$res['human_injury']);
        $this->assign('way_type',$res['way_type']);
        $this->assign('time_type_list',$res['time_type']);
        $this->assign('survey_agency',$res['survey_agency']);
        $this->assign('survey_user',$res['survey_user']['user']);
        $users = json_decode($res['survey_user']['user'],true);
        $this->assign('survey_user_edit',$users[$list[0]['survey_agency']]);
        //查勘录入

        $this->assign('survey_sex',$res['survey_sex']);
        $this->assign('dirver_model',$res['dirver_model']);
        $this->assign('cause_accident',$res['cause_accident']);
        $this->assign('cause_liability',$res['cause_liability']);
        $this->assign('process_type',$res['process_type']);
        $this->assign('cause_type',$res['cause_type']);
        $this->assign('major_case',$res['major_case']);
        $this->assign('case_type',$res['case_type']);
        $this->assign('three_blame',$res['three_blame']);
        $this->assign('three_die',$res['three_die']);
        $this->assign('own_car_injury',$res['own_car_injury']);
        $this->assign('own_car_die',$res['own_car_die']);
        $this->assign('rescue',$res['rescue']);
        $this->assign('responsible_death_cause',$res['responsible_death_cause']);
        $this->assign('estimated_case',$res['estimated_case']);
        $this->assign('small_quick_case',$res['small_quick_case']);
        $this->assign('cause_book',$res['cause_book']);
        $this->assign('subrogation',$res['subrogation']);
        $this->assign('first_scene',$res['first_scene']);
        $this->assign('survey_address',$res['survey_address']);
        $this->assign('cause_department',$res['cause_department']);
        $this->assign('road_cause',$res['road_cause']);

        //影像上传
        //影像资料
        $imageArr = [];
        //定义上传文件夹
        $uploadArr = range(0,10);
        if(!empty($list[0]) && !empty($list[0]['attach'])) {
            foreach($list[0]['attach'] as $key=>$value) {
                if(!empty($value)) {
                    foreach ($value as $v) {
                        $k = substr($v['folder'],-1);
                        $imageArr[$k]['name'] = $v['name'];
                        $imageArr[$k]['url'][] = $v['url'];
                        $imageArr[$k]['id'][] = $v['id'];
                    }
                }
            }
        }
        //定义上传文件夹
        $uploadArr = range(0,10);
        $this->assign('imageArr',json_encode($imageArr));
        $this->assign('image',$imageArr);
        $this->assign('upload',$uploadArr);
        $this->assign('uploadTotal',11);

        //统筹单情况
        $list = Model('Overall')->getList(['overall_id'=>$list[0]['overall_id']]);
        $this->assign('list',$list[0]);

        //车损
        $this->assign('damage_overall_type',$res['damage_overall_type']);
        $this->assign('price_program',$res['price_program']);

        //人伤
        $this->assign('human_overall_type',$res['human_overall_type']);
        $this->assign('license_type',$res['license_type']);

        $this->fetch();
    }
}
