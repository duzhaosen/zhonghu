<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/25
 * @createTime: 14:53
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\quotation;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Quotation extends Common {
    protected $power;
    private $pagesize = 10;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'index') {
            $this->power = 33;
        }
        else if($request->action() == 'add') {
            $this->power = 31;
        }
        else if($request->action() == 'edit') {
            $this->power = 70;
        }
        else if($request->action() == 'copy') {
            $this->power = 71;
        }
        else if($request->action() == 'view') {
            $this->power = 34;
        }
        else if($request->action() == 'quotationPdf') {
            $this->power = 35;
        }
        parent::__construct($request);
    }
    /** 报价单添加
     *
     */
    public function add() {
        $res = Config::parse(APP_PATH.'/admin/config/structure.ini','ini');
        $this->assign('sourceList',$res['source']);
        //归属人查询
        $users = Model('User')->getList(['salesman'=>1]);
        $this->assign('users',$users);
        //经办人查询
        $users = Model('User')->getList(['manager'=>1]);
        $this->assign('managerList',$users);
        //组织
        $structureList = Model('Structure')->getList();
        $this->assign('structureList', $structureList);

        //车辆配置文件
        $res = Config::parse(APP_PATH.'/admin/config/car.ini','ini');
        $this->assign('plate_typeList',$res['plate_type']);
        $this->assign('colorList',$res['color']);
        $this->assign('use_natureList',$res['use_nature']);
        $this->assign('speciesList',$res['species']);
        $this->assign('car_typeList',$res['car_type']);
        $this->assign('vehicle_inspectionList',$res['vehicle_inspection']);
        $this->assign('transferList',$res['transfer']);
        $this->assign('participate_cityList', json_decode($res['city']['province'], true));
        $res = Config::parse(APP_PATH.'/admin/config/Quotation.ini','ini');
        $this->assign('reasonList',$res['reason']);

        $this->fetch();
    }

    /** 报价单修改
     *
     */
    public function edit(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/structure.ini','ini');
        $this->assign('sourceList',$res['source']);
        //归属人查询
        $users = Model('User')->getList(['salesman'=>1]);
        $this->assign('users',$users);
        //经办人查询
        $users = Model('User')->getList(['manager'=>1]);
        $this->assign('managerList',$users);
        //组织
        $structureList = Model('Structure')->getList();
        $this->assign('structureList', $structureList);

        //车辆配置文件
        $res = Config::parse(APP_PATH.'/admin/config/car.ini','ini');
        $this->assign('plate_typeList',$res['plate_type']);
        $this->assign('colorList',$res['color']);
        $this->assign('use_natureList',$res['use_nature']);
        $this->assign('speciesList',$res['species']);
        $this->assign('car_typeList',$res['car_type']);
        $this->assign('vehicle_inspectionList',$res['vehicle_inspection']);
        $this->assign('transferList',$res['transfer']);
        $this->assign('participate_cityList', json_decode($res['city']['province'], true));
        $res = Config::parse(APP_PATH.'/admin/config/Quotation.ini','ini');
        $this->assign('reasonList',$res['reason']);

        //报价单查询
        $id = $request->param('id');
        $quotationInfo = [];
        if(isset($id)) {
            $quotationInfo = Model('Quotation')->getList(['quotation.id'=>$id],'quotation.id as quotation_id,quotation.*,car.*,overall.*');
            $quotationInfo = $quotationInfo->all();
            $quotationInfo = $quotationInfo[0];
        }
        $this->assign('list',$quotationInfo);

        $this->fetch();
    }

    /** 报价单复制
     *
     */
    public function copy(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/structure.ini','ini');
        $this->assign('sourceList',$res['source']);
        //归属人查询
        $users = Model('User')->getList(['salesman'=>1]);
        $this->assign('users',$users);
        //经办人查询
        $users = Model('User')->getList(['manager'=>1]);
        $this->assign('managerList',$users);
        //组织
        $structureList = Model('Structure')->getList();
        $this->assign('structureList', $structureList);

        //车辆配置文件
        $res = Config::parse(APP_PATH.'/admin/config/car.ini','ini');
        $this->assign('plate_typeList',$res['plate_type']);
        $this->assign('colorList',$res['color']);
        $this->assign('use_natureList',$res['use_nature']);
        $this->assign('speciesList',$res['species']);
        $this->assign('car_typeList',$res['car_type']);
        $this->assign('vehicle_inspectionList',$res['vehicle_inspection']);
        $this->assign('transferList',$res['transfer']);
        $this->assign('participate_cityList', json_decode($res['city']['province'], true));

        //报价单查询
        $id = $request->param('id');
        $quotationInfo = [];
        if(isset($id)) {
            $quotationInfo = Model('Quotation')->getList(['quotation.id'=>$id]);
            $quotationInfo = $quotationInfo->all();
            $quotationInfo = $quotationInfo[0];
        }
        $this->assign('list',$quotationInfo);
        $res = Config::parse(APP_PATH.'/admin/config/Quotation.ini','ini');
        $this->assign('reasonList',$res['reason']);

        $this->fetch();
    }

    /** 报价单查询
     *
     */
    public function index() {
        $param = input('get.');
        $param = array_filter($param);
        $condition = [];
        if(isset($param['create_time_start'])) {
            if(!empty($param['create_time_end'])) {
                $condition['quotation.create_time'] = ['between',[strtotime($param['create_time_start']),strtotime($param['create_time_end'])]];
            }else{
                $condition['quotation.create_time'] = strtotime($param['create_time_start']);
            }
        }
        if(isset($param['start_time'])){
            $condition['start_time'] = strtotime($param['start_time']);
        }
        if(isset($param['end_time'])){
            $condition['end_time'] = strtotime($param['end_time']);
        }
        if(isset($param['plate'])){
            $condition['quotation.plate'] = $param['plate'];
            unset($param['plate']);
        }
        if(isset($param['frame'])){
            $condition['quotation.frame'] = $param['frame'];
        }
        if(isset($param['create_user'])){
            $condition['quotation.create_user'] = $param['create_user'];
        }
        if(isset($param['remarks'])){
            $condition['quotation.remarks'] = $param['remarks'];
        }
        if(isset($param['attribution_user'])){
            $condition['quotation.attribution_user'] = $param['attribution_user'];
        }
        if(isset($param['manager'])){
            $condition['quotation.manager'] = $param['manager'];
        }
        $page = 0;
        if(isset($param['page'])) {
            $page = $param['page'];
        }
        if(!empty($condition)) {
            writLog("查询条件".http_build_query($condition),"search_quotation",'search');
        }
        $quotationList = Model('Quotation')->getList($condition,'quotation.id as quotation_id,quotation.*,car.*,overall.*',$this->pagesize,['page'=>$page,'query'=>$param]);
        $this->assign('quotationList',$quotationList);
        $res = Config::parse(APP_PATH.'/admin/config/quotation.ini','ini');
        $this->assign('export',$res['export']);
        $this->assign('export_url','/admin/ajax/quotation/export');
        $this->assign('export_name','报价单'.date('Ymd').'.csv');


        //归属人查询
        $users = Model('User')->getList(['salesman'=>1]);
        $this->assign('users',$users);

        $this->fetch();
    }

    /** 报价单详情
     *
     */
    public function view(Request $request) {
        $param = input('get.');
        if($param['id']) {
            $param['quotation.id'] = $param['id'];
            unset($param['id']);
        }else{
            $this->error("报价单id不可为空");
        }
        $quotationList = Model('Quotation')->getList($param,'*',1);
        $this->assign('list',$quotationList[0]);
        $this->fetch();
    }

    /** 生成报价单
     *
     */
    public function quotationPdf() {
        $param = input('get.');
        if($param['id']) {
            $param['quotation.id'] = $param['id'];
            unset($param['id']);
        }else{
            $this->error("报价单id不可为空");
        }
        $quotationList = Model('Quotation')->getList($param,'quotation.id as quotation_id,quotation.*,car.*,overall.*',1);
        if(empty($quotationList)) {
            $this->error("查询失败");
        }
        $this->assign('list',$quotationList->all()[0]);
        $this->fetch();
    }
}
