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

class Report extends Model {
    private $db = 'zh_report';
    private $logs_db = 'zh_report_logs';
    private $compensation_db = 'zh_compensation';

    /** 报案中心查询
     * @param $condition
     */
    public function getList($condition,$page=10,$paginate=[]) {
        $comment = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $res = db($this->db)->where($condition)->alias('report')->order('report_id desc')
            ->paginate($page,false,$paginate)->each(function($item,$key) use($comment) {
            $item['accident_situationStr'] = $comment['accident_situation'][$item['accident_situation']];
            $overall = Model('Overall')->getList(['overall_id'=>$item['overall_id']]);
            if(!empty($overall[0])) {
                $item['financial_review_time'] = $overall[0]['financial_review_time'];
            }else{
                $item['financial_review_time'] ='';
            }
            $item['survey_agencyStr'] = $comment['survey_agency'][$item['survey_agency']];
            $item['survey_userStr'] = $comment['survey_userstr'][$item['survey_user']];
            $item['report_typeStr'] = $comment['report_type'][$item['report_type']];
            $item['car_damage_typeStr'] = $comment['car_damage_type'][$item['car_damage_type']];
            $item['human_injury_typeStr'] = $comment['human_injury_type'][$item['human_injury_type']];
            $item['attach'] = Model('Upload')->getList(['related_id'=>$item['report_id']]);
            return $item;
        });
        return $res;
    }

    /** 报案单添加
     *
     */
    public function addReport($condition) {
        $condition['create_user'] = getAdminInfo();
        $condition['create_time'] = time();
        $condition['report_code'] = str_replace('A','C',$condition['report_id']);
        return db($this->db)->insert($condition);
    }

    /** 报案单修改
     *
     */
    public function editReport($where=[],$condition=[]) {
        if(empty($where)) {
            return false;
        }
        if(isset($condition['report_id'])) {
            unset($condition['report_id']);
        }
        $condition['op_user'] = getAdminInfo();
        $condition['op_time'] = time();
        return db($this->db)->where($where)->update($condition);
    }

    /** 生成报案ID
     *
     */
    public function generateReportId() {
        $result = 'BA'.date('Ym');
        $condition = array();
        $condition['report_id'] = ['like',$result."%"];
        $res = db($this->db)->where($condition)->order('id','desc')->select();
        if(empty($res)) {
            return $result.'0001';
        }
        $str = substr($res[0]['report_id'],2,10) + 1;
        return 'BA'.$str;
    }

    /** 提交审核查勘中心
     *
     */
    public function review($condition) {
        Db::startTrans();
        try{
            //查勘审核
            $data = [];
            $data['report_type'] = $condition['report_type'];
            db($this->db)->where(['report_id'=>$condition['report_id']])->update($data);
            //审核日志
            $logs = [];
            $logs['create_user'] = getAdminInfo();
            $logs['create_time'] = time();
            $logs['report_id'] = $condition['report_id'];
            if(isset($condition['remarks'])) {
                $logs['remarks'] = $condition['remarks'];
            }
            if(isset($condition['log_type'])) {
                $logs['log_type'] = $condition['log_type'];
            }
            db($this->logs_db)->insert($logs);
            //如果是补偿款信息审核，则修改补偿款信息财务付款时间
            if($condition['report_type'] == 6) {
                $res = db($this->compensation_db)->where(['related_id'=>$condition['report_id'],'other_type'=>1])->select();
                if(!empty($res)) {
                    foreach ($res as $key => $value) {
                        if(empty($value['finance_payment'])) {
                            db($this->compensation_db)->where(['id'=>$value['id']])->update(['finance_payment'=>time()]);
                        }
                    }
                }
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

    /** 查勘中心审核详情
     *
     */
    public function getLogs($condition) {
        $res = db($this->logs_db)->where($condition)->order('id','desc')->select();
        if(!empty($res)) {
            $comment = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
            foreach($res as $key => $value) {
                $res[$key]['remarks'] = $comment['log_type'][$value['status']].":".$value['remarks'];
            }
        }
        return $res;
    }
}
