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

class Pass extends Common {
    protected $power;
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }



    /**查询菜单页
     * @return string
     */
    public function edit() {
        return $this->fetch();
    }


}
