<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Quotation extends Common {
    private $param;
    /** 报价单添加
     *
     */
    public function addQuotation(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addQuotation.ini','ini');
        foreach($res['addquotation'] as $key => $value) {
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
        $car_list = Model('Quotation')->getList(['quotation.frame'=>$car_frame,'quotation.type'=>1]);
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
        $res = Model('Quotation')->addQuotation($this->param);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '报价单添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '报价单添加失败';
        return json($data);
    }

    /** 删除报价单
     *
     */
    public function delQuotation(Request $request) {
        $id = $request->param('id');
        if($id == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = 'id 不可为空';
            return json($data);
        }
        $res = Model('Quotation')->editQuotation(['id'=>$id,'type' => 2]);
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

    /** 报价单修改
     *
     */
    public function editQuotation(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addQuotation.ini','ini');
        foreach($res['addquotation'] as $key => $value) {
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
        $car_list = Model('Quotation')->getList(['quotation.frame'=>$car_frame,'quotation.type'=>1,'quotation.id'=>['<>',$this->param['id']]]);
        if($car_list->total() > 0) {
            $list = $car_list->all();
            foreach($list as $key => $value) {
                if($value['end_time'] < strtotime($this->param['start_time'])) {
                    $data = array();
                    $data['code'] = 100001;
                    $data['msg'] = '车架号已在其他单子的统筹期内'.$value['id'];
                    return json($data);
                }
            }
        }
        //格式化数据
        $res = Model('Quotation')->editQuotation($this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '报价单修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '报价单修改成功';
        return json($data);
    }
}