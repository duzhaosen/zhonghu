<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/16
 * @createTime: 16:43
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\System;

use app\admin\controller\Common;
use think\Request;

class Logs extends Common {
    protected $power;
    private $pagesize = 10;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'index') {
            $this->power = 68;
        }
        parent::__construct($request);
    }



    /**查询菜单页
     * @return string
     */
    public function index(Request $request) {
        $this->param = $request->param();
        $condition = [];
        if(isset($this->param['log_type']) && $this->param['log_type'] != -1) {
            $condition['log_type'] = $this->param['log_type'];
        }
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $list = Model('Logs')->getList($condition,'*',$this->pagesize,['page'=>$page,'query'=>$this->param]);
        $this->assign('list',$list);
        return $this->fetch();
    }


}
