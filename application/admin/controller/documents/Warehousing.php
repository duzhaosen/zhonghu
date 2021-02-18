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

class Warehousing extends Common {
    private $pagesize = 10;
    private $param;
    protected $power = 53;

    /** 单证入库
     * @param Request $request
     */
    public function warehousing(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/documents.ini','ini');
        $this->assign('type',$res['type']);
        //导出相关
        $this->assign('export',$res['add_export']);
        $this->assign('export_url','/admin/ajax/documents/warehousing/export');
        $this->assign('export_name','单证入库单'.date('Ymd').'.csv');

        $this->param = array_filter($request->param());
        $page = 1;
        $condition = [];
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        if(isset($this->param['documents_id'])) {
            $list = Model('Documents')->getListPage();
            if(!empty($list)) {
                foreach($list as $k =>$value) {
                    if($this->param['documents_id'] >= $value['s_num'] && $this->param['documents_id'] <= $value['e_num']) {
                        $condition['s_num'] = $value['s_num'];
                    }
                }
                if(!isset($condition['s_num'])) {
                    $condition['s_num'] = $this->param['documents_id'];
                }
            }
        }
        if(isset($this->param['add_id'])) {
            $condition['add_id'] = $this->param['add_id'];
        }
        if(isset($this->param['create_user'])) {
            $condition['create_user'] = $this->param['create_user'];
        }
        if(isset($this->param['create_time'])) {
            $condition['create_time'] = strtotime($this->param['create_time']);
        }
        $list = Model('Documents')->getList($condition,$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('list',$list);
        $this->fetch();
    }
}
