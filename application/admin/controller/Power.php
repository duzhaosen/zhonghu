<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/25
 * @createTime: 10:47
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller;

use think\Controller;

class Power extends Controller
{
    protected $power=0;
    public function nopower() {
        $this->fetch();
    }
}