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

    /** 报案中心查询
     * @param $condition
     */
    public function getList($condition,$page=10,$paginate=[]) {
        $comment = Config::parse(APP_PATH.'/admin/config/report.ini','ini');
        $res = db($this->db)->where($condition)->alias('report')
            ->paginate($page,false,$paginate)->each(function($item,$key) use($comment) {
            $item['accident_situationStr'] = $comment['accident_situation'][$item['accident_situation']];
            $overall = Model('Overall')->getList(['overall_id'=>$item['overall_id']]);
            $item['financial_review_time'] = $overall[0]['financial_review_time'];
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
        }else{
            $str = substr($res[0]['report_id'],2,10) + 1;
            return 'BA'.$str;
        }
        return false;
    }
}
