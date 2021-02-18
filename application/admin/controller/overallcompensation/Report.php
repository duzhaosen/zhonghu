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

class Report extends Common {
    private $param;
    private $pagesize = 20;
    protected $power;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'index') {
            $this->power = 57;
        }
        else if($request->action() == 'add') {
            $this->power = 78;
        }
        else if($request->action() == 'edit') {
            $this->power = 87;
        }
        else if($request->action() == 'view') {
            $this->power = 88;
        }
        parent::__construct($request);
    }

    /** 报案中心首页
     * @param Request $request
     */
    public function index(Request $request) {
        //导出
        $res = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $this->assign('export',$res['export']);
        $this->assign('export_url','/admin/ajax/overallcompensation/report/export');
        $this->assign('export_name',"报案中心".date('Ymd').".csv");


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
        $result = Model('Report')->getList($condition,$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('res',$result);
        $res = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $this->assign('time_type_list',$res['time_type']);

        $this->fetch();
    }

    /** 报案中心添加
     *
     */
    public function add() {
        $this->assign('report_id',Model('Report')->generateReportId());

        $res = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $this->assign('accident_situation',$res['accident_situation']);
        $this->assign('human_injury',$res['human_injury']);
        $this->assign('way_type',$res['way_type']);
        $this->assign('time_type_list',$res['time_type']);
        $this->assign('survey_agency',$res['survey_agency']);
        $this->assign('survey_user',$res['survey_user']['user']);
        $this->assign('survey_phone',json_encode($res['survey_phone']));

        $this->assign('cityList', json_encode(cityTree([])));


        $this->fetch();
    }

    /** 报案中心修改
     *
     */
    public function edit(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['report_id']) || empty($this->param['report_id'])) {
            $this->error("报案单号不可为空");
        }
        $list = Model('Report')->getList($this->param);
        if($list->total() == 0) {
            $this->error("报案单号不存在");
        }
        $this->assign('list',$list[0]);

        $res = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $this->assign('accident_situation',$res['accident_situation']);
        $this->assign('human_injury',$res['human_injury']);
        $this->assign('way_type',$res['way_type']);
        $this->assign('time_type_list',$res['time_type']);
        $this->assign('survey_agency',$res['survey_agency']);
        $this->assign('survey_user',$res['survey_user']['user']);
        $users = json_decode($res['survey_user']['user'],true);
        $this->assign('survey_user_edit',$users[$list[0]['survey_agency']]);
        $this->assign('survey_phone',json_encode($res['survey_phone']));

        $this->assign('cityList', json_encode(cityTree($list[0]['risk_location'])));


        $this->fetch();
    }

    /** 报案中心查勘
     *
     */
    public function view(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['report_id']) || empty($this->param['report_id'])) {
            $this->error("报案单号不可为空");
        }
        $list = Model('Report')->getList($this->param);
        if($list->total() == 0) {
            $this->error("报案单号不存在");
        }
        $this->assign('list',$list[0]);

        $res = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $this->assign('accident_situation',$res['accident_situation']);
        $this->assign('human_injury',$res['human_injury']);
        $this->assign('way_type',$res['way_type']);
        $this->assign('time_type_list',$res['time_type']);
        $this->assign('survey_agency',$res['survey_agency']);
        $this->assign('survey_user',$res['survey_user']['user']);
        $users = json_decode($res['survey_user']['user'],true);
        $this->assign('survey_user_edit',$users[$list[0]['survey_agency']]);

        $this->assign('cityList', json_encode(cityTree($list[0]['risk_location'])));


        $this->fetch();
    }
}
