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
use think\Session;

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
                $data['msg'] = $res['addoverallcomment'][$key].'不可为空';
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
//        $this->param['overall_id'] = Model('Overall')->generateOverallId();
        $this->param['status'] = 3;
        if($old_list->total() > 0) {
            $res = Model('Overall')->editOverall($this->param);
        }else{
            $res = Model('Overall')->addOverall($this->param);
        }
        $result = $res == true? '成功': '失败';
        writLog("添加统筹单".http_build_query($this->param)."结果：".$result,ADD_LOGS,37);
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
        $result = $res == true? '成功': '失败';
        writLog("修改统筹单".http_build_query($this->param)."结果：".$result,EDIT_LOGS,81);
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

    /** 删除统筹单
     * @param Request $request
     * @return \think\response\Json
     */
    public function delOverall(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['id']) || empty($this->param['id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '统筹单号不可为空';
            return json($data);
        }
        $condition = [];
        $condition['temporary_id'] = $this->param['id'];
        $condition['type'] = 2;
        $res = Model('Overall')->delOverall($this->param);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '删除成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '删除失败';
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

    /** 统筹单查询html
     *
     */
    public function getOverallHtml(Request  $request) {
        $this->param = array_filter($request->param());
        if(isset($this->param['plate']) && !empty($this->param['plate'])) {
            $this->param['overall.plate'] = $this->param['plate'];
            unset($this->param['plate']);
        }
        if(isset($this->param['frame']) && !empty($this->param['frame'])) {
            $this->param['overall.frame'] = $this->param['frame'];
            unset($this->param['frame']);
        }
        if(isset($this->param['overall_id']) && !empty($this->param['overall_id'])) {
            $this->param['overall.overall_id'] = $this->param['overall_id'];
            unset($this->param['overall_id']);
        }
        if(isset($this->param['coordinated_name']) && !empty($this->param['coordinated_name'])) {
            $this->param['coordinator.coordinated_name'] = $this->param['coordinated_name'];
            unset($this->param['coordinated_name']);
        }
        if(empty($this->param)) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '未查询到信息';
            return json($data);
        }
        $res = Model('Overall')->getList($this->param);
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
                            <td><input type="checkbox" class="overallId" name="overallId" value="'.$value['temporary_id'].'"></td>
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
            $this->param['temporary_id'] = $list[0]['temporary_id'];
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
        $result = $res == true? '成功': '失败';
        writLog("新车上牌".http_build_query($this->param)."结果：".$result,EDIT_LOGS,45);
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

    /** 打印
     * @param Request $request
     * @return \think\response\Json
     */
    public function editDocuments(Request $request)
    {
        $this->param = array_filter($request->param());
        if (!isset($this->param['related_id']) || empty($this->param['related_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = "统筹单号不可为空";
            return json($data);
        }
        if (!isset($this->param['documents_id']) || empty($this->param['documents_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = "打印单号不可为空";
            return json($data);
        }
        //验证打印单号是否存在
        $user_id = Session::get('user_id');
        $list = Model('Documents')->getIssuedListPage(['issued_user' => $user_id, 'issued_type' => $this->param['issued_type']]);
        $this->param['issued_id'] = 0;
        if (!empty($list)) {
            foreach ($list as $k => $value) {
                if ($this->param['documents_id'] >= $value['issued_s_num'] && $this->param['documents_id'] <= $value['issued_e_num']) {
                    $this->param['issued_id'] = $value['issued_id'];
                }
            }
        } else {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = "未查询到下发本账号的打印单号";
            return json($data);
        }
        if ($this->param['issued_id'] == 0) {
            $data['code'] = 100001;
            $data['msg'] = "请输入下发本账号的单号";
            return json($data);
        }
        $info = Model('Documents')->getInfoList(['related_id' => $this->param['issued_id'], 'documents_id' => $this->param['documents_id']]);
        if ($info[0]['is_issued'] == 2) {
            $data['code'] = 100001;
            $data['msg'] = "该打印单号已被使用";
            return json($data);
        }
        if ($info[0]['is_issued'] == 3) {
            $data['code'] = 100001;
            $data['msg'] = "该打印单号已被回收";
            return json($data);
        }
        //修改主表，同步单证详情表为已使用
        $res = Model('Overall')->editDocuments($this->param);
        $result = $res == true ? '成功' : '失败';
        writLog("打印" . http_build_query($this->param) . "结果：" . $result, EDIT_LOGS, 36);
        if ($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = "打印单号修改成功";
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = "打印单号修改失败";
        return json($data);
    }
    /** 统筹单导出
     *
     */
    public function export(Request $request) {
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
        $total = false;
        if($this->param['total'] == 1) {
            $total = true;
        }
        $res = Model('Overall')->getList($condition,'*',$this->param['pagesize'],['page'=>$page,'query'=>$this->param]);
        if($total) {
            writLog("统筹单导出".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,38);
            return ceil($res->total()/$this->param['pagesize']);
        }
        $line = '';
        $condition = explode(",",$this->param['condition']);
        foreach($res->all() as $key =>$value) {
            foreach ($condition as $k => $v) {
                if(strpos($v,'time') !== false && $value[$v] != 0){
                    $line .= date('Y-m-d H:i:s',$value[$v]).",";
                }else{
                    $line .= $value[$v].",";
                }
            }
            $line .= "\n";
        }
        return $line;
    }
}
