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
    private $compensation_db = 'zh_compensation';
    private $survey_db = 'zh_survey';
    private $report_db = 'zh_report';
    private $loss_db = 'zh_loss';

    /** 查询查勘录入信息
     *
     */
    public function getSurvey($condition) {
        $result = db($this->survey_db)->where($condition)->select();
        if(!empty($result)) {
            foreach($result as $key => $value) {
                $result[$key]['report_time'] = date('Y-m-d H:i:s',$value['report_time']);
            }
        }
        return $result;
    }

    /** 查勘录入
     *
     */
    public function addSurvey($condition) {
        $condition['report_time'] = strtotime($condition['report_time']);
        $condition['out_danger_time'] = strtotime($condition['out_danger_time']);
        $condition['create_user'] = getAdminInfo();
        $condition['create_time'] = time();
        $res = db($this->survey_db)->where(['report_id'=>$condition['report_id']])->select();
        if(!empty($res)) {
           return db($this->survey_db)->where(['report_id'=>$condition['report_id']])->update($condition);
        }
        return db($this->survey_db)->insert($condition);
    }
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
        $res =  db($this->info_db)->where($condition)->select();
        if(!empty($res)) {
            $comment = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
            foreach($res as $key => $value) {
                if($value['damage_overall']) {
                    $res[$key]['damage_overallStr'] = $comment['damage_overall_type'][$value['damage_overall']];
                }else{
                    $res[$key]['damage_overallStr'] = '';
                }
                $res[$key]['price_programStr'] = $comment['price_program'][$value['price_program']];
            }
        }
        return $res;
    }

    /** 查询三者车损详情
     *
     */
    public function getAccessoriesInfo($condition) {
        $result = db($this->info_db)->where($condition)->select();
        $data = [];
        $data['info'] = db($this->db)->where(['id'=>$condition['related_id']])->select();
        if(!empty($result)) {
            foreach ($result as $key => $value) {
                $data[$value['damage_type']][] = $value;
            }
        }
        return $data;
    }
    /** 本车车损添加
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
                $data['this_car'] = 1;
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
            if(isset($condition['damage_type'])) {
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
            }
            //更新报案表人伤信息录入
            db($this->report_db)->where(['report_id'=>$condition['report_id']])->update(['car_damage_type'=>2]);
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

    /** 三者车损添加
     *
     */
    public function addOtherDamage($condition) {
        print_r($condition);die;
        Db::startTrans();
        try{
            //车损
            foreach ($condition as $key => $value) {
                if(is_array($value)) {
                    //主要车辆信息
                    if(isset($value['damage_plate'])) {
                        $data['damage_plate'] = $value['damage_plate'];
                        $data['damage_brand'] = $value['damage_brand'];
                        $data['damage_model'] = $value['damage_model'];
                        $data['damage_year'] = $value['damage_year'];
                        $data['damage_frame'] = $value['damage_frame'];
                        $data['damage_engine'] = $value['damage_engine'];
                        $data['damage_driver'] = $value['damage_driver'];
                        $data['damage_sex'] = $value['damage_sex'];
                        $data['damage_phone'] = $value['damage_phone'];
                        $data['damage_repairer'] = $value['damage_repairer'];
                        $data['this_car'] = 2;
                    }
                    //配件
                    if(isset($condition['accessories_money'])) {
                        $data['accessories_money'] = $value['accessories_money'];
                        $data['accessories_approved'] = $value['accessories_approved'];
                        $data['accessories_total'] = $value['accessories_total'];
                        $data['accessories_residual'] = $value['accessories_residual'];
                        $data['accessories_all'] = $value['accessories_all'];
                    }
                    //工时
                    if(isset($condition['work_money'])) {
                        $data['work_money'] = $value['work_money'];
                        $data['work_approved'] = $value['work_approved'];
                        $data['work_rescue'] = $value['work_rescue'];
                        $data['work_all'] = $value['work_all'];
                        $data['work_total'] = $value['work_total'];
                    }
                    //财务
                    if(isset($condition['finance_money'])) {
                        $data['finance_money'] = $value['finance_money'];
                        $data['finance_approved'] = $value['finance_approved'];
                        $data['finance_total'] = $value['finance_total'];
                        $data['finance_residual'] = $value['finance_residual'];
                        $data['finance_all'] = $value['finance_all'];
                        $data['finance_litigation'] = $value['finance_litigation'];
                        $data['finance_identification'] = $value['finance_identification'];
                        $data['finance_appraisal'] = $value['finance_appraisal'];
                        $data['finance_stay'] = $value['finance_stay'];
                        $data['finance_road'] = $value['finance_road'];
                        $data['finance_fuel'] = $value['finance_fuel'];
                        $data['finance_other'] = $value['finance_other'];
                        $data['finance_summary'] = $value['finance_summary'];
                        if(isset($value['finance_remark'])) {
                            $data['finance_remark'] = $value['finance_remark'];
                        }
                    }
                    if(!empty($value['id'])) {
                        db($this->db)->where(['id'=>$value['id']])->update($data);
                        $ids[] = $value['id'];
                    }else{
                        $ids[] = db($this->db)->insert($data);
                    }
                }
            }
            $result = db($this->db)->where(['related_id'=>$condition['report_id'],'this_car'=>2])->select();
            $old_ids = [];
            foreach($result as $key => $value) {
                $old_ids[] = $value['id'];
            }
            $id = array_diff($old_ids,$ids);
            if(!empty($id)) {
                db($this->db)->where('id','in',array_diff($old_ids,$ids))->delete();
            }
            //更新报案表人伤信息录入
            db($this->report_db)->where(['report_id'=>$condition['report_id']])->update(['car_damage_type'=>2]);
            // 提交事务
            Db::commit();
            return $old_ids;
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
            $info = db($this->human)->where(['related_id'=>$condition['related_id'],'human_type'=>$condition['human_type']])->select();
            if(empty($info)) {
                $data['related_id'] = $condition['related_id'];
                $data['human_type'] = $condition['human_type'];
                $data['create_time'] = time();
                $data['create_user'] = getAdminInfo();
                $related_id = db($this->human)->insert($data);
            }else{
                if(!empty($data)) {
                    db($this->human)->where(['related_id'=>$condition['related_id'],'human_type'=>$condition['human_type']])->update($data);
                }
                $related_id = $info[0]['id'];
            }
            //人伤姓名
            $ids = [];
            foreach ($condition as $key => $value) {
                if(is_array($value)) {
                    $human_info['human_id'] = $related_id;
                    if(isset($value['id'])) {
                        $human_info['id'] = $value['id'];
                    }
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
                    $human_info = array_filter($human_info);
                    if(isset($human_info['id'])) {
                        db($this->human_info)->where(['id'=>$value['id']])->update($human_info);
                        $id = $value['id'];
                    }else{
                        $id = db($this->human_info)->insert($human_info);
                    }
                    $ids[] = $id;
                }
            }

            //判断是否有删除数据
            $result = db($this->human_info)->where(['human_id'=>$related_id])->select();
            $old_ids = [];
            $human_money = 0;
            foreach ($result as $key => $value) {
                $old_ids[] = $value['id'];
                $human_money += $value['injury_money'];
            }
            db($this->human_info)->where('id','in',array_diff($old_ids,$ids))->delete();
            //更新价格
            $price_data = [];
            $price_data['human_money'] = $human_money;
            $price_data['human_approved'] = $human_money;
            $price_data['human_fee'] = $human_money;
            db($this->human)->where(['related_id'=>$condition['related_id'],'human_type'=>$condition['human_type']])->update($price_data);
            //更新报案表人伤信息录入
            db($this->report_db)->where(['report_id'=>$condition['related_id']])->update(['human_injury_type'=>2]);
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

    /** 人伤查询
     *
     */
    public function getHuamn($condition) {
        $result_info = db($this->human_info)->where(['id'=>$condition['related_id']])->select();
        if(empty($result_info)) {
            return false;
        }
        $result = db($this->human_price)->where(['related_id'=>$condition['related_id']])->select();
        $result['injury_money'] = $result_info[0]['injury_money'];
        $result['injury_approved'] = $result_info[0]['injury_approved'];
        if(!empty($result)) {
            $comment = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
            foreach($result as $key => $value) {
                if(is_array($value)) {
                    if ($value['overall_type']) {
                        $result[$key]['overall_typeStr'] = $comment['human_overall_type'][$value['overall_type']];
                    } else {
                        $result[$key]['overall_typeStr'] = '';
                    }
                    if ($value['price_type']) {
                        $result[$key]['price_typeStr'] = $comment['price_type'][$value['price_type']];
                    } else {
                        $result[$key]['price_typeStr'] = '';
                    }
                }
            }
        }
        return $result;
    }

    /** 人伤姓名
     *
     */
    public function getHuamnInfo($condition) {
        $result_info = db($this->human_info)->where($condition)->select();
        if(empty($result_info)) {
            return false;
        }
        $comment = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        foreach ($result_info as $key => $value) {
            if($value['injury_sex']) {
                $result_info[$key]['injury_sexStr'] = $comment['survey_sex'][$value['injury_sex']];
            }else{
                $result_info[$key]['injury_sexStr'] = '';
            }
        }
        return $result_info;
    }
    /** 查询人伤主表+姓名表
     *
     */
    public function getHumanList($condition) {
        $result = db($this->human)->where($condition)->select();
        if(!empty($result)) {
            foreach($result as $key => $value) {
                $result[$key]['info'] = db($this->human_info)->where(['human_id'=>$value['id']])->select();
            }
        }
        return $result;
    }

    /** 人伤价格添加
     *
     */
    public function addHumanPrice($condition) {
        Db::startTrans();
        try{
            //删除已有人伤价格
            db($this->human_price)->where(['related_id'=>$condition['related_id']])->delete();
            //添加人伤价格
            $data = [];
            foreach($condition as $key => $value) {
                if(is_array($value)) {
                    $data[$key]['related_id'] = $condition['related_id'];
                    $data[$key]['overall_type'] = $value['overall_type'];
                    $data[$key]['price_type'] = $value['price_type'];
                    $data[$key]['price'] = $value['price'];
                    $data[$key]['num'] = $value['num'];
                    $data[$key]['price_total'] = $value['price_total'];
                    $data[$key]['price_approved'] = $value['price_approved'];
                    $data[$key]['discount'] = $value['discount'];
                    $data[$key]['remarks'] = $value['remarks'];
                    $data[$key]['create_user'] = getAdminInfo();
                    $data[$key]['create_time'] = time();
                }
            }
            db($this->human_price)->insertAll($data);
            //修改病情
            $human_data = array();
            if(isset($condition['injury_condition'])) {
                $human_data['injury_condition'] = $condition['injury_condition'];
            }
            if(isset($condition['injury_hospitalized'])) {
                $human_data['injury_hospitalized'] = $condition['injury_hospitalized'];
            }
            if(isset($condition['injury_day'])) {
                $human_data['injury_day'] = $condition['injury_day'];
            }
            if(isset($condition['injury_disability'])) {
                $human_data['injury_disability'] = $condition['injury_disability'];
            }
            if(isset($condition['human_money'])){
                $human_data['injury_money'] = $condition['human_money'];
            }
            if(isset($condition['human_approved'])){
                $human_data['injury_approved'] = $condition['human_approved'];
            }
            if(!empty($human_data)) {
                $human_data = array_filter($human_data);
                db($this->human_info)->where(['id'=>$condition['related_id']])->update($human_data);
            }
            //更新报案表人伤信息录入
            $info = db($this->human_info)->where(['id'=>$condition['related_id']])->select();
            //计算人伤主表金额
            $money = 0;
            $approval = 0;
            foreach($info as $key => $value) {
                $money += $value['injury_money'];
                $approval += $value['injury_approved'];
            }
            db($this->human)->where(['id'=>$info[0]['human_id']])->update(['human_money'=>$money,'human_approved'=>$approval]);

            $info = db($this->human)->where(['id'=>$info[0]['human_id']])->select();
            db($this->report_db)->where(['report_id'=>$info[0]['related_id']])->update(['human_injury_type'=>2]);
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

    /** 补偿款信息添加
     * @param $condition
     */
    public function addCompensation($condition) {
        //添加人伤价格
        $data = [];
        db($this->compensation_db)->where(['related_id'=>$condition['related_id'],'other_type'=>$condition['other_type']])->delete();
        foreach($condition as $key => $value) {
            if(is_array($value)) {
                $data[$key]['payee'] = $value['payee'];
                $data[$key]['license_type'] = $value['license_type'];
                $data[$key]['license_number'] = $value['license_number'];
                $data[$key]['compensation_phone'] = $value['compensation_phone'];
                $data[$key]['compensation_relationship'] = $value['compensation_relationship'];
                $data[$key]['compensation_bank'] = $value['compensation_bank'];
                $data[$key]['compensation_account'] = $value['compensation_account'];
                $data[$key]['compensation_money'] = $value['compensation_money'];
                $data[$key]['other_type'] = $condition['other_type'];
                $data[$key]['related_id'] = $condition['related_id'];
                $data[$key]['create_user'] = getAdminInfo();
                $data[$key]['create_time'] = time();
            }
        }
        return db($this->compensation_db)->insertAll($data);
    }

    /**  补偿款信息查询
     *
     */
    public function getCompensationList($condition) {
        return db($this->compensation_db)->where($condition)->select();
    }

    /** 核算数据
     *
     */
    public function getLoss($condition) {
        return db($this->loss_db)->where($condition)->select();
    }

    /** 添加核算数据
     *
     */
    public function addLoss($condition) {
        Db::startTrans();
        try{
            $data = [];
            db($this->loss_db)->where(['related_id'=>$condition['related_id']])->delete();
            foreach ($condition as $key => $value) {
                if(is_array($value) && $value['type_total']) {
                    $value = array_filter($value);
                    $data[$key] = $value;
                    $data[$key]['type'] = $key+1;
                    $data[$key]['create_time'] = time();
                    $data[$key]['create_user'] = getAdminInfo();
                    $data[$key]['other_price'] = $condition['other_price'];
                    $data[$key]['total'] = $condition['total'];
                    $data[$key]['other_total'] = $condition['other_total'];
                    $data[$key]['price_all'] = $condition['price_all'];
                    $data[$key]['related_id'] = $condition['related_id'];
                }
            }
            db($this->loss_db)->insertAll($data);
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
