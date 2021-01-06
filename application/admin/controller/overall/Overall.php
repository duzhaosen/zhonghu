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
        $this->assign('participate_cityList', json_decode($res['city']['province'], true));
        $this->assign('license_typeList',$res['license_type']);
        $this->assign('relationshipList',$res['relationship']);
        $this->assign('last_year_dangerList',$res['last_year_danger']);

        //特别约定
        $res = Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $this->assign('agreement',$res['agreement']);

        $this->param = $request->param();
        $temporaryId = '';
        if(!isset($this->para['id'])) {
            //暂存单号生成
            $temporaryId = Model('Overall')->generateTemporaryId();
        }
        $this->assign('temporaryId', $temporaryId);

        $this->assign('upload',range(0,10));
        $this->assign('uploadTotal',11);


        $this->fetch();
    }
    public function index() {
        $this->fetch();
    }
}