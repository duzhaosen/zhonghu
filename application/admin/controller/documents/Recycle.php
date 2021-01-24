<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\documents;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Recycle extends Common {
    private $pagesize = 10;
    private $param;
    public function recycle(Request $request) {
        $this->param = array_filter($request->param());
        //归属人查询
        $users = Model('User')->getList(['salesman'=>1]);
        $this->assign('users',$users);
        //组织
        $structureIds = [];
        $structureList = Model('Structure')->getList([]);
        $this->assign('structureList', json_encode(getTree($structureList, [])));
        //类型
        $res = Config::parse(APP_PATH.'/admin/config/documents.ini','ini');
        $this->assign('type',$res['type']);
        //状态
        $this->assign('fettle',$res['fettle']);
        //导出相关
        $this->assign('export',$res['recycle_export']);
        $this->assign('export_url','/admin/ajax/documents/recycle/export');
        $this->assign('export_name','单证回收单'.date('Ymd').'.csv');


        $condition = [];
        if(isset($this->param['documents_id'])) {
            $condition['recycle.documents_id'] = $this->param['documents_id'];
        }
        if(isset($this->param['recycle_structure'])) {
            $condition['recycle.recycle_structure'] = $this->param['recycle_structure'];
        }
        if(isset($this->param['recycle_user'])) {
            $condition['recycle.recycle_user'] = $this->param['recycle_user'];
        }
        if(isset($this->param['recycle_create_time'])) {
            $condition['recycle.recycle_create_time'] = $this->param['recycle_create_time'];
        }
        if(isset($this->param['recycle_fettle'])) {
            $condition['recycle.recycle_fettle'] = $this->param['recycle_fettle'];
        }
        if(isset($this->param['recycle_create_user'])) {
            $condition['recycle.recycle_create_user'] = $this->param['recycle_create_user'];
        }

        //查询单证下发
        $page = 1;
        if(isset($this->param['page']) && !empty($this->param['page'])) {
            $page = $this->param['page'];
        }
        $result = Model('Documents')->getRecycleList($condition,$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('list',$result);

        //组织
        if( isset($this->param['issued_structure'])) {
            $structureIds = getTreeId([], 'Structure', $this->param['issued_structure'], 'getList');
        }
        $this->assign('SearchstructureList', json_encode(getTree($structureList, $structureIds)));
        $this->fetch();
    }
}
