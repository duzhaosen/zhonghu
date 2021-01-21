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
use think\Model;
use think\Request;
use think\Session;

class Carcode extends Common {
    protected $power;
    private $pagesize = 10;
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }



    /**查询验车码
     * @return string
     */
    public function index(Request $request) {
        $this->param = $request->param();
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $list = Model('Carcode')->getList([],$this->pagesize,['page'=>$page,'query'=>[]]);
        $this->assign('list',$list);
        return $this->fetch();
    }


}
