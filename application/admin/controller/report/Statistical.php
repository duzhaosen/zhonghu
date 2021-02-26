<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\report;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Statistical extends Common {
    private $param;
    public function analysis(Request $request) {
        $this->param = $request->param();
        isset($this->param['type'])?$this->param['type']:$this->param['type'] = 1;
        if(isset($this->param['start_time']) && !empty($this->param['start_time'])) {
            $this->param['start_time'] = $start_time = strtotime($this->param['start_time']);
        }else{
            $this->param['start_time'] = $start_time = strtotime(date('Y-m-d',strtotime('-7 days')));
        }
        if(isset($this->param['end_time']) && !empty($this->param['end_time'])) {
            $this->param['end_time'] = $end_time = strtotime($this->param['end_time']);
        }else{
            $this->param['end_time'] = $end_time = strtotime(date('Y-m-d'));
        }
        //查询统筹单所有数据
        $condition = [];
        $condition['overall.financial_review_time'] = ['between',[$start_time,$end_time+86400]];
        $condition['overall.status'] = 6;
        $data_info = Model('Overall')->getList($condition,'overall.overall_id,overall_planning.total_planning,overall.financial_review_time,overall.attribution_user,car.species,overall.temporary_id,overall_planning.benchmarking',1000000,[],false);
        $overall_ids = [];
        $data = [];
        foreach ($data_info as $key => $value) {
            $overall_ids[] = $value['overall_id'];
            $data[$value['overall_id']] = $value;
            if(!empty($value['sales'])) {
                $data[$value['overall_id']]['coordination'] = $value['sales'][0]['coordination'];
                $data[$value['overall_id']]['return_money'] = $value['sales'][0]['return_money'];
            }else{
                $data[$value['overall_id']]['coordination'] = 0;
                $data[$value['overall_id']]['return_money'] = 0;
            }
            unset($data[$value['overall_id']]['sales']);
        }
        //查询批单的最新数据
        $endorsements = Model('Endorsements')->getList(['endorsements.overall_id'=>['IN',$overall_ids],'endorsements.status'=>4],'endorsements.overall_id,overall_planning.total_planning,car.species,endorsements.p_temporary_id,overall_planning.benchmarking',1000000,[],false);
        if(!empty($endorsements)) {
            $overall_id = [];
            foreach ($endorsements as $key => $value) {
                if(!in_array($value['overall_id'],$overall_id)) {
                    $overall_id[] = $value['overall_id'];
                    $data[$value['overall_id']]['total_planning'] = $value['total_planning'];
                    $data[$value['overall_id']]['benchmarking'] = $value['benchmarking'];
                    $data[$value['overall_id']]['species'] = $value['species'];
                    if(!empty($value['sales'])) {
                        $data[$value['overall_id']]['coordination'] = $value['sales'][0]['coordination'];
                        $data[$value['overall_id']]['return_money'] = $value['sales'][0]['return_money'];
                    }
                }
            }
        }

        //归属人模块
        //生成所有业务员
        $user = [];
        $day_work = [];
        $date_data = [];
        //归属人报表
        //对比起止时间 生成初始化数组
        if($start_time == $end_time) {
            $day = 1;
        }else{
            $day = round(($end_time-$start_time)/3600/24);
            $day ++;
        }

        for($i=0;$i<$day;$i++){
            $day_work[date('Y-m-d',($start_time+$i*86400))] = '';
            $date_data[date('Y-m-d',($start_time+$i*86400))] = '';
        }
        foreach ($day_work as $key => $value) {
            foreach ($data as $k => $item) {
                $user[] = $item['attribution_userStr'];
            }
        }
        $user = array_unique($user);
        $day_work_num = 0;
        $day_work_all = 0;
        //组合数据
        foreach ($day_work as $key => $value) {
            $day_work[$key] = [];
            foreach ($user as $va) {
                $day_work[$key][$va]['price'] = 0;
                $day_work[$key][$va]['num'] = 0;
                foreach($data as $k => $item) {
                    if(date('Y-m-d',$item['financial_review_time']) == $key && $item['attribution_userStr'] == $va) {
                        $day_work[$key][$va]['price'] = $day_work[$key][$va]['price'] + $item['total_planning'];
                        $day_work_all += $day_work[$key][$va]['price'];
                        $day_work[$key][$va]['num'] ++;
                        $day_work_num ++;
                    }
                }
            }
        }
        $this->assign('user',$user);
        $this->assign('day_work',$day_work);
        $this->assign('day_work_all',$day_work_all);
        $this->assign('day_work_num',$day_work_num);

        //日期模块
        $commont = Config::parse(APP_PATH.'/admin/config/Car.ini','ini');
        $list = [];
        $users = [];
        foreach($data as $value) {
            $users[] = $value['attribution_user'];
        }
        $users = array_unique($users);
        $res = Model('User')->getList(['id'=>['IN',$users]]);
        $city = [];
        foreach($res as $key => $value) {
            $city[$value['id']]['name'] = $value['cityName'];
            $city[$value['id']]['id'] = $value['city'];
        }
        $date_all = 0;
        $date_num = 0;
        foreach ($commont['species'] as $key => $value) {
            $list[$value] = [];
            foreach($city as $k => $item) {
                $list[$value][$item['name']]['num'] = 0;
                $list[$value][$item['name']]['price'] = 0;
                $list[$value][$item['name']]['netprice'] = 0;
                foreach($data as $val) {
                    if($val['attribution_user'] == $k && $val['species'] == $key) {
                        $list[$value][$item['name']]['num']++;
                        $list[$value][$item['name']]['price'] += $val['total_planning'];
                        $list[$value][$item['name']]['netprice'] += $val['coordination'];
                        $date_all += $list[$value][$item['name']]['price'];
                        $date_num ++;
                    }
                }
            }
        }
        $this->assign('date_list',$list);
        $this->assign('type',$city);
        $this->assign('date_num',$date_num);
        $this->assign('date_all',$date_all);

        //区域模块
        $data_num = 0;
        $data_all = 0;
        foreach($date_data as $key => $value) {
            $date_data[$key] = [];
            foreach($city as $k => $item) {
                $date_data[$key][$item['name']]['num'] = 0;
                $date_data[$key][$item['name']]['price'] = 0;
                foreach($data as $val) {
                    if($val['attribution_user'] == $k && date('Y-m-d',$val['financial_review_time']) == $key) {
                        $date_data[$key][$item['name']]['num']++;
                        $date_data[$key][$item['name']]['price'] += $val['total_planning'];
                        $data_num ++;
                        $data_all += $val['total_planning'];
                    }
                }
            }
        }
        $this->assign('date_data',$date_data);
        $this->assign('data_num',$data_num);
        $this->assign('data_all',$data_all);

        //费用情况模块
        $price_data = [];
        $all = [];
        $all['benchmarking'] = 0;
        $all['total_planning'] = 0;
        $all['return_money'] = 0;
        $all['num'] = 0;
        foreach ($commont['species'] as $key => $value) {
            $price_data[$value] = [];
            $price_data[$value]['benchmarking'] = 0;
            $price_data[$value]['total_planning'] = 0;
            $price_data[$value]['return_money'] = 0;
            $price_data[$value]['commission'] = 0;
            $price_data[$value]['num'] = 0;
            $price_data[$value]['commission_rate'] = 0;
            $price_data[$value]['discount_rate'] = 0;
            foreach($data as $item) {
                if($item['species'] == $key) {
                    $price_data[$value]['benchmarking'] += $item['benchmarking'];
                    $price_data[$value]['total_planning'] += $item['total_planning'];
                    $price_data[$value]['return_money'] += $item['return_money'];//返还金额=佣金
                    $price_data[$value]['commission'] = $price_data[$value]['benchmarking'] - $price_data[$value]['return_money'];//实收
                    $price_data[$value]['num'] ++;
                    $price_data[$value]['commission_rate'] = ceil($price_data[$value]['commission']/$price_data[$value]['total_planning']);
                    $price_data[$value]['discount_rate'] = ceil($price_data[$value]['total_planning']/$price_data[$value]['benchmarking']);

                    $all['benchmarking'] += $item['benchmarking'];
                    $all['total_planning'] += $item['total_planning'];
                    $all['return_money'] += $item['return_money'];
                    $all['num'] ++;
                }
            }
        }
        $all['commission'] = $all['benchmarking'] - $all['return_money'];
        $all['commission_rate'] = ceil($all['commission']/$all['total_planning']);
        $all['discount_rate'] = ceil($all['total_planning']/$all['benchmarking']);
        $price_data['合计'] = $all;
        $this->assign('list',$price_data);





        $this->assign('param',$this->param);
        $this->fetch();
    }
}