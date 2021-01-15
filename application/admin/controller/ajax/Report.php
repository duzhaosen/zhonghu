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

class Report extends Common {
    private $param;
    /** 报案单添加
     *
     */
    public function addReport(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addReport.ini','ini');
        foreach($res['addreport'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addreportcomment'][$key].'不可为空';
                return json($data);
            }
        }

        //格式化数据
        $this->param['end_time'] = strtotime($this->param['end_time']);
        $this->param['report_time'] = strtotime($this->param['report_time']);
        $this->param['out_danger_time'] = strtotime($this->param['out_danger_time']);
        $this->param['report_type'] = 1;
        $res = Model('Report')->addReport($this->param);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '报案单添加成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '报案单添加失败';
        return json($data);
    }

    /** 报案单修改
     *
     */
    public function editReport(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addReport.ini','ini');
        foreach($res['addreport'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['addreportcomment'][$key].'不可为空';
                return json($data);
            }
        }
        //格式化数据
        $this->param['end_time'] = strtotime($this->param['end_time']);
        $this->param['report_time'] = strtotime($this->param['report_time']);
        $this->param['out_danger_time'] = strtotime($this->param['out_danger_time']);
        $this->param['report_type'] = 1;
        $res = Model('Report')->editReport(['report_id'=>$this->param['report_id']],$this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '报案单修改失败';
            return json($data);
        }
        $data['code'] = 100000;
        $data['msg'] = '报案单修改成功';
        return json($data);
    }
}
