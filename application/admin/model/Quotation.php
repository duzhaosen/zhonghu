<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/16
 * @createTime: 15:12
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\model;

use think\Config;
use \think\Model;
use think\Db;

class Quotation extends Model {
    private $db = "zh_quotation";
    private $car_db = "zh_car";
    private $overall_db = "zh_overall_planning";

    /** 报价单查询
     * $condition array()
     */
    public function getList($condition,$field='*',$page=10) {
        $condition['quotation.type'] = 1;
        //车辆配置文件
        Config::parse(APP_PATH.'/admin/config/car.ini','ini');
        $commont = Config::parse(APP_PATH.'/admin/config/Structure.ini','ini');
        $result = Db($this->db)->field($field)->where($condition)->alias('quotation')
            ->join($this->car_db.' car','quotation.id=car.related_id')
            ->join($this->overall_db." overall",'quotation.id=overall.related_id')
            ->paginate($page)->each(function($item,$key) use($commont) {
                $item['plate_typeStr'] = $commont['plate_type'][$item['plate_type']];
                $manager = Model('User')->getList(['id'=>$item['manager']]);
                $item['managerStr'] = isset($manager[0]) ? $manager[0]['name'] : '';
                $attribution_user = Model('User')->getList(['id'=>$item['attribution_user']]);
                $item['attribution_userStr'] = isset($attribution_user[0]) ? $attribution_user[0]['name'] : '';
                $item['colorStr'] = $commont['color'][$item['color']];
                $item['use_natureStr'] = $commont['use_nature'][$item['use_nature']];
                $item['speciesStr'] = $commont['species'][$item['species']];
                $item['colorStr'] = $commont['color'][$item['color']];
                $item['car_typeStr'] = $commont['car_type'][$item['car_type']];
                $item['vehicle_inspectionStr'] = $commont['vehicle_inspection'][$item['vehicle_inspection']];
                $item['participate_cityStr'] = cityName($item['participate_city']);

                //组织
                $users = Model('User')->getList(['id'=> $item['attribution_user']]);
                $item['structure'] = $users[0]['structure'];
                $item['structureStr'] = $users[0]['structureStr'];
                //来源
                $item['source'] = $users[0]['source'];
                $item['sourceStr'] = $commont['source'][$users[0]['source']];
                //用户地区
                $item['cityStr'] = $users[0]['cityName'];


                return $item;
        });
        return $result;
    }

