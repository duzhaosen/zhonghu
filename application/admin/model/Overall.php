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
use think\Session;

class Overall extends Model {
    private $db = "zh_overall";
    private $car_db = "zh_car";
    private $overall_db = "zh_overall_planning";
    private $traffic_db = "zh_traffic";
    private $participate_db = "zh_participate";
    private $coordinator_db = "zh_coordinator";
    private $pay_db = "zh_pay";
    private $invoice_db = "zh_invoice";
    private $document_info_db = "zh_documents_info";
    private $endorsements_db = "zh_endorsements";
    private $documents_issued_db = "zh_documents_issued";
    private $sales_db = "zh_sales";


    /** 查询统筹单单查询
     * $condition array()
     */
    public function getList($condition,$field='*',$page=10,$paginate=[],$all = true) {
        $condition['overall.type'] = 1;
        $admin = Session::get('user_admin');
        if(!isset($condition['overall.attribution_user'])) {
            if($admin == false) {
                $users = Model('User')->getLoginUserid();
                $condition['overall.attribution_user'] = ['in',$users];
            }
        }else{
            if($admin == false) {
                $users = Model('User')->getLoginUserid();
                if(!in_array($condition['overall.attribution_user'],$users)) {
                    return [];
                }
            }
        }
        //车辆配置文件
        Config::parse(APP_PATH.'/admin/config/car.ini','ini');
        Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $commont = Config::parse(APP_PATH.'/admin/config/structure.ini','ini');
        $result = Db($this->db)->field($field)->where($condition)->order('overall.create_time desc')->alias('overall')
            ->join($this->car_db.' car','overall.temporary_id=car.related_id')
            ->join($this->overall_db." overall_planning",'overall.temporary_id=overall_planning.related_id')
            ->join($this->traffic_db." traffic", "overall.temporary_id=traffic.related_id")
            ->join($this->participate_db." participate", "overall.temporary_id=participate.related_id")
            ->join($this->coordinator_db." coordinator", "overall.temporary_id=coordinator.related_id")
            ->paginate($page,false,$paginate)->each(function($item,$key) use($commont,$all) {
                if($all == true) {
                    $item['plate_typeStr'] = $commont['plate_type'][$item['plate_type']];
                    $manager = Model('User')->getList(['id'=>$item['manager']]);
                    $item['managerStr'] = isset($manager[0]) ? $manager[0]['name'] : '';
                    $item['colorStr'] = $commont['color'][$item['color']];
                    $item['use_natureStr'] = $commont['use_nature'][$item['use_nature']];
                    $item['speciesStr'] = $commont['species'][$item['species']];
                    $item['colorStr'] = $commont['color'][$item['color']];
                    $item['car_typeStr'] = $commont['car_type'][$item['car_type']];
                    $item['vehicle_inspectionStr'] = $commont['vehicle_inspection'][$item['vehicle_inspection']];
                    $item['participate_cityStr'] = cityName($item['participate_city']);
                    $item['statusStr'] = $commont['status'][$item['status']];
                    $item['relationshipStr'] = $commont['relationship'][$item['relationship']];
                    $item['license_typeStr'] = $commont['license_type'][$item['license_type']];
                    $item['last_year_dangerStr'] = $commont['last_year_danger'][$item['last_year_danger']];
                    $item['participate_license_typeStr'] = $commont['license_type'][$item['participate_license_type']];
                    $item['coordinated_license_typeStr'] = $commont['license_type'][$item['coordinated_license_type']];

                    //影响资料
                    $item['attach'] = Model('Upload')->getlist(['related_id'=>$item['temporary_id'],'type'=>1]);

                    //发票
                    $invoice = Model('Invoice')->getList(['related_id'=>$item['temporary_id']]);
                    $item['invoice'] = !empty($invoice) ? $invoice[0] : [];

                    //缴费信息
                    $item['pay'] = db($this->pay_db)->where(['related_id'=>$item['temporary_id'],'overall_type'=>1])->select();

                    //审核
                    $item['review_log'] = Model('ReviewLog')->getList(['related_id'=>$item['temporary_id']]);


                    //组织
                    $users = Model('User')->getList(['id'=> $item['attribution_user']]);
                    $item['structure'] = $users[0]['structure'];
                    $item['structureStr'] = $users[0]['structureStr'];
//                来源
                    $item['source'] = $users[0]['source'];
                    $item['sourceStr'] = $commont['source'][$users[0]['source']];
//                用户地区
                    $item['cityStr'] = $users[0]['cityName'];


                }
                //销售费用管理
                $item['sales'] = db($this->sales_db)->where(['related_id'=>$item['temporary_id']])->select();
                $attribution_user = Model('User')->getList(['id'=>$item['attribution_user']]);
                $item['attribution_userStr'] = isset($attribution_user[0]) ? $attribution_user[0]['name'] : '';
                return $item;
        });
        return $result;
    }

