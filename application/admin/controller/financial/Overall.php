<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\financial;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Overall extends Common {
    protected $power;
    private $pagesize = 10;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'review') {
            $this->power = 40;
        }
        else if($request->action() == 'reviewInfo') {
            $this->power = 74;
        }
        else if($request->action() == 'index') {
            $this->power = 41;
        }
        parent::__construct($request);
    }
    /** 财务审核（统筹单） 列表页
     * @param Request $request
     */
    public function review(Request $request) {
        $this->param = $request->param();
        if(isset($this->param['plate'])){
            $this->param['overall.plate'] = $this->param['plate'];
            unset($this->param['plate']);
        }
        if(isset($this->param['frame'])){
            $this->param['overall.frame'] = $this->param['frame'];
            unset($this->param['frame']);
        }
        if(isset($this->param['temporary_id'])){
            $this->param['overall.temporary_id'] = $this->param['temporary_id'];
            unset($this->param['temporary_id']);
        }
        if(isset($this->param['frame'])){
            $this->param['overall.frame'] = $this->param['frame'];
            unset($this->param['frame']);
        }
        $this->param['status'] = 5;
        $res = Model('Overall')->getList($this->param);
        $this->assign('list',$res);
        $this->fetch();
    }

    /** 财务审核（统筹单）详情页
     * @param Request $request
     */
    public function reviewInfo(Request $request) {
        $this->param = $request->param();
        if(isset($this->param['temporary_id']) && !empty($this->param['temporary_id'])){
            $this->param['overall.temporary_id'] = $this->param['temporary_id'];
            unset($this->param['temporary_id']);
        }else{
            $this->error("暂存单号为必须");
        }
        $this->param['status'] = 5;
        $res = Model('Overall')->getList($this->param);
        if($res->total() == 0) {
            $this->error("未查询到统筹单号");
        }
        $this->assign('list',$res->items()[0]);
        $this->fetch();
    }

    /** 财务审核查询
     *
     */
    public function index(Request $request) {
        $this->param = array_filter($request->param());
        $condition = [];
        if(isset($this->param['temporary_id']) && !empty($this->param['temporary_id'])){
            $condition['overall.temporary_id'] = $this->param['temporary_id'];
        }
        if(isset($this->param['overall_id']) && !empty($this->param['overall_id'])){
            $condition['overall.overall_id'] = $this->param['overall_id'];
        }
        if(isset($this->param['documents_id']) && !empty($this->param['documents_id'])){
            $condition['overall.documents_id'] = $this->param['documents_id'];
        }
        if(isset($this->param['participate_name']) && !empty($this->param['participate_name'])){
            $condition['overall.participate_name'] = $this->param['participate_name'];
        }
        if(isset($this->param['coordinated_name']) && !empty($this->param['coordinated_name'])){
            $condition['overall.coordinated_name'] = $this->param['coordinated_name'];
        }
        if(isset($this->param['attribution_user']) && !empty($this->param['attribution_user'])){
            $condition['overall.attribution_user'] = $this->param['attribution_user'];
        }
        if(isset($this->param['plate']) && !empty($this->param['plate'])){
            $condition['overall.plate'] = $this->param['plate'];
        }
        if(isset($this->param['frame']) && !empty($this->param['frame'])){
            $condition['overall.frame'] = $this->param['frame'];
        }

        if(isset($this->param['start_time'])) {
            $condition['overall.start_time'] = strtotime($this->param['start_time']);
        }
        if(isset($this->param['end_time'])) {
            $condition['overall.end_time'] = strtotime($this->param['end_time']);
        }
        if(isset($this->param['financial_review_time_start'])) {
            if(!empty($this->param['financial_review_time_end'])) {
                $condition['overall.financial_review_time'] = ['between',[strtotime($this->param['financial_review_time_start']),strtotime($this->param['financial_review_time_end'])]];
            }else{
                $condition['overall.financial_review_time'] = strtotime($this->param['financial_review_time_start']);
            }
        }
        $this->param['overall.status'] = ['in',[5,6]];
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $res = Model('Overall')->getList($condition,'*',$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('list',$res);

        //导出字段
        $res = Config::parse(APP_PATH.'/admin/config/overall.ini','ini');
        $this->assign('export',$res['export']);
        $this->assign('export_url','/admin/ajax/overall/overall/export');
        $this->assign('export_name','财务查询（统筹单）'.date('Ymd').'.csv');


        //归属人查询
        $users = Model('User')->getList(['salesman'=>1]);
        $this->assign('users',$users);
        $this->fetch();
    }
}
