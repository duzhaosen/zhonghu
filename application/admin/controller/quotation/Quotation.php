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
    private $page = 10;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'index') {
            $this->power = 32;
        }
        else if($request->action() == 'add') {
            $this->power = 31;
        }
        parent::__construct($request);
    }
    /** 报价单添加
     *
     */
    public function add(Request $request) {
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
            $quotationInfo = Model('Quotation')->getList(['id'=>$id]);
            $quotationInfo = $quotationInfo->all();
            $quotationInfo = $quotationInfo[0];
        }
//        print_r($quotationInfo);die;
        $this->assign('list',$quotationInfo);

        $this->fetch();
    }

    /** 报价单查询
     *
     */
    public function index() {
        $param = input('get.');
        $param = array_filter($param);
        if(isset($param['create_time_start'])) {
            if(!empty($param['create_time_end'])) {
                $param['quotation.create_time'] = ['between',[strtotime($param['create_time_start']),strtotime($param['create_time_end'])]];
                unset($param['create_time_start']);
                unset($param['create_time_end']);
            }else{
                $param['quotation.create_time'] = strtotime($param['create_time_start']);
                unset($param['create_time_start']);
            }
        }
        if(isset($param['start_time'])){
            $param['start_time'] = strtotime($param['start_time']);
        }
        if(isset($param['end_time'])){
            $param['end_time'] = strtotime($param['end_time']);
        }
        if(isset($param['plate'])){
            $param['quotation.plate'] = $param['plate'];
            unset($param['plate']);
        }
        if(isset($param['frame'])){
            $param['quotation.frame'] = $param['frame'];
            unset($param['frame']);
        }
        if(isset($param['create_user'])){
            $param['quotation.create_user'] = $param['create_user'];
            unset($param['create_user']);
        }
        if(isset($param['remarks'])){
            $param['quotation.remarks'] = $param['remarks'];
            unset($param['remarks']);
        }
        $quotationList = Model('Quotation')->getList($param,'*',$this->page);
        $this->assign('quotationList',$quotationList);
        $this->fetch();
    }

    /** 报价单详情
     *
     */
    public function view(Request $request) {
        $param = input('get.');
        $quotationList = Model('Quotation')->getList($param,'*',1);
        $this->assign('list',$quotationList->all()[0]);
        $this->fetch();
    }

    /** 生成报价单
     *
     */
    public function quotationPdf() {
        $param = input('get.');
        $quotationList = Model('Quotation')->getList($param,'*',$this->page);
        if(empty($quotationList)) {
            $this->error("查询失败");exit;
        }
        $this->assign('list',$quotationList->all()[0]);
        $this->fetch();
    }
}