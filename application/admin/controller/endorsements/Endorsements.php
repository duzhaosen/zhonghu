<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\endorsements;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Endorsements extends Common {
    private $param;
    private $pagesize = 10;
    public function index(Request $request) {
        //导出字段
        $res = Config::parse(APP_PATH.'/admin/config/endorsements.ini','ini');
        $this->assign('export',$res['export']);
        $this->assign('export_url','/admin/ajax/endorsements/endorsements/export');
        $this->assign('export_name','批单'.date('Ymd').'.csv');

        $this->param = $request->param();

        $condition = [];
        if(isset($this->param['p_temporary_id']) && !empty($this->param['p_temporary_id'])){
            $condition['endorsements.p_temporary_id'] = $this->param['p_temporary_id'];
        }
        if(isset($this->param['endorsements_id']) && !empty($this->param['endorsements_id'])){
            $condition['endorsements.endorsements_id'] = $this->param['endorsements_id'];
        }
        if(isset($this->param['overall_id']) && !empty($this->param['overall_id'])){
            $condition['endorsements.overall_id'] = $this->param['overall_id'];
        }
        if(isset($this->param['documents_id']) && !empty($this->param['documents_id'])){
            $condition['endorsements.documents_id'] = $this->param['documents_id'];
        }
        if(isset($this->param['participate_name']) && !empty($this->param['participate_name'])){
            $condition['endorsements.participate_name'] = $this->param['participate_name'];
        }
        if(isset($this->param['coordinated_name']) && !empty($this->param['coordinated_name'])){
            $condition['coordinator.coordinated_name'] = $this->param['coordinated_name'];
        }
        if(isset($this->param['plate']) && !empty($this->param['plate'])){
            $condition['endorsements.plate'] = $this->param['plate'];
        }
        if(isset($this->param['frame']) && !empty($this->param['frame'])){
            $condition['endorsements.frame'] = $this->param['frame'];
        }
        if(isset($this->param['endorsements_time_start']) && !empty($this->param['endorsements_time_start'])) {
            if(!empty($this->param['endorsements_time_end'])) {
                $condition['endorsements.endorsements_time'] = ['between',[strtotime($this->param['endorsements_time_start']),strtotime($this->param['endorsements_time_end'])]];
            }else{
                $condition['endorsements.endorsements_time'] = strtotime($this->param['endorsements_time_start']);
            }
        }
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $res = Model('Endorsements')->getList($condition,'*',$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->Assign('list',$res);
        $this->fetch();
    }
    public function view(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['p_temporary_id']) || empty($this->param['p_temporary_id'])) {
            $this->error("批单号不可为空");
        }
        $this->param['endorsements.p_temporary_id'] = $this->param['p_temporary_id'];
        unset($this->param['p_temporary_id']);
        $res = Model('Endorsements')->getList($this->param);
        if($res->total() == 0) {
            $this->error("批单查询失败");
        }
        $this->Assign('list',$res[0]);
        $this->fetch();
    }
}
