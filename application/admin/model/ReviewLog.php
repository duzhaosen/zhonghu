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

class ReviewLog extends Model {
    private $db = 'zh_review_log';
    private $overall_db = 'zh_overall';
    private $endorsements_db = 'zh_endorsements';

    /** 添加审核情况
     * @param $condition
     */
    public function addReviewLog($condition) {
        $condition['create_time'] = time();
        $condition['create_user'] = getAdminInfo();
        return db($this->db)->insert($condition);
    }

    /** 查询
     * @param $condition
     */
    public function getList($condition,$field='*') {
        $res = db($this->db)->where($condition)->field($field)->select();
        if(!empty($res)) {
            $type = Config::parse(APP_PATH.'/admin/config/review.ini','ini');
            foreach ($res as $key => $value) {
                $res[$key]['typeStr'] = $type['type'][$value['type']];
            }
        }
        return $res;
    }

    /** 审核
     *
     */
    public function review($condition) {
        //统筹单
        if($condition['type'] == 1) {
            Db::startTrans();
            try {
                $overall = array();
                $overall['status'] = $condition['status'];
                $overall['op_user'] = getAdminInfo();
                $overall['op_time'] = time();
                db($this->overall_db)->where(['temporary_id'=>$condition['related_id']])->update($overall);
                $review = array();
                $review['related_id'] = $condition['related_id'];
                $review['create_time'] = time();
                $review['create_user'] = getAdminInfo();
                $review['type'] = $condition['log_type'];
                db($this->db)->insert($review);
                // 提交事务
                Db::commit();
            } catch (\Exception $e) {
                // 回滚事务
                Db::rollback();
                return false;
            }
            return true;
            //批单
        }else if($condition['type'] == 2) {
            Db::startTrans();
            try {
                $endorsements = array();
                $endorsements['status'] = $condition['status'];
                $endorsements['op_user'] = getAdminInfo();
                $endorsements['op_time'] = time();
                if($condition['status'] == 4) {
                    $endorsements['financial_review_user'] = getAdminInfo();
                    $endorsements['financial_review_time'] = time();
                }
                db($this->endorsements_db)->where(['p_temporary_id'=>$condition['related_id']])->update($endorsements);
                $review = array();
                $review['related_id'] = $condition['related_id'];
                $review['create_time'] = time();
                $review['create_user'] = getAdminInfo();
                $review['type'] = $condition['log_type'];
                db($this->db)->insert($review);
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
}