    /**添加报价单
     * $condition array() 添加条件
     * @return bool
     */
    public function addQuotation($condition) {
        Db::startTrans();
        try{
            //报价单
            $param = array();
            $quotationId = $this->generateQuotationId();
            if($quotationId == false) {
                return false;
            }
            $param['id'] = $quotationId;
            $param['attribution_user'] = $condition['attribution_user'];
            $param['manager'] = $condition['manager'];
            $param['create_user'] = $condition['create_user'];
            $param['create_time'] = strtotime($condition['create_time']);
            $param['plate'] = $condition['plate'];
            $param['frame'] = $condition['frame'];
            $param['start_time'] = strtotime($condition['start_time']);
            $param['end_time'] = strtotime($condition['end_time']);
            $param['remarks'] = $condition['remarks'];
            $param['car_name'] = $condition['car_name'];
            $param['date_time'] = $condition['date_time'];
            $param['short_term_coefficient'] = $condition['short_term_coefficient'];
            db($this->db)->insert($param);
            //车辆信息
            $car = array();
            $car['related_id'] = $param['id'];
            $car['plate'] = $condition['plate'];
            $car['plate_type'] = $condition['plate_type'];
            $car['color'] = $condition['color'];
            $car['car_name'] = $condition['car_name'];
            $car['frame'] = $condition['frame'];
            $car['engine'] = $condition['engine'];
            $car['label_signal'] = $condition['label_signal'];
            $car['registered_time'] = strtotime($condition['registered_time']);
            if(isset($condition['age'])) {
                $car['age'] = $condition['age'];
            }
            $car['transfer'] = $condition['transfer'];
            $car['transfer'] = $condition['transfer'];
            $car['actual_price'] = $condition['actual_price'];
            $car['use_nature'] = $condition['use_nature'];
            $car['species'] = $condition['species'];
            $car['car_type'] = $condition['car_type'];
            $car['approved_user'] = $condition['approved_user'];
            $car['approved_load'] = $condition['approved_load'];
            if(isset($condition['curb_quality'])) {
                $car['curb_quality'] = $condition['curb_quality'];
            }
            $car['vehicle_inspection'] = $condition['vehicle_inspection'];
            $car['reason'] = $condition['reason'];
            $car['participate_city'] = $condition['participate_city'];
            $car['last_year_status'] = $condition['last_year_status'];
            $car['new_price'] = $condition['new_price'];
            $car['year_indemnity'] = $condition['year_indemnity'];
            $car['continuous_non_risk'] = $condition['continuous_non_risk'];
            $car['continuous_year'] = $condition['continuous_year'];
            $car['danger_total'] = $condition['danger_total'];
            $car['discount'] = $condition['discount'];
            $car['coefficient'] = $condition['coefficient'];
            $car['remarks'] = $condition['remarks'];
            $car['rating'] = $condition['rating'];
            db($this->car_db)->insert($car);
            //统筹项目
            $overall = array();
            if(isset($condition['vehicle_loss'])) {
                $overall['vehicle_loss'] = 2;
            }
            if(isset($condition['vehicle_loss_money'])) {
                $overall['vehicle_loss_money'] = $condition['vehicle_loss_money'];
            }
            if(isset($condition['vehicle_loss_standard'])) {
                $overall['vehicle_loss_standard'] = $condition['vehicle_loss_standard'];
            }
            if(isset($condition['vehicle_loss_payable'])) {
                $overall['vehicle_loss_payable'] = $condition['vehicle_loss_payable'];
            }
            if(isset($condition['vehicle_third'])) {
                $overall['vehicle_third'] = 2;
            }
            if(isset($condition['vehicle_third_money'])) {
                $overall['vehicle_third_money'] = $condition['vehicle_third_money'];
            }
            if(isset($condition['vehicle_third_standard'])) {
                $overall['vehicle_third_standard'] = $condition['vehicle_third_standard'];
            }
            if(isset($condition['vehicle_third_payable'])) {
                $overall['vehicle_third_payable'] = $condition['vehicle_third_payable'];
            }
            if(isset($condition['car_driver'])) {
                $overall['car_driver'] = 2;
            }
            if(isset($condition['car_driver_money'])) {
                $overall['car_driver_money'] = $condition['car_driver_money'];
            }
            if(isset($condition['car_driver_standard'])) {
                $overall['car_driver_standard'] = $condition['car_driver_standard'];
            }
            if(isset($condition['car_driver_payable'])) {
                $overall['car_driver_payable'] = $condition['car_driver_payable'];
            }
            if(isset($condition['car_passenger'])) {
                $overall['car_passenger'] = 2;
            }
            if(isset($condition['car_passenger_money'])) {
                $overall['car_passenger_money'] = $condition['car_passenger_money'];
            }
            if(isset($condition['yuan'])) {
                $overall['yuan'] = $condition['yuan'];
            }
            if(isset($condition['seat'])) {
                $overall['seat'] = $condition['seat'];
            }
            if(isset($condition['car_passenger_standard'])) {
                $overall['car_passenger_standard'] = $condition['car_passenger_standard'];
            }
            if(isset($condition['car_passenger_payable'])) {
                $overall['car_passenger_payable'] = $condition['car_passenger_payable'];
            }
            if(isset($condition['car_goods'])) {
                $overall['car_goods'] = 2;
            }
            if(isset($condition['car_goods_money'])) {
                $overall['car_goods_money'] = $condition['car_goods_money'];
            }
            if(isset($condition['car_goods_standard'])) {
                $overall['car_goods_standard'] = $condition['car_goods_standard'];
            }
            if(isset($condition['car_goods_payable'])) {
                $overall['car_goods_payable'] = $condition['car_goods_payable'];
            }
            if(isset($condition['benchmarking'])) {
                $overall['benchmarking'] = $condition['benchmarking'];
            }
            if(isset($condition['total_discount'])) {
                $overall['total_discount'] = $condition['total_discount'];
                $overall['vehicle_loss_discount'] = $condition['vehicle_loss_discount'];
                $overall['vehicle_third_discount'] = $condition['vehicle_third_discount'];
                $overall['car_driver_discount'] = $condition['car_driver_discount'];
                $overall['car_passenger_discount'] = $condition['car_passenger_discount'];
                $overall['car_goods_discount'] = $condition['car_goods_discount'];
            }
            if(isset($condition['total_planning'])) {
                $overall['total_planning'] = $condition['total_planning'];
            }
            $overall['create_user'] = $condition['create_user'];
            $overall['create_time'] = strtotime(($condition['create_time']));
            $overall['related_id'] = $quotationId;
            db($this->overall_db)->insert($overall);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            print_r($e);die;
            return false;
        }
        return true;
    }

