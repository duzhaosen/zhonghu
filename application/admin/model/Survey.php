<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/23
 * @createTime: 15:42
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\model;

use think\Config;
use \think\Model;
use think\Db;

class Survey extends Model {
    private $db = 'zh_car_damage';
    private $info_db = 'zh_damage_info';
    private $human = 'zh_human_injury';
    private $human_info = 'zh_human_info';
    private $human_price = 'zh_human_price';
    /** 查询车损主表
     *
     */
    public function getDamageLordList($condition) {
        return db($this->db)->where($condition)->select();
    }
    /** 查询车损详情
     *
     */
    public function getDamageList($condition) {
        return db($this->info_db)->where($condition)->select();
    }
    /** 车损添加
     *
     */
    public function addDamage($condition) {
        Db::startTrans();
        try{
            //车损
            $data = [];
            //主要车辆信息
            if(isset($condition['damage_plate'])) {
                $data['damage_plate'] = $condition['damage_plate'];
                $data['damage_brand'] = $condition['damage_brand'];
                $data['damage_model'] = $condition['damage_model'];
                $data['damage_year'] = $condition['damage_year'];
                $data['damage_frame'] = $condition['damage_frame'];
                $data['damage_engine'] = $condition['damage_engine'];
                $data['damage_driver'] = $condition['damage_driver'];
                $data['damage_sex'] = $condition['damage_sex'];
                $data['damage_phone'] = $condition['damage_phone'];
                $data['damage_repairer'] = $condition['damage_repairer'];
                $data['this_car'] = $condition['this_car'];
            }
            //配件
            if(isset($condition['accessories_money'])) {
                $data['accessories_money'] = $condition['accessories_money'];
                $data['accessories_approved'] = $condition['accessories_approved'];
                $data['accessories_total'] = $condition['accessories_total'];
                $data['accessories_residual'] = $condition['accessories_residual'];
                $data['accessories_all'] = $condition['accessories_all'];
            }
            //工时
            if(isset($condition['work_money'])) {
                $data['work_money'] = $condition['work_money'];
                $data['work_approved'] = $condition['work_approved'];
                $data['work_rescue'] = $condition['work_rescue'];
                $data['work_all'] = $condition['work_all'];
                $data['work_total'] = $condition['work_total'];
            }
            //财务
            if(isset($condition['finance_money'])) {
                $data['finance_money'] = $condition['finance_money'];
                $data['finance_approved'] = $condition['finance_approved'];
                $data['finance_total'] = $condition['finance_total'];
                $data['finance_residual'] = $condition['finance_residual'];
                $data['finance_all'] = $condition['finance_all'];
                $data['finance_litigation'] = $condition['finance_litigation'];
                $data['finance_identification'] = $condition['finance_identification'];
                $data['finance_appraisal'] = $condition['finance_appraisal'];
                $data['finance_stay'] = $condition['finance_stay'];
                $data['finance_road'] = $condition['finance_road'];
                $data['finance_fuel'] = $condition['finance_fuel'];
                $data['finance_other'] = $condition['finance_other'];
                $data['finance_summary'] = $condition['finance_summary'];
                if(isset($condition['finance_remark'])) {
                    $data['finance_remark'] = $condition['finance_remark'];
                }
            }
            $info = db($this->db)->where(['related_id'=>$condition['report_id'],'this_car'=>$condition['this_car']])->select();
            if(!empty($info)) {
                $data['op_time'] = time();
                $data['op_user'] = getAdminInfo();
                db($this->db)->where(['related_id'=>$condition['report_id'],'this_car'=>$condition['this_car']])->update($data);
                $related_id = $info[0]['id'];
            }else{
                $data['related_id'] = $condition['report_id'];
                $data['create_time'] = time();
                $data['create_user'] = getAdminInfo();
                $related_id = db($this->db)->insert($data);
            }
            //添加车损详情页
            //删除旧数据
            db($this->info_db)->where(['related_id'=>$related_id,'damage_type'=>$condition['damage_type']])->delete();
            $info_data = [];
            foreach ($condition as $key => $value) {
                if(is_array($value)) {
                    $info_data[$key]['related_id'] = $related_id;
                    $info_data[$key]['damage_overall'] = $value['damage_overall'];
                    $info_data[$key]['damage_name'] = $value['damage_name'];
                    $info_data[$key]['price_program'] = $value['price_program'];
                    $info_data[$key]['damage_price'] = $value['damage_price'];
                    $info_data[$key]['damage_num'] = $value['damage_num'];
                    $info_data[$key]['damage_money'] = $value['damage_money'];
                    $info_data[$key]['damage_discount'] = $value['damage_discount'];
                    $info_data[$key]['damage_approved'] = $value['damage_approved'];
                    $info_data[$key]['damage_type'] = $condition['damage_type'];
                    if(isset($value['damage_remark'])) {
                        $info_data[$key]['damage_remark'] = $value['damage_remark'];
                    }
                    $info_data[$key]['create_user'] = getAdminInfo();
                    $info_data[$key]['create_time'] = time();
                }
            }
            if(!empty($info_data)) {
                db($this->info_db)->insertAll($info_data);
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

    /** 人伤添加
     *
     */
    public function addHuman($condition) {
        Db::startTrans();
        try{
            //人伤主表
            $data = [];
            if(isset($condition['human_fee'])) {
                $data['human_fee'] = $condition['human_fee'];
            }
            if(isset($condition['human_litigation'])) {
                $data['human_litigation'] = $condition['human_litigation'];
            }
            if(isset($condition['human_identification'])) {
                $data['human_identification'] = $condition['human_identification'];
            }
            if(isset($condition['human_appraisal'])) {
                $data['human_appraisal'] = $condition['human_appraisal'];
            }
            if(isset($condition['human_stay'])) {
                $data['human_stay'] = $condition['human_stay'];
            }
            if(isset($condition['human_road'])) {
                $data['human_road'] = $condition['human_road'];
            }
            if(isset($condition['human_fue'])) {
                $data['human_fue'] = $condition['human_fue'];
            }
            if(isset($condition['human_other'])) {
                $data['human_other'] = $condition['human_other'];
            }
            if(isset($condition['human_total'])) {
                $data['human_total'] = $condition['human_total'];
            }
            $info = db($this->human)->where(['related_id'=>$condition['report_id']])->select();
            if(empty($info)) {
                $data['related_id'] = $condition['report_id'];
                $data['human_type'] = $condition['human_type'];
                $data['create_time'] = time();
                $data['create_user'] = getAdminInfo();
                $related_id = db($this->human)->insert($data);
            }else{
                if(!empty($data)) {
                    db($this->human)->where(['related_id'=>$condition['report_id'],'human_type'=>$condition['human_type']])->update($data);
                }
                $related_id = $info[0]['id'];
            }
            //人伤姓名
            $human_info = [];
            foreach ($condition as $key => $value) {
                if(is_array($value)) {
                    $human_info['human_id'] = $related_id;
                    if(isset($value['overall_type'])) {
                        $human_info['overall_type'] = $value['overall_type'];
                    }
                    if(isset($value['injury_name'])) {
                        $human_info['injury_name'] = $value['injury_name'];
                    }
                    if(isset($value['injury_sex'])) {
                        $human_info['injury_sex'] = $value['injury_sex'];
                    }
                    if(isset($value['injury_age'])) {
                        $human_info['injury_age'] = $value['injury_age'];
                    }
                    if(isset($value['injury_domicile'])) {
                        $human_info['injury_domicile'] = $value['injury_domicile'];
                    }
                    if(isset($value['injury_medical'])) {
                        $human_info['injury_medical'] = $value['injury_medical'];
                    }
                    if(isset($value['injury_record'])) {
                        $human_info['injury_record'] = $value['injury_record'];
                    }
                    if(isset($value['injury_money'])) {
                        $human_info['injury_money'] = $value['injury_money'];
                    }
                    if(isset($value['injury_approved'])) {
                        $human_info['injury_approved'] = $value['injury_approved'];
                    }
                    if(isset($value['injury_remarks'])) {
                        $human_info['injury_remarks'] = $value['injury_remarks'];
                    }
                    $human_info['create_user'] = getAdminInfo();
                    $human_info['create_time'] = time();
                }
            }
            db($this->human_info)->insertAll($human_info);
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
}
