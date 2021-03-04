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

class Endorsements extends Model {
    private $db = "zh_endorsements";
    private $car_db = "zh_car";
    private $overall_db = "zh_overall_planning";
    private $traffic_db = "zh_traffic";
    private $participate_db = "zh_participate";
    private $coordinator_db = "zh_coordinator";
    private $pay_db = "zh_pay";
    private $invoice_db = "zh_invoice";
    private $review_los = "zh_review_log";
    private $sales_db = "zh_sales";


    /** 查询批单单查询
     * $condition array()
     */
    public function getList($condition,$field='*',$page=10,$paginate=[],$show = true) {
        $condition['endorsements.type'] = 1;
        $admin = Session::get('user_admin');
        if(!isset($condition['endorsements.attribution_user'])) {
            if($admin == false) {
                $users = Model('User')->getLoginUserid();
                $condition['endorsements.attribution_user'] = ['in',$users];
            }
        }else{
            if($admin == false) {
                $users = Model('User')->getLoginUserid();
                if(!in_array($condition['endorsements.attribution_user'],$users)) {
                    return [];
                }
            }
        }
        //车辆配置文件
        Config::parse(APP_PATH.'/admin/config/car.ini','ini');
        Config::parse(APP_PATH.'/admin/config/endorsements.ini','ini');
        $commont = Config::parse(APP_PATH.'/admin/config/structure.ini','ini');
        $result = Db($this->db)->field($field)->where($condition)->order('endorsements.endorsements_time desc')->alias('endorsements')
            ->join($this->car_db.' car','endorsements.p_temporary_id=car.related_id')
            ->join($this->overall_db." overall_planning",'endorsements.p_temporary_id=overall_planning.related_id')
            ->join($this->traffic_db." traffic", "endorsements.p_temporary_id=traffic.related_id")
            ->join($this->participate_db." participate", "endorsements.p_temporary_id=participate.related_id")
            ->join($this->coordinator_db." coordinator", "endorsements.p_temporary_id=coordinator.related_id")
            ->paginate($page,false,$paginate)->each(function($item,$key) use($commont,$show) {
                if($show == true) {
                    $item['plate_typeStr'] = $commont['plate_type'][$item['plate_type']];
                    $manager = Model('User')->getList(['id'=>$item['manager']]);
                    $item['managerStr'] = isset($manager[0]) ? $manager[0]['name'] : '';
                    $attribution_user = Model('User')->getList(['id'=>$item['attribution_user']]);
                    $item['attribution_userStr'] = isset($attribution_user[0]) ? $attribution_user[0]['name'] : '';
                    $item['colorStr'] = $commont['color'][$item['color']];
                    $item['endorsements_typeStr'] = $commont['endorsements_type'][$item['endorsements_type']];
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
                    $item['attach'] = Model('Upload')->getlist(['related_id'=>$item['p_temporary_id']]);

                    //开票
                    $item['invoice'] = Model('Invoice')->getlist(['related_id'=>$item['p_temporary_id']]);

                    //统筹单暂存号
                    $overall = Model('Overall')->getList(['overall.overall_id'=>$item['overall_id']]);
                    if(!empty($overall[0])) {
                        $item['temporary_id'] = $overall[0]['temporary_id'];
                    }else{
                        $item['temporary_id'] = '';
                    }



                    //审核
                    $item['review_log'] = Model('ReviewLog')->getList(['related_id'=>$item['p_temporary_id']]);

                    //组织
                    $users = Model('User')->getList(['id'=> $item['attribution_user']]);
                    if(!empty($users)) {
                        $item['structure'] = $users[0]['structure'];
                        $item['structureStr'] = $users[0]['structureStr'];
                        //来源
                        $item['source'] = $users[0]['source'];
                        $item['sourceStr'] = $commont['source'][$users[0]['source']];
                        //用户地区
                        $item['cityStr'] = $users[0]['cityName'];
                        $item['all_name'] = $users[0]['all_name'];
                    }else{
                        $item['structure'] = '';
                        $item['structureStr'] = '';
                        //来源
                        $item['source'] = '';
                        $item['sourceStr'] = '';
                        $item['all_name'] = '';
                        //用户地区
                        $item['cityStr'] = '';
                    }
                }
                //缴费信息
                $item['pay'] = db($this->pay_db)->where(['overall_id'=>$item['overall_id']])->select();
                //销售费用管理
                $item['sales'] = db($this->sales_db)->where(['related_id'=>$item['p_temporary_id']])->select();

                return $item;
        });
        return $result;
    }

