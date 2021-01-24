<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\overall;

use app\admin\controller\Common;
use app\admin\controller\report\Report;
use think\Config;
use think\Request;

class Overall extends Common {
    private $param;
    private $pagesize = 10;
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
        $res = Config::parse(APP_PATH.'/admin/config/city.ini','ini');
        $this->assign('participate_cityList', json_decode($res['province'], true));
        $this->assign('license_typeList',$res['license_type']);
        $this->assign('relationshipList',$res['relationship']);
        $this->assign('last_year_dangerList',$res['last_year_danger']);

        //特别约定
        $res = Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $this->assign('agreement',$res['agreement']);

        $temporaryId = Model('Overall')->generateTemporaryId();
        $this->assign('temporaryId', $temporaryId);

        $this->param = $request->param();
        if(isset($this->param['quotation_id'])) {
            $res = Model('Quotation')->getList(['quotation.id'=>$this->param['quotation_id']]);
            if(!empty($res)) {
                $this->assign('list',$res[0]);
            }
        }



        //影像资料
        $imageArr = [];
        //定义上传文件夹
        $uploadArr = range(0,10);
        $fils = Model('Upload')->getlist(['related_id'=>$temporaryId,'type'=>1]);
        if(!empty($fils)) {
            foreach($fils as $key=>$value) {
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
        $this->assign('files',$fils);
        $this->assign('imageArr',json_encode($imageArr));
        $this->assign('image',$imageArr);
        $this->assign('upload',$uploadArr);
        $this->assign('uploadTotal',11);


        $this->fetch();
    }

    /** 统筹单修改
     * @param Request $request
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
        $res = Config::parse(APP_PATH.'/admin/config/city.ini','ini');
        $this->assign('participate_cityList', json_decode($res['province'], true));
        $this->assign('license_typeList',$res['license_type']);
        $this->assign('relationshipList',$res['relationship']);
        $this->assign('last_year_dangerList',$res['last_year_danger']);

        //特别约定
        $res = Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $this->assign('agreement',$res['agreement']);

        $this->param = $request->param();
        if(isset($this->param['temporary_id'])) {
            $list = Model('Overall')->getList(['overall.temporary_id'=> $this->param['temporary_id']]);
            if(!in_array($list[0]['status'],$res['isedit'])) {
                $this->error("统筹单状态不是待修改");
            }
            $temporaryId = $list[0]['temporary_id'];
        }else{
            $this->error("未查询到信息");
        }
        $this->assign('temporaryId', $temporaryId);
        $this->assign('list',$list[0]);



        //影像资料
        $imageArr = [];
        //定义上传文件夹
        $uploadArr = range(0,10);
        if(!empty($res[0]) && !empty($res[0]['attach'])) {
            foreach($res[0]['attach'] as $key=>$value) {
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
        $this->assign('imageArr',json_encode($imageArr));
        $this->assign('image',$imageArr);
        $this->assign('upload',$uploadArr);
        $this->assign('uploadTotal',11);


        $this->fetch();
    }

    /** 统筹单复制
     * @param Request $request
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
        $res = Config::parse(APP_PATH.'/admin/config/city.ini','ini');
        $this->assign('participate_cityList', json_decode($res['province'], true));
        $this->assign('license_typeList',$res['license_type']);
        $this->assign('relationshipList',$res['relationship']);
        $this->assign('last_year_dangerList',$res['last_year_danger']);

        //特别约定
        $res = Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $this->assign('agreement',$res['agreement']);

        $this->param = $request->param();
        if(isset($this->param['temporary_id'])) {
            $res = Model('Overall')->getList(['overall.temporary_id'=> $this->param['temporary_id']]);
            $temporaryId = Model('Overall')->generateTemporaryId();
        }else{
            $this->error("单号不可为空");
        }
        $this->assign('temporaryId', $temporaryId);
        $this->assign('list',$res[0]);



        //影像资料
        $imageArr = [];
        //定义上传文件夹
        $uploadArr = range(0,10);
        if(!empty($res[0]) && !empty($res[0]['attach'])) {
            foreach($res[0]['attach'] as $key=>$value) {
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
        $this->assign('imageArr',json_encode($imageArr));
        $this->assign('image',$imageArr);
        $this->assign('upload',$uploadArr);
        $this->assign('uploadTotal',11);


        $this->fetch();
    }


    /** 统筹单查询
     * @param Request $request
     */
    public function index(Request $request) {
        //状态
        $res = Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $this->assign('status',$res['status']);
        //导出字段
        $this->assign('export',$res['export']);
        $this->assign('export_url','/admin/ajax/overall/overall/export');
        $this->assign('export_name','统筹单'.date('Ymd').'.csv');

        $this->param = array_filter($request->param());
        $condition = [];

        if(isset($this->param['status']) && $this->param['status'] != -1){
            $condition['overall.status'] = $this->param['status'];
        }
        if(isset($this->param['temporary_id'])){
            $condition['overall.temporary_id'] = $this->param['temporary_id'];
        }
        if(isset($param['overall_id'])){
            $condition['overall.overall_id'] = $this->param['overall_id'];
        }
        if(isset($this->param['documents_id'])){
            $condition['overall.documents_id'] = $this->param['documents_id'];
        }
        if(isset($this->param['participate_name'])){
            $condition['participate.participate_name'] = $this->param['participate_name'];
        }
        if(isset($param['coordinated_name'])){
            $condition['coordinated.coordinated_name'] = $this->param['coordinated_name'];
        }
        if(isset($this->param['attribution_user'])){
            $condition['overall.attribution_user'] = $this->param['attribution_user'];
        }
        if(isset($this->param['plate'])){
            $condition['overall.plate'] = $this->param['plate'];
        }
        if(isset($this->param['frame'])){
            $condition['overall.frame'] = $this->param['frame'];
        }
        if(isset($this->param['start_time_start'])) {
            if(!empty($this->param['start_time_end'])) {
                $condition['overall.start_time'] = ['between',[strtotime($this->param['start_time_start']),strtotime($this->param['start_time_end'])]];
            }else{
                $condition['overall.start_time'] = strtotime($this->param['start_time_start']);
            }
        }
        if(isset($this->param['financial_review_time_start'])) {
            if(!empty($this->param['financial_review_time_end'])) {
                $condition['overall.financial_review_time'] = ['between',[strtotime($this->param['financial_review_time_start']),strtotime($this->param['financial_review_time_end'])]];
            }else{
                $condition['overall.financial_review_time'] = strtotime($this->param['financial_review_time_start']);
            }
        }
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $res = Model('Overall')->getList($condition,'*',$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('list',$res);


        //归属人查询
        $users = Model('User')->getList(['salesman'=>1]);
        $this->assign('users',$users);

        $this->fetch();
    }

    /** 统筹单查询
     * @param Request $request
     */
    public function view(Request $request) {
        $this->param = $request->param();
        if(isset($this->param['id'])) {
            $this->param['overall.id'] = $this->param['id'];
            unset($this->param['id']);
        }
        $res = Model('Overall')->getList($this->param);
        $this->assign('list',$res[0]);

        $this->fetch();
    }

    /** 统筹单打印
     *
     */
    public function overallPdf(Request $request) {
        $this->param = $request->param();
        if(isset($this->param['temporary_id'])) {
            $this->param['overall.temporary_id'] = $this->param['temporary_id'];
            unset($this->param['temporary_id']);
        }
        $res = Model('Overall')->getList($this->param);
        if($res->total() == 0) {
            $this->error("未查询到统筹单");
        }
        if($res[0]['status'] != 6) {
            $this->error("审核状态不为审核通过");
        }
        $this->assign('res',$res[0]);
        $this->fetch();
    }
}
