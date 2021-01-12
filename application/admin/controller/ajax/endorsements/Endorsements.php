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

    /** 统筹单添加
     * $request array()
     */
    public function addEndorsements(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addOverall.ini','ini');
        foreach($res['addoverall'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
//            if($value && empty($this->param[$key])) {
//                $data = array();
//                $data['code'] = 100001;
//                $data['msg'] = $res['addquotationcomment'][$key].'不可为空';
//                return json($data);
//            }
        }
        //验证车架号/车牌号是否在系统内且在统筹期间内
        $car_frame = $this->param['frame'];
        $car_list = Model('Endorsements')->getList(['endorsements.frame'=>$car_frame,'endorsements.type'=>1]);
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
        //格式化数据
        $this->param['p_temporary_id'] = Model('Endorsements')->generatePTemporaryId();
        $this->param['endorsements_id'] = Model('Endorsements')->generatePId();
        $this->param['status'] = 1;
        $res = Model('Endorsements')->addEndorsements($this->param);
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

    /** 统筹单修改
     *
     */
    public function editEndorsements(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addOverall.ini','ini');
        foreach($res['addoverall'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addoverallcomment'][$key].'不可为空';
                return json($data);
            }
        }

        //验证车架号/车牌号是否在系统内且在统筹期间内
        $car_frame = $this->param['frame'];
        $car_list = Model('Overall')->getList(['overall.frame'=>$car_frame,'overall.type'=>1,'overall.id'=>['<>',$this->param['id']]]);
        if($car_list->total() > 0) {
            $list = $car_list->all();
            foreach($list as $key => $value) {
                if($value['end_time'] < strtotime($this->param['start_time'])) {
                    $data = array();
                    $data['code'] = 100001;
                    $data['msg'] = '车架号已在其他单子的统筹期内'.$value['overall_id'];
                    return json($data);
                }
            }
        }
        //格式化数据
        $res = Model('Overall')->editOverall($this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '统筹单修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '统筹单修改成功';
        return json($data);
    }
}
