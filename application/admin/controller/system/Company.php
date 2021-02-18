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

class Company extends Common {
    protected $power;
    public function __construct(Request $request = null)
    {
        if($request->action() == 'index') {
            $this->power = 92;
        }
        else if($request->action() == 'addCompany') {
            $this->power = 93;
        }
        else if($request->action() == 'editCompany') {
            $this->power = 94;
        }
        parent::__construct($request);
    }



    /** 查询公司页
     * @return string
     */
    public function index(Request $request) {
        $this->param = $request->param();
        $condition = [];
        $list = Model('Company')->getList($condition,'*');
        $this->assign('list',$list);
        return $this->fetch();
    }

    /** 添加公司页
     * @return string
     */
    public function addCompany() {
        return $this->fetch();
    }

    /** 编辑公司页
     * @return string
     */
    public function editCompany(Request $request) {
        $id = $request->param('id');
        if($id == false) {
            $this->error("公司编码不可为空");
        }
        $res = Model('Company')->getList(['id'=>$id]);
        if(empty($res)) {
            $this->error("公司编码不正确");
        }
        $this->assign('list',$res[0]);
        return $this->fetch();
    }


}