    /**修改报价单
     *
     */
    public function editQuotation($condition) {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        Db::startTrans();
        try{
            //报价单
            $param = array();
            $param['attribution_user'] = $condition['attribution_user'];
            $param['manager'] = $condition['manager'];
            $param['create_user'] = $condition['create_user'];
            $param['create_time'] = strtotime($condition['create_time']);
            $param['plate'] = $condition['plate'];
            $param['frame'] = $condition['frame'];
            $param['start_time'] = strtotime($condition['start_time']);
            $param['end_time'] = strtotime($condition['end_time']);
            $param['remarks'] = $condition['remarks'];
            $param['car_name'] = $condition['car_name'];
            $param['date_time'] = $condition['date_time'];
            $param['short_term_coefficient'] = $condition['short_term_coefficient'];
            $param['op_user'] = getAdminInfo();
            $param['op_time'] = time();
            $quotation_where = array();
            $quotation_where['id'] = $condition['id'];
            $quotation_where['type'] = 1;
            db($this->db)->where($quotation_where)->update($param);
            //车辆信息
            $car = array();
            $car['plate'] = $condition['plate'];
            $car['plate_type'] = $condition['plate_type'];
            $car['color'] = $condition['color'];
            $car['car_name'] = $condition['car_name'];
            $car['frame'] = $condition['frame'];
            $car['engine'] = $condition['engine'];
            $car['label_signal'] = $condition['label_signal'];
            $car['registered_time'] = strtotime($condition['registered_time']);
            if(isset($condition['age'])) {
                $car['age'] = $condition['age'];
            }
            $car['transfer'] = $condition['transfer'];
            $car['transfer'] = $condition['transfer'];
            $car['actual_price'] = $condition['actual_price'];
            $car['use_nature'] = $condition['use_nature'];
            $car['species'] = $condition['species'];
            $car['car_type'] = $condition['car_type'];
            $car['approved_user'] = $condition['approved_user'];
            $car['approved_load'] = $condition['approved_load'];
            if(isset($condition['curb_quality'])) {
                $car['curb_quality'] = $condition['curb_quality'];
            }
            $car['vehicle_inspection'] = $condition['vehicle_inspection'];
            $car['reason'] = $condition['reason'];
            $car['participate_city'] = $condition['participate_city'];
            $car['last_year_status'] = $condition['last_year_status'];
            $car['new_price'] = $condition['new_price'];
            $car['year_indemnity'] = $condition['year_indemnity'];
            $car['continuous_non_risk'] = $condition['continuous_non_risk'];
            $car['continuous_year'] = $condition['continuous_year'];
            $car['danger_total'] = $condition['danger_total'];
            $car['discount'] = $condition['discount'];
            $car['coefficient'] = $condition['coefficient'];
            $car['remarks'] = $condition['remarks'];
            $car['rating'] = $condition['rating'];
            $car_where = array();
            $car_where['related_id'] = $condition['id'];
            $car_where['plate'] = $param['plate'];
            db($this->car_db)->where($car_where)->update($car);
            //统筹项目
            $overall = array();
            if(isset($condition['vehicle_loss'])) {
                $overall['vehicle_loss'] = 2;
            }
            if(isset($condition['vehicle_loss_money'])) {
                $overall['vehicle_loss_money'] = $condition['vehicle_loss_money'];
            }
            if(isset($condition['vehicle_loss_standard'])) {
                $overall['vehicle_loss_standard'] = $condition['vehicle_loss_standard'];
            }
            if(isset($condition['vehicle_loss_payable'])) {
                $overall['vehicle_loss_payable'] = $condition['vehicle_loss_payable'];
            }
            if(isset($condition['vehicle_third'])) {
                $overall['vehicle_third'] = 2;
            }
            if(isset($condition['vehicle_third_money'])) {
                $overall['vehicle_third_money'] = $condition['vehicle_third_money'];
            }
            if(isset($condition['vehicle_third_standard'])) {
                $overall['vehicle_third_standard'] = $condition['vehicle_third_standard'];
            }
            if(isset($condition['vehicle_third_payable'])) {
                $overall['vehicle_third_payable'] = $condition['vehicle_third_payable'];
            }
            if(isset($condition['car_driver'])) {
                $overall['car_driver'] = 2;
            }
            if(isset($condition['car_driver_money'])) {
                $overall['car_driver_money'] = $condition['car_driver_money'];
            }
            if(isset($condition['car_driver_standard'])) {
                $overall['car_driver_standard'] = $condition['car_driver_standard'];
            }
            if(isset($condition['car_driver_payable'])) {
                $overall['car_driver_payable'] = $condition['car_driver_payable'];
            }
            if(isset($condition['car_passenger'])) {
                $overall['car_passenger'] = 2;
            }
            if(isset($condition['car_passenger_money'])) {
                $overall['car_passenger_money'] = $condition['car_passenger_money'];
            }
            if(isset($condition['yuan'])) {
                $overall['yuan'] = $condition['yuan'];
            }
            if(isset($condition['seat'])) {
                $overall['seat'] = $condition['seat'];
            }
            if(isset($condition['car_passenger_standard'])) {
                $overall['car_passenger_standard'] = $condition['car_passenger_standard'];
            }
            if(isset($condition['car_passenger_payable'])) {
                $overall['car_passenger_payable'] = $condition['car_passenger_payable'];
            }
            if(isset($condition['car_goods'])) {
                $overall['car_goods'] = 2;
            }
            if(isset($condition['car_goods_money'])) {
                $overall['car_goods_money'] = $condition['car_goods_money'];
            }
            if(isset($condition['car_goods_standard'])) {
                $overall['car_goods_standard'] = $condition['car_goods_standard'];
            }
            if(isset($condition['car_goods_payable'])) {
                $overall['car_goods_payable'] = $condition['car_goods_payable'];
            }
            if(isset($condition['benchmarking'])) {
                $overall['benchmarking'] = $condition['benchmarking'];
            }
            if(isset($condition['total_discount'])) {
                $overall['total_discount'] = $condition['total_discount'];
                $overall['vehicle_loss_discount'] = $condition['vehicle_loss_discount'];
                $overall['vehicle_third_discount'] = $condition['vehicle_third_discount'];
                $overall['car_driver_discount'] = $condition['car_driver_discount'];
                $overall['car_passenger_discount'] = $condition['car_passenger_discount'];
                $overall['car_goods_discount'] = $condition['car_goods_discount'];
            }
            if(isset($condition['total_planning'])) {
                $overall['total_planning'] = $condition['total_planning'];
            }
            $overall_where = array();
            $overall_where['related_id'] = $condition['id'];
            db($this->overall_db)->where($overall_where)->update($overall);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
        return true;
    }

    /** 生成报价单号
     *
     */
    public function generateQuotationId() {
        $result = 'BJ'.date('Ym');
        $condition = array();
        $condition['id'] = ['like',$result."%"];
        $condition['type'] = 2;
        $condition['new_id'] = 1;
        $res = db($this->db)->where($condition)->select();
        if(!empty($res)) {
            return $res[0]['id'];
        }else{
            $condition = array();
            $condition['id'] = ['like',$result."%"];
            $condition['type'] = 1;
            $res = db($this->db)->where($condition)->order('id','desc')->select();
            if(empty($res)) {
               return $result.'00001';
            }else{
                $str = substr($res[0]['id'],-11) + 1;
                return 'BJ'.$str;
            }
        }
        return false;

    }
}
