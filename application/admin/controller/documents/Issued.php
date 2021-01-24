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

class Issued extends Common {
    private $pagesize = 10;
    private $param;
    public function issued(Request $request) {
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
        //导出相关
        $this->assign('export',$res['issued_export']);
        $this->assign('export_url','/admin/ajax/documents/issued/export');
        $this->assign('export_name','单证下发单'.date('Ymd').'.csv');


        $condition = [];
        if(isset($this->param['documents_id'])) {
            $list = Model('Documents')->getIssuedListPage();
            if(!empty($list)) {
                foreach($list as $k =>$value) {
                    if($this->param['documents_id'] >= $value['issued_s_num'] && $this->param['documents_id'] <= $value['issued_e_num']) {
                        $condition['issued_s_num'] = $value['issued_s_num'];
                    }
                }
                if(!isset($condition['s_num'])) {
                    $condition['issued_s_num'] = $this->param['documents_id'];
                }
            }
        }
        if(isset($this->param['issued_id'])) {
            $condition['issued_id'] = $this->param['issued_id'];
        }
        if(isset($this->param['issued_user'])) {
            $condition['issued_user'] = $this->param['issued_user'];
        }
        if(isset($this->param['issued_create_user'])) {
            $condition['issued_create_user'] = $this->param['issued_create_user'];
        }
        if(isset($this->param['create_time'])) {
            $condition['issued_create_time'] = strtotime($this->param['issued_create_time']);
        }
        if(isset($this->param['issued_structure'])) {
            $condition['issued_structure'] = $this->param['issued_structure'];
        }

        //查询单证下发
        $page = 1;
        if(isset($this->param['page']) && !empty($this->param['page'])) {
            $page = $this->param['page'];
        }
        $result = Model('Documents')->getIssuedList($condition,$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('list',$result);

        //查询组织

        //组织
        if( isset($this->param['issued_structure'])) {
            $structureIds = getTreeId([], 'Structure', $this->param['issued_structure'], 'getList');
        }
        $this->assign('SearchstructureList', json_encode(getTree($structureList, $structureIds)));

        $this->fetch();
    }
}
