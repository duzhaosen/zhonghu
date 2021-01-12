<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\endorsements;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Fullorder extends Common {
    private $param;
    public function correction() {
        $this->fetch();
    }
    /** 批单
     *
     */
    public function endorsements(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['overall_id'])) {
            $this->error("统筹单号不可为空");
        }
        $res = Model('Overall')->getList($this->param);
        if(empty($res[0])) {
            $this->error("请输入有效统筹单号");
        }
        $this->assign('list',$res[0]);

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
}
