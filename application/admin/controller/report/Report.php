<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\report;

use app\admin\controller\Common;
use think\Config;
use think\Request;

class Report extends Common {
    private $param;
    protected $power = 65;
    private $pagesize = 20;
    public function index(Request $request) {
        $ini = Config::parse(APP_PATH.'/admin/config/performance.ini','ini');
        $this->assign('type',$ini['type']);

        $this->param = $request->param();
        $condition = [];
        if(isset($this->param['start_time'])) {
            if(!empty($this->param['end_time'])) {
                $condition['overall.create_time'] = ['between',[strtotime($this->param['start_time']),strtotime($this->param['create_time'])]];
            }else{
                $condition['overall.create_time'] = strtotime($this->param['start_time']);
            }
        }
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $this->assign('type',isset($this->param['type'])?$this->param['type']:1);
        $list = Model('Overall')->getList($condition,'*',$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('list',$list);
        $this->fetch();
    }
}
