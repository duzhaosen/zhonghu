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

class Overall extends Common {
    private $param;

    /** 统筹单添加
     * $request array()
     */
    public function addOverall(Request $request) {
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
                    $data['msg'] = '车架号已在其他单子的统筹期内'.$value['overall_id'];
                    return json($data);
                }
            }
        }
        //格式化数据
        //判断是否有
        $old_list = Model('Overall')->getList(['overall.type'=>1,'overall.temporary_id'=>$this->param['temporary_id']]);
        $this->param['overall_id'] = Model('Overall')->generateOverallId();
        $this->param['status'] = 3;
        if($old_list->total() > 0) {
            $res = Model('Overall')->editOverall($this->param);
        }else{
            $res = Model('Overall')->addOverall($this->param);
        }
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

    /** 统筹单修改
     *
     */
    public function editOverall(Request $request) {
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
        $car_list = Model('Overall')->getList(['overall.frame'=>$car_frame,'overall.type'=>1,'overall.id'=>['<>',$this->param['overall_id']]]);
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
        $this->param['status'] = 3;
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

    /** 车牌号/车架号查询
     *
     */
    public function getPlateHtml(Request  $request) {
        $this->param = $request->param();
        if(!isset($this->param['plate']) || empty($this->param['plate'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '请输入要查询的车牌/车架号';
            return json($data);
        }
        $res = Model('Overall')->getList(['overall.plate|overall.frame'=>$this->param['plate']]);
        if($res->total() == 0) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '未查询到信息';
            return json($data);
        }else{
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '查询成功';
            $html = '<thead>
                     <tr>
                        <td>选择</td>
                        <td>统筹单号</td>
                        <td>车架号</td>
                        <td>车牌号</td>
                        <td>被统筹人</td>
                        <td>生效日期</td>
                        <td>到期日期</td>
                     </tr>
                    </thead>
                    <tbody>';
            foreach($res as $key=>$value) {
                $html .= '<tr>
                            <td><input type="checkbox" class="carId" name="carId" value="'.$value['id'].'"></td>
                            <td>'.$value['overall_id'].'</td>
                            <td>'.$value['frame'].'</td>
                            <td>'.$value['plate'].'</td>
                            <td>'.$value['coordinated_name'].'</td>
                            <td>'.date('Y-m-d',$value['start_time']).'</td>
                            <td>'.date('Y-m-d',$value['end_time']).'</td>
                         </tr>';

            }
            $html .= '</tbody>';
            $data['data'] = $html;
            return json($data);
        }
    }

    /** 查询统筹单
     *
     */
    public function getOverallList(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['id']) || empty($this->param['id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '请输入统筹单ID';
            return json($data);
        }
        $res = Model('Overall')->getList(['overall.id'=>$this->param['id']]);
        if(empty($res)) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '未查询到信息';
            return json($data);
        }
        $data = array();
        $data['code'] = 100000;
        $data['data'] = $res[0];
        return json($data);
    }

    /** 新车上牌
     *
     */
    public function editPlate(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['overall_id']) || empty($this->param['overall_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = "统筹单号不可为空";
            return json($data);
        }
        //判断统筹单是否没有上车牌
        $list = Model('Overall')->getList(['overall.overall_id'=>$this->param['overall_id'],'overall.type'=>1]);
        if($list->total() > 0) {
            if($list->all()[0]['plate'] != "暂未上牌"){
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = "请勿重复上牌";
                return json($data);
            }
        }else{
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = "未查询到该统筹单号";
            return json($data);
        }
        //验证车架号/车牌号是否在系统内且在统筹期间内
        $plate = $this->param['plate'];
        $car_list = Model('Overall')->getList(['overall.plate'=>$plate,'overall.type'=>1]);
        if($car_list->total() > 0) {
            $list = $car_list->all();
            foreach($list as $key => $value) {
                if($value['end_time']+86400 > strtotime($this->param['start_time'])) {
                    $data = array();
                    $data['code'] = 100001;
                    $data['msg'] = '车牌号已在其他单子的统筹期内：统筹单号：'.$value['overall_id'];
                    return json($data);
                }
            }
        }
        $res = Model('Overall')->editPlate($this->param);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = "上牌成功";
            return json($data);
        }else{
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = "上牌失败";
            return json($data);
        }
    }
}
