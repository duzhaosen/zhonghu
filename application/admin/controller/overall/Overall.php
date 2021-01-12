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

        $this->param = $request->param();
        if(isset($this->param['id'])) {
            $res = Model('Overall')->getList(['overall.id'=> $this->param['id']]);
            if(!isset($this->param['copy'])) {
                $temporaryId = $res[0]['temporary_id'];
            }else{
                $temporaryId = Model('Overall')->generateTemporaryId();
            }
        }else{
            $res[0] = [];
            //暂存单号生成
            $temporaryId = Model('Overall')->generateTemporaryId();
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
    public function index(Request $request) {
        //状态
        $res = Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $this->assign('status',$res['status']);

        $this->param = array_filter($request->param());

        if(isset($this->param['status']) && $this->param['status'] != -1){
            $this->param['overall.status'] = $this->param['status'];
            unset($this->param['status']);
        }else{
            unset($this->param['status']);
        }
        if(isset($this->param['temporary_id'])){
            $this->param['overall.temporary_id'] = $this->param['temporary_id'];
            unset($this->param['temporary_id']);
        }
        if(isset($param['overall_id'])){
            $this->param['overall.overall_id'] = $this->param['overall_id'];
            unset($this->param['overall_id']);
        }
        if(isset($this->param['documents_id'])){
            $this->param['overall.documents_id'] = $this->param['documents_id'];
            unset($this->param['documents_id']);
        }
        if(isset($this->param['participate_name'])){
            $this->param['participate.participate_name'] = $this->param['participate_name'];
            unset($this->param['participate_name']);
        }
        if(isset($param['coordinated_name'])){
            $this->param['coordinated.coordinated_name'] = $this->param['coordinated_name'];
            unset($this->param['coordinated_name']);
        }
        if(isset($this->param['attribution_user'])){
            $this->param['overall.attribution_user'] = $this->param['attribution_user'];
            unset($this->param['attribution_user']);
        }
        if(isset($this->param['palte'])){
            $this->param['overall.palte'] = $this->param['palte'];
            unset($this->param['palte']);
        }
        if(isset($this->param['frame'])){
            $this->param['overall.frame'] = $this->param['frame'];
            unset($this->param['frame']);
        }
        if(isset($this->param['create_time_start'])) {
            if(!empty($this->param['create_time_end'])) {
                $this->param['overall.create_time'] = ['between',[strtotime($this->param['create_time_start']),strtotime($this->param['create_time_end'])]];
                unset($this->param['create_time_start']);
                unset($this->param['create_time_end']);
            }else{
                $this->param['overall.create_time'] = strtotime($this->param['create_time_start']);
                unset($this->param['create_time_start']);
            }
        }
        if(isset($this->param['financial_review_time_start'])) {
            if(!empty($this->param['financial_review_time_end'])) {
                $this->param['overall.financial_review_time'] = ['between',[strtotime($this->param['financial_review_time_start']),strtotime($this->param['financial_review_time_end'])]];
                unset($this->param['financial_review_time_start']);
                unset($this->param['financial_review_time_end']);
            }else{
                $this->param['overall.financial_review_time'] = strtotime($this->param['financial_review_time_start']);
                unset($this->param['financial_review_time_start']);
            }
        }
        $res = Model('Overall')->getList($this->param);
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
        if($res[0]['status'] != 7) {
            $this->error("审核状态不为审核通过");
        }
        $this->assign('res',$res[0]);
        $this->fetch();
    }
}