    /**添加统筹单
     * $condition array() 添加条件
     * @return bool
     */
    public function addOverall($condition) {
        Db::startTrans();
        try{
            //统筹单
            $param = array();
            if(isset($condition['overall_id'])) {
                $param['overall_id'] = $condition['overall_id'];
            }
            $param['temporary_id'] = $condition['temporary_id'];
            if(isset($condition['attribution_user'])) {
                $param['attribution_user'] = $condition['attribution_user'];
            }
            if(isset($condition['manager'])) {
                $param['manager'] = $condition['manager'];
            }
            $param['status'] = $condition['status'];
            if(isset($condition['create_user'])) {
                $param['create_user'] = $condition['create_user'];
            }
            if(isset($condition['create_time'])) {
                $param['create_time'] = strtotime($condition['create_time']);
            }
            $param['plate'] = $condition['plate'];
            $param['frame'] = $condition['frame'];
            $param['start_time'] = strtotime($condition['start_time']);
            $param['end_time'] = strtotime($condition['end_time']);
            $param['car_name'] = $condition['car_name'];
            $param['date_time'] = $condition['date_time'];
            $param['short_term_coefficient'] = $condition['short_term_coefficient'];
            if(isset($condition['documents_id'])) {
                $param['documents_id'] = $condition['documents_id'];
            }
            if(isset($condition['agreement'])) {
                $param['agreement'] = $condition['agreement'];
            }
            $param['participate_name'] = $condition['participate_name'];
            if(isset($condition['dispute_resolution'])) {
                $param['dispute_resolution'] = $condition['dispute_resolution'];
            }
            if(isset($condition['description'])) {
                $param['description'] = $condition['description'];
            }
            db($this->db)->insert($param);
            //车辆信息
            $car = array();
            $car['related_id'] = $condition['temporary_id'];
            $car['plate'] = $condition['plate'];
            $car['plate_type'] = $condition['plate_type'];
            $car['color'] = $condition['color'];
            $car['car_name'] = $condition['car_name'];
            $car['relationship'] = $condition['relationship'];
            $car['license_type'] = $condition['license_type'];
            $car['license_number'] = $condition['license_number'];
            $car['address'] = $condition['address'];
            $car['frame'] = $condition['frame'];
            $car['engine'] = $condition['engine'];
            $car['label_signal'] = $condition['label_signal'];
            $car['registered_time'] = strtotime($condition['registered_time']);
            $car['issuance_time'] = strtotime($condition['issuance_time']);
            if(isset($condition['age'])) {
                $car['age'] = $condition['age'];
            }
            $car['transfer'] = $condition['transfer'];
            $car['new_price'] = $condition['new_price'];
            $car['actual_price'] = $condition['actual_price'];
            $car['use_nature'] = $condition['use_nature'];
            $car['species'] = $condition['species'];
            $car['car_type'] = $condition['car_type'];
            $car['approved_user'] = $condition['approved_user'];
            if(isset($condition['curb_quality'])) {
                $car['curb_quality'] = $condition['curb_quality'];
            }
            $car['approved_load'] = $condition['approved_load'];
            $car['displacement'] = $condition['displacement'];
            if(isset($condition['power'])) {
                $car['power'] = $condition['power'];
            }
            $car['vehicle_inspection'] = $condition['vehicle_inspection'];
            $car['reason'] = $condition['reason'];
            $car['last_year_danger'] = $condition['last_year_danger'];
            $car['participate_city'] = $condition['participate_city'];
            $car['create_user'] = getAdminInfo();
            $car['create_time'] = time();
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
            //附加
            if(isset($condition['combustion'])) {
                $overall['combustion'] = 2;
            }
            if(isset($condition['combustion_money'])) {
                $overall['combustion_money'] = $condition['combustion_money'];
            }
            if(isset($condition['combustion_standard'])) {
                $overall['combustion_standard'] = $condition['combustion_standard'];
            }
            if(isset($condition['combustion_payable'])) {
                $overall['combustion_payable'] = $condition['combustion_payable'];
            }
            if(isset($condition['engine_wading'])) {
                $overall['engine_wading'] = 2;
            }
            if(isset($condition['engine_wading_money'])) {
                $overall['engine_wading_money'] = $condition['engine_wading_money'];
            }
            if(isset($condition['engine_wading_standard'])) {
                $overall['engine_wading_standard'] = $condition['engine_wading_standard'];
            }
            if(isset($condition['engine_wading_payable'])) {
                $overall['engine_wading_payable'] = $condition['engine_wading_payable'];
            }
            if(isset($condition['designated_repai'])) {
                $overall['designated_repai'] = 2;
            }
            if(isset($condition['designated_repai_money'])) {
                $overall['designated_repai_money'] = $condition['designated_repai_money'];
            }
            if(isset($condition['designated_repai_standard'])) {
                $overall['designated_repai_standard'] = $condition['designated_repai_standard'];
            }
            if(isset($condition['designated_repai_payable'])) {
                $overall['designated_repai_payable'] = $condition['designated_repai_payable'];
            }
            if(isset($condition['broken_glass'])) {
                $overall['broken_glass'] = 2;
            }
            if(isset($condition['broken_glass_money'])) {
                $overall['broken_glass_money'] = $condition['broken_glass_money'];
            }
            if(isset($condition['broken_glass_standard'])) {
                $overall['broken_glass_standard'] = $condition['broken_glass_standard'];
            }
            if(isset($condition['broken_glass_payable'])) {
                $overall['broken_glass_payable'] = $condition['broken_glass_payable'];
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
                $overall['combustion_discount'] = $condition['combustion_discount'];
                $overall['engine_wading_discount'] = $condition['engine_wading_discount'];
                $overall['designated_repai_discount'] = $condition['designated_repai_discount'];
                $overall['broken_glass_discount'] = $condition['broken_glass_discount'];
            }
            if(isset($condition['total_planning'])) {
                $overall['total_planning'] = $condition['total_planning'];
            }
            if(isset($condition['create_user'])) {
                $overall['create_user'] = $condition['create_user'];
            }
            $overall['create_time'] = time();
            $overall['related_id'] = $condition['temporary_id'];
            db($this->overall_db)->insert($overall);
            //交强险公司
            $traffic = array();
            $traffic['traffic_company'] = $condition['traffic_company'];
            $traffic['traffic_start_time'] = strtotime($condition['traffic_start_time']);
            $traffic['traffic_end_time'] = strtotime($condition['traffic_end_time']);
            $traffic['related_id'] = $condition['temporary_id'];
            $traffic['traffic_company'] = $condition['traffic_company'];
            if(isset($condition['create_user'])) {
                $traffic['create_user'] = $condition['create_user'];
            }
            $traffic['create_time'] = time();
            db($this->traffic_db)->insert($traffic);
            //参统人信息
            $participate = array();
            $participate['participate_name'] = $condition['participate_name'];
            $participate['participate_license_type'] = $condition['participate_license_type'];
            $participate['participate_number'] = $condition['participate_number'];
            if(isset($condition['car_owner'])) {
                $participate['car_owner'] = $condition['car_owner'];
            }
            if(isset($condition['participate_phone'])) {
                $participate['participate_phone'] = $condition['participate_phone'];
            }
            if(isset($condition['participate_email'])) {
                $participate['participate_email'] = $condition['participate_email'];
            }
            if(isset($condition['participate_address'])) {
                $participate['participate_address'] = $condition['participate_address'];
            }
            $participate['related_id'] = $condition['temporary_id'];
            if(isset($condition['create_user'])) {
                $participate['create_user'] = $condition['create_user'];
            }
            $participate['create_time'] = time();
            db($this->participate_db)->insert($participate);
            //被统筹人信息
            $coordinated = array();
            if(isset($condition['coordinated_same'])) {
                $coordinated['coordinated_same'] = $condition['coordinated_same'];
            }
            $coordinated['coordinated_name'] = $condition['coordinated_name'];
            $coordinated['coordinated_license_type'] = $condition['coordinated_license_type'];
            if(isset($condition['coordinated_number'])) {
                $coordinated['coordinated_number'] = $condition['coordinated_number'];
            }
            if(isset($condition['coordinated_phone'])) {
                $coordinated['coordinated_phone'] = $condition['coordinated_phone'];
            }
            if(isset($condition['coordinated_email'])) {
                $coordinated['coordinated_email'] = $condition['coordinated_email'];
            }
            if(isset($condition['coordinated_address'])) {
                $coordinated['coordinated_address'] = $condition['coordinated_address'];
            }
            $coordinated['related_id'] = $condition['temporary_id'];
            if(isset($condition['create_user'])) {
                $coordinated['create_user'] = $condition['create_user'];
            }
            $coordinated['create_time'] = time();
            db($this->coordinator_db)->insert($coordinated);
            //缴费信息
            $pay = array();
            $pay['overall_type'] = 1;
            $pay['pay_money'] = $condition['total_planning'];
            $pay['related_id'] = $condition['temporary_id'];
            if(isset($condition['create_user'])) {
                $pay['create_user'] = $condition['create_user'];
            }
            $pay['create_time'] = time();
            db($this->pay_db)->insert($pay);
            //开票信息
            if(isset($condition['invoice_type'])) {
                $invoice = array();
                $invoice['invoice_type'] = $condition['invoice_type'];
                if(isset($condition['invoice_name'])) {
                    $invoice['invoice_name'] = $condition['invoice_name'];
                }
                if(isset($condition['invoice_tax'])) {
                    $invoice['invoice_tax'] = $condition['invoice_tax'];
                }
                if(isset($condition['invoice_bank'])) {
                    $invoice['invoice_bank'] = $condition['invoice_bank'];
                }
                if(isset($condition['invoice_account'])) {
                    $invoice['invoice_account'] = $condition['invoice_account'];
                }
                if(isset($condition['invoice_open_address'])) {
                    $invoice['invoice_open_address'] = $condition['invoice_open_address'];
                }
                if(isset($condition['invoice_phone'])) {
                    $invoice['invoice_phone'] = $condition['invoice_phone'];
                }
                if(isset($condition['invoice_remarks'])) {
                    $invoice['invoice_remarks'] = $condition['invoice_remarks'];
                }
                $invoice['related_id'] = $condition['temporary_id'];
                if(isset($condition['create_user'])) {
                    $invoice['create_user'] = $condition['create_user'];
                }
                $invoice['create_time'] = time();
                db($this->invoice_db)->insert($invoice);
            }
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

    /**修改统筹单
     *
     */
    public function editOverall($condition) {
        Db::startTrans();
        try{
            //统筹单
            $param = array();
            if(isset($condition['overall_id'])) {
                $param['overall_id'] = $condition['overall_id'];
            }
            $param['temporary_id'] = $condition['temporary_id'];
            if(isset($condition['attribution_user'])) {
                $param['attribution_user'] = $condition['attribution_user'];
            }
            if(isset($condition['manager'])) {
                $param['manager'] = $condition['manager'];
            }
            if(isset($condition['status'])) {
                $param['status'] = $condition['status'];
            }
            if(isset($condition['create_user'])) {
                $param['create_user'] = $condition['create_user'];
            }
            if(isset($condition['create_time'])) {
                $param['create_time'] = strtotime($condition['create_time']);
            }
            $param['plate'] = $condition['plate'];
            $param['frame'] = $condition['frame'];
            $param['start_time'] = strtotime($condition['start_time']);
            $param['end_time'] = strtotime($condition['end_time']);
            $param['car_name'] = $condition['car_name'];
            $param['date_time'] = $condition['date_time'];
            $param['short_term_coefficient'] = $condition['short_term_coefficient'];
            if(isset($condition['documents_id'])) {
                $param['documents_id'] = $condition['documents_id'];
            }
            if(isset($condition['agreement'])) {
                $param['agreement'] = $condition['agreement'];
            }
            $param['participate_name'] = $condition['participate_name'];
            if(isset($condition['dispute_resolution'])) {
                $param['dispute_resolution'] = $condition['dispute_resolution'];
            }
            if(isset($condition['description'])) {
                $param['description'] = $condition['description'];
            }
            $param['op_user'] = getAdminInfo();
            $param['op_time'] = time();
            db($this->db)->where(['temporary_id' => $condition['temporary_id']])->update($param);
            //车辆信息
            $car = array();
            $car['plate'] = $condition['plate'];
            $car['plate_type'] = $condition['plate_type'];
            $car['color'] = $condition['color'];
            $car['car_name'] = $condition['car_name'];
            $car['relationship'] = $condition['relationship'];
            $car['license_type'] = $condition['license_type'];
            $car['license_number'] = $condition['license_number'];
            $car['address'] = $condition['address'];
            $car['frame'] = $condition['frame'];
            $car['engine'] = $condition['engine'];
            $car['label_signal'] = $condition['label_signal'];
            $car['registered_time'] = strtotime($condition['registered_time']);
            $car['issuance_time'] = strtotime($condition['issuance_time']);
            if(isset($condition['age'])) {
                $car['age'] = $condition['age'];
            }
            $car['transfer'] = $condition['transfer'];
            $car['new_price'] = $condition['new_price'];
            $car['actual_price'] = $condition['actual_price'];
            $car['use_nature'] = $condition['use_nature'];
            $car['species'] = $condition['species'];
            $car['car_type'] = $condition['car_type'];
            $car['approved_user'] = $condition['approved_user'];
            if(isset($condition['curb_quality'])) {
                $car['curb_quality'] = $condition['curb_quality'];
            }
            $car['approved_load'] = $condition['approved_load'];
            $car['displacement'] = $condition['displacement'];
            if(isset($condition['power'])) {
                $car['power'] = $condition['power'];
            }
            $car['vehicle_inspection'] = $condition['vehicle_inspection'];
            $car['reason'] = $condition['reason'];
            $car['last_year_danger'] = $condition['last_year_danger'];
            $car['participate_city'] = $condition['participate_city'];
            $car['op_user'] = getAdminInfo();
            $car['op_time'] = time();
            db($this->car_db)->where(['related_id' => $condition['temporary_id']])->update($car);
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
            //附加
            if(isset($condition['combustion'])) {
                $overall['combustion'] = 2;
            }
            if(isset($condition['combustion_money'])) {
                $overall['combustion_money'] = $condition['combustion_money'];
            }
            if(isset($condition['combustion_standard'])) {
                $overall['combustion_standard'] = $condition['combustion_standard'];
            }
            if(isset($condition['combustion_payable'])) {
                $overall['combustion_payable'] = $condition['combustion_payable'];
            }
            if(isset($condition['engine_wading'])) {
                $overall['engine_wading'] = 2;
            }
            if(isset($condition['engine_wading_money'])) {
                $overall['engine_wading_money'] = $condition['engine_wading_money'];
            }
            if(isset($condition['engine_wading_standard'])) {
                $overall['engine_wading_standard'] = $condition['engine_wading_standard'];
            }
            if(isset($condition['engine_wading_payable'])) {
                $overall['engine_wading_payable'] = $condition['engine_wading_payable'];
            }
            if(isset($condition['designated_repai'])) {
                $overall['designated_repai'] = 2;
            }
            if(isset($condition['designated_repai_money'])) {
                $overall['designated_repai_money'] = $condition['designated_repai_money'];
            }
            if(isset($condition['designated_repai_standard'])) {
                $overall['designated_repai_standard'] = $condition['designated_repai_standard'];
            }
            if(isset($condition['designated_repai_payable'])) {
                $overall['designated_repai_payable'] = $condition['designated_repai_payable'];
            }
            if(isset($condition['broken_glass'])) {
                $overall['broken_glass'] = 2;
            }
            if(isset($condition['broken_glass_money'])) {
                $overall['broken_glass_money'] = $condition['broken_glass_money'];
            }
            if(isset($condition['broken_glass_standard'])) {
                $overall['broken_glass_standard'] = $condition['broken_glass_standard'];
            }
            if(isset($condition['broken_glass_payable'])) {
                $overall['broken_glass_payable'] = $condition['broken_glass_payable'];
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
                $overall['combustion_discount'] = $condition['combustion_discount'];
                $overall['engine_wading_discount'] = $condition['engine_wading_discount'];
                $overall['designated_repai_discount'] = $condition['designated_repai_discount'];
                $overall['broken_glass_discount'] = $condition['broken_glass_discount'];
            }
            if(isset($condition['total_planning'])) {
                $overall['total_planning'] = $condition['total_planning'];
            }
            $overall['op_user'] = getAdminInfo();
            $overall['op_time'] = time();
            db($this->overall_db)->where(['related_id'=>$condition['temporary_id']])->update($overall);
            //交强险公司
            $traffic = array();
            $traffic['traffic_company'] = $condition['traffic_company'];
            $traffic['traffic_start_time'] = strtotime($condition['traffic_start_time']);
            $traffic['traffic_end_time'] = strtotime($condition['traffic_end_time']);
            $traffic['traffic_company'] = $condition['traffic_company'];
            if(isset($condition['create_user'])) {
                $traffic['create_user'] = $condition['create_user'];
            }
            $traffic['op_user'] = getAdminInfo();
            $traffic['op_time'] = time();
            db($this->traffic_db)->where(['related_id'=>$condition['temporary_id']])->update($traffic);
            //参统人信息
            $participate = array();
            $participate['participate_name'] = $condition['participate_name'];
            $participate['participate_license_type'] = $condition['participate_license_type'];
            $participate['participate_number'] = $condition['participate_number'];
            if(isset($condition['car_owner'])) {
                $participate['car_owner'] = $condition['car_owner'];
            }
            if(isset($condition['participate_phone'])) {
                $participate['participate_phone'] = $condition['participate_phone'];
            }
            if(isset($condition['participate_email'])) {
                $participate['participate_email'] = $condition['participate_email'];
            }
            if(isset($condition['participate_address'])) {
                $participate['participate_address'] = $condition['participate_address'];
            }
            if(isset($condition['create_user'])) {
                $participate['create_user'] = $condition['create_user'];
            }
            $participate['op_user'] = getAdminInfo();
            $participate['op_time'] = time();
            db($this->participate_db)->where(['related_id'=>$condition['temporary_id']])->update($participate);
            //被统筹人信息
            $coordinated = array();
            if(isset($condition['coordinated_same'])) {
                $coordinated['coordinated_same'] = $condition['coordinated_same'];
            }
            $coordinated['coordinated_name'] = $condition['coordinated_name'];
            $coordinated['coordinated_license_type'] = $condition['coordinated_license_type'];
            if(isset($condition['coordinated_number'])) {
                $coordinated['coordinated_number'] = $condition['coordinated_number'];
            }
            if(isset($condition['coordinated_phone'])) {
                $coordinated['coordinated_phone'] = $condition['coordinated_phone'];
            }
            if(isset($condition['coordinated_email'])) {
                $coordinated['coordinated_email'] = $condition['coordinated_email'];
            }
            if(isset($condition['coordinated_address'])) {
                $coordinated['coordinated_address'] = $condition['coordinated_address'];
            }
            $coordinated['op_time'] = time();
            $coordinated['op_user'] = getAdminInfo();
            db($this->coordinator_db)->where(['related_id'=>$condition['temporary_id']])->update($coordinated);
            //缴费信息
            $pay = array();
            $pay['overall_type'] = 1;
            $pay['pay_money'] = $condition['total_planning'];
            $pay['pay_time'] = strtotime($condition['create_time']);
            $pay['op_user'] = getAdminInfo();
            $pay['op_time'] = time();
            db($this->pay_db)->where(['related_id' => $condition['temporary_id']])->update($pay);
            //开票信息
            if(isset($condition['invoice_type'])) {
                $invoice = array();
                $invoice['invoice_type'] = $condition['invoice_type'];
                if(isset($condition['invoice_name'])) {
                    $invoice['invoice_name'] = $condition['invoice_name'];
                }
                if(isset($condition['invoice_tax'])) {
                    $invoice['invoice_tax'] = $condition['invoice_tax'];
                }
                if(isset($condition['invoice_bank'])) {
                    $invoice['invoice_bank'] = $condition['invoice_bank'];
                }
                if(isset($condition['invoice_account'])) {
                    $invoice['invoice_account'] = $condition['invoice_account'];
                }
                if(isset($condition['invoice_open_address'])) {
                    $invoice['invoice_open_address'] = $condition['invoice_open_address'];
                }
                if(isset($condition['invoice_phone'])) {
                    $invoice['invoice_phone'] = $condition['invoice_phone'];
                }
                if(isset($condition['invoice_remarks'])) {
                    $invoice['invoice_remarks'] = $condition['invoice_remarks'];
                }
                if(isset($condition['create_user'])) {
                    $invoice['create_user'] = $condition['create_user'];
                }
                $invoice['op_user'] = getAdminInfo();
                $invoice['op_time'] = time();
                db($this->invoice_db)->where(['related_id'=>$condition['temporary_id']])->update($invoice);
            }
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
        return true;
    }


    /** 删除统筹单
     *
     */
    public function delOverall($condition)
    {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        $temporary_id = $condition['temporary_id'];
        unset($condition['temporary_id']);
        return db($this->db)->where(['temporary_id'=>$temporary_id])->update($condition);
    }

    /** 生成统筹单号禁止跳号
     * @return $str string
     */
    public function generateOverallId() {
        $result = 'ZH'.date('Y');
        $condition = array();
        $condition['overall_id'] = ['like',$result."%"];
        $condition['type'] = 2;
        $condition['new_id'] = 1;
        $res = db($this->db)->where($condition)->select();
        if(!empty($res)) {
            return $res[0]['id'];
        }else{
            $condition = array();
            $condition['overall_id'] = ['like',$result."%"];
            $condition['type'] = 1;
            $res = db($this->db)->where($condition)->order('id','desc')->select();
            if(empty($res)) {
               return $result.'000000001';
            }else{
                $str = substr($res[0]['overall_id'],-13) + 1;
                return 'ZH'.$str;
            }
        }
        return false;

    }

    /** 生成统筹单暂存号
     *
     */
    public function generateTemporaryId() {
        $result = date('Ymd');
        $condition = array();
        $condition['temporary_id'] = ['like',$result."%"];
        $condition['type'] = 1;
        $res = db($this->db)->where($condition)->order('id','desc')->select();
        if(empty($res)) {
            return $result.'00001';
        }
        return $res[0]['temporary_id'] + 1;

    }

    /** 新车上牌
     *
     */
    public function editPlate($condition) {
        Db::startTrans();
        try{
            $condition['op_user'] = getAdminInfo();
            $condition['op_time'] = time();
            $temporary_id = $condition['temporary_id'];
            unset($condition['overall_id']);
            unset($condition['temporary_id']);
            db($this->db)->where(['temporary_id'=>$temporary_id])->update($condition);
            db($this->car_db)->where(['related_id'=>$temporary_id])->update($condition);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
        return true;
    }

    /** 修改打印单号
     * @param $condition
     * @return bool
     */
    public function editDocuments($condition) {
        Db::startTrans();
        try{
            $data = [];
            $data['op_user'] = getAdminInfo();
            $data['op_time'] = time();
            $data['documents_id'] = $condition['documents_id'];
            //判断是统筹单还是批单
            if($condition['issued_type'] == 1) {
                db($this->db)->where(['temporary_id'=>$condition['related_id']])->update($data);
            }else{
                db($this->endorsements_db)->where(['p_temporary_id'=>$condition['related_id']])->update($data);
            }
            //单证详情表修改为已使用
            $where = [];
            $where['documents_id'] = $condition['documents_id'];
            $where['related_id'] = $condition['issued_id'];
            $data = [];
            $data['is_issued'] = 2;
            $data['issued_time'] = time();
            $data['issued_user'] = getAdminInfo();
            db($this->document_info_db)->where($where)->update($data);
            //单证下发表更新数量
            $list = db($this->documents_issued_db)->where(['issued_id'=>$condition['issued_id']])->select();
            db($this->documents_issued_db)->where(['issued_id'=>$condition['issued_id']])->update(['issued_remaining'=>$list[0]['issued_remaining']-1]);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return false;
        }
        return true;
    }
}
