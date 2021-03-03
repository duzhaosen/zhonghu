<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\overall;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Temporary extends Common {
    private $param;

    /** 暂存单添加
     * $request array()
     */
    public function addTemporary(Request $request) {
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
//        $car_frame = $this->param['frame'];
//        $car_list = Model('Overall')->getList(['overall.frame'=>$car_frame,'overall.type'=>1,'overall.temporary_id'=>['<>',$this->param['temporary_id']]]);
//        if($car_list->total() > 0) {
//            $list = $car_list->all();
//            foreach($list as $key => $value) {
//                if($value['end_time']+86400 > strtotime($this->param['start_time'])) {
//                    $data = array();
//                    $data['code'] = 100001;
//                    $data['msg'] = '车架号已在其他单子的统筹期内'.$value['id'];
//                    return json($data);
//                }
//            }
//        }
        //格式化数据
        $this->param['status'] = 1;
        $res = Model('Overall')->addOverall($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加暂存统筹单".http_build_query($this->param)."结果：".$result,ADD_LOGS,37);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '统筹单添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '统筹单添加失败';
        return json($data);
    }

    /** 删除暂存单
     *
     */
    public function delTemporary(Request $request) {
        $id = $request->param('id');
        if($id == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id 不可为空';
            return json($data);
        }
        $res = Model('Quotation')->editQuotation(['id'=>$id,'type' => 2]);
        $result = $res == true? '成功': '失败';
        writLog("删除暂存统筹单id=".$id."结果：".$result,DEL_LOGS,36);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '报价单删除失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '报价单删除成功';
        return json($data);
    }

    /** 暂存单修改
     *
     */
    public function editTemporary(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addOverall.ini','ini');
        foreach($res['addoverall'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addquotationcomment'][$key].'不可为空';
                return json($data);
            }
        }

        //验证车架号/车牌号是否在系统内且在统筹期间内
        $car_frame = $this->param['frame'];
        $car_list = Model('Overall')->getList(['overall.frame'=>$car_frame,'overall.type'=>1,'overall.temporary_id'=>['<>',$this->param['temporary_id']]]);
        if($car_list->total() > 0) {
            $list = $car_list->all();
            foreach($list as $key => $value) {
                if($value['end_time']+86400 > strtotime($this->param['start_time'])) {
                    $data = array();
                    $data['code'] = 100001;
                    $data['msg'] = '车架号已在其他单子的统筹期内'.$value['id'];
                    return json($data);
                }
            }
        }
        //格式化数据
        $this->param['status'] = 1;
        $res = Model('Overall')->editOverall($this->param);
        $result = $res == true? '成功': '失败';
        writLog("修改暂存统筹单".http_build_query($this->param)."结果：".$result,EDIT_LOGS,81);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '统筹单修改成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '统筹单修改失败';
        return json($data);
    }
}