    /**添加批单
     * $condition array() 添加条件
     * @return bool
     */
    public function addEndorsements($condition) {
        Db::startTrans();
        try{
            //统筹单
            $param = array();
            if(isset($condition['endorsements_id'])) {
                $param['endorsements_id'] = $condition['endorsements_id'];
            }
            $param['p_temporary_id'] = $condition['p_temporary_id'];
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
            $param['endorsements_time'] = time();
            $param['overall_id'] = $condition['overall_id'];
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
            if(isset($condition['approval'])) {
                $param['approval'] = $condition['approval'];
            }
            db($this->db)->insert($param);
            //车辆信息
            $car = array();
            $car['related_id'] = $condition['p_temporary_id'];
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
            $car['vehicle_inspection'] = $condition['vehicle_inspection'];
            $car['reason'] = $condition['reason'];
            $car['last_year_danger'] = $condition['last_year_danger'];
            $car['participate_city'] = $condition['participate_city'];
            if(isset($condition['create_user'])) {
                $param['create_user'] = $condition['create_user'];
            }
            $overall['create_time'] = time();
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
                $overall['vehicle_loss_discount'] = $condition['total_planning'];
                $overall['vehicle_third_discount'] = $condition['total_planning'];
                $overall['car_driver_discount'] = $condition['total_planning'];
                $overall['car_passenger_discount'] = $condition['total_planning'];
                $overall['car_goods_discount'] = $condition['total_planning'];
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
            $overall['related_id'] = $condition['p_temporary_id'];
            db($this->overall_db)->insert($overall);
            //交强险公司
            $traffic = array();
            if(isset($condition['traffic_company']) && !empty($condition['traffic_company'])) {
                $traffic['traffic_company'] = $condition['traffic_company'];
            }
            $traffic['traffic_start_time'] = strtotime($condition['traffic_start_time']);
            $traffic['traffic_end_time'] = strtotime($condition['traffic_end_time']);
            $traffic['related_id'] = $condition['p_temporary_id'];
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
            $participate['related_id'] = $condition['p_temporary_id'];
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
            $coordinated['related_id'] = $condition['p_temporary_id'];
            if(isset($condition['create_user'])) {
                $coordinated['create_user'] = $condition['create_user'];
            }
            $coordinated['create_time'] = time();
            db($this->coordinator_db)->insert($coordinated);
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
                $invoice['related_id'] = $condition['p_temporary_id'];
                if(isset($condition['create_user'])) {
                    $invoice['create_user'] = $condition['create_user'];
                }
                $invoice['create_time'] = time();
                db($this->invoice_db)->insert($invoice);
            }
            //影像资料
            $attach = Model('Upload')->getlist(['related_id'=>$condition['temporary_id']]);
            if(!empty($attach)) {
                $path = Config::parse(APP_PATH.'/admin/config/upload.ini','ini');
                foreach($attach as $key=>$value) {
                    foreach($value as $item) {
                        //复制图片
                        $old_url = substr($item['attach_url'],9,-8).'copy';
                        $file_suffix = substr($item['attach_url'],-4);
                        $new_url = date('Ymd').'/'.$old_url.$file_suffix;
                        //判断 文件夹
                        if(!is_dir(ROOT_PATH.'public'.$path['url']['path'].$item['folder'])) {
                            mkdir(ROOT_PATH.'public'.$path['url']['path'].$item['folder'],0755,true);
                        }
                        //判断 文件夹
                        if(!is_dir(ROOT_PATH.'public'.$path['url']['path'].$item['folder'].DS.date('Ymd'))) {
                            mkdir(ROOT_PATH.'public'.$path['url']['path'].$item['folder'].DS.date('Ymd'),0755,true);
                        }
                        $result = copy(ROOT_PATH.'public'.$item['url'],ROOT_PATH.'public'.$path['url']['path'].$item['folder'].DS.$new_url);
                        if($result) {
                            $upload = array();
                            $upload['related_id'] = $condition['p_temporary_id'];
                            $upload['attach_url'] = $new_url;
                            $upload['folder'] = $item['folder'];
                            $upload['name'] = $key;
                            Model('Upload')->addUpload($upload);
                        }
                    }
                }
            }
            //审核日志
            $logs = [];
            $logs['related_id'] = $condition['p_temporary_id'];
            $logs['create_user'] = getAdminInfo();
            $logs['create_time'] = time();
            $logs['type'] = 0;
            db($this->review_los)->insert($logs);
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

    /**修改批单
     *
     */
    public function editEndorsements($condition) {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        Db::startTrans();
        try{
            //批单
            $param = array();
            if(isset($condition['overall_id'])) {
                $param['overall_id'] = $condition['overall_id'];
            }
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
            $param['op_user'] = getAdminInfo();
            $param['op_time'] = time();
            db($this->db)->where(['p_temporary_id' => $condition['p_temporary_id']])->update($param);
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
            $car['vehicle_inspection'] = $condition['vehicle_inspection'];
            $car['reason'] = $condition['reason'];
            $car['last_year_danger'] = $condition['last_year_danger'];
            $car['participate_city'] = $condition['participate_city'];
            $car['op_user'] = getAdminInfo();
            $car['op_time'] = time();
            db($this->car_db)->where(['related_id' => $condition['p_temporary_id']])->update($car);
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
                $overall['vehicle_loss_discount'] = $condition['total_planning'];
                $overall['vehicle_third_discount'] = $condition['total_planning'];
                $overall['car_driver_discount'] = $condition['total_planning'];
                $overall['car_passenger_discount'] = $condition['total_planning'];
                $overall['car_goods_discount'] = $condition['total_planning'];
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
            db($this->overall_db)->where(['related_id'=>$condition['p_temporary_id']])->update($overall);
            //交强险公司
            $traffic = array();
            if(isset($condition['traffic_company']) && !empty($condition['traffic_company'])) {
                $traffic['traffic_company'] = $condition['traffic_company'];
            }
            $traffic['traffic_start_time'] = strtotime($condition['traffic_start_time']);
            $traffic['traffic_end_time'] = strtotime($condition['traffic_end_time']);
            $traffic['op_user'] = getAdminInfo();
            $traffic['op_time'] = time();
            db($this->traffic_db)->where(['related_id'=>$condition['p_temporary_id']])->update($traffic);
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
            $participate['op_user'] = getAdminInfo();
            $participate['op_time'] = time();
            db($this->participate_db)->where(['related_id'=>$condition['p_temporary_id']])->update($participate);
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
            db($this->coordinator_db)->where(['related_id'=>$condition['p_temporary_id']])->update($coordinated);
            //缴费信息
            $pay = array();
            $pay['overall_type'] = 1;
            $pay['pay_money'] = $condition['total_planning'];
            $pay['pay_time'] = strtotime($condition['create_time']);
            $pay['op_user'] = getAdminInfo();
            $pay['op_time'] = time();
            db($this->pay_db)->where(['related_id' => $condition['p_temporary_id']])->update($pay);
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
                $invoice['op_user'] = getAdminInfo();
                $invoice['op_time'] = time();
                db($this->invoice_db)->where(['related_id'=>$invoice['p_temporary_id']])->update($invoice);
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


    /** 删除批单
     *
     */
    public function delEndorsements($condition)
    {
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        $p_temporary_id = $condition['p_temporary_id'];
        unset($condition['p_temporary_id']);
        return db($this->db)->where(['p_temporary_id'=>$p_temporary_id])->update($condition);
    }

    /** 生成统批单号禁止跳号
     * @return $str string
     */
    public function generatePId() {
        $result = 'PZH'.date('Y');
        $condition = array();
        $condition['endorsements_id'] = ['like',$result."%"];
        $condition['type'] = 2;
        $condition['new_id'] = 1;
        $res = db($this->db)->where($condition)->select();
        if(!empty($res)) {
            return $res[0]['endorsements_id'];
        }else{
            $condition = array();
            $condition['endorsements_id'] = ['like',$result."%"];
            $condition['type'] = 1;
            $res = db($this->db)->where($condition)->order('endorsements_id','desc')->select();
            if(empty($res)) {
               return $result.'000000001';
            }else{
                $str = substr($res[0]['endorsements_id'],-13) + 1;
                return 'PZH'.$str;
            }
        }
        return false;

    }

    /** 生成批单暂存号
     *
     */
    public function generatePTemporaryId() {
        $result = 'P'.date('Ymd');
        $condition = array();
        $condition['p_temporary_id'] = ['like',$result."%"];
        $condition['type'] = 1;
        $res = db($this->db)->where($condition)->order('id','desc')->select();
        if(empty($res)) {
            return $result.'00001';
        }else{
            $str = substr($res[0]['p_temporary_id'],1) + 1;
            return 'P' . $str;
        }
        return false;

    }

    /** 简易查询批单
     * @param array $condition
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function getListSimple($condition=[]) {
        return db($this->db)->where($condition)->select();
    }

    public function addPayinfo($condition) {
        $result = db($this->pay_db)->where(['related_id'=>$condition['related_id'],'overall_type'=>$condition['overall_type']])->select();
        if(empty($result)) {
            $condition['create_time'] = time();

            $overall_list = db($this->db)->where(['p_temporary_id'=>$condition['related_id']])->select();
            if(!empty($overall_list)) {
                $pay['create_user'] = $overall_list[0]['create_user'];
                $pay['overall_id'] = $overall_list[0]['overall_id'];
                $pay['number_id'] = $overall_list[0]['endorsements_id'];
            }
            return db($this->pay_db)->insert($condition);
        }else{
            $condition['op_user'] = getAdminInfo();
            $condition['op_time'] = time();
            $related_id = $condition['related_id'];
            $overall_type = $condition['overall_type'];
            unset($condition['related_id']);
            unset($condition['overall_type']);
            return db($this->pay_db)->where(['related_id'=>$related_id,'overall_type'=>$overall_type])->update($condition);
        }
    }
}
