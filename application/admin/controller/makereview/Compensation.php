<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\makereview;

use app\admin\controller\Common;
use think\Config;

class Compensation extends Common {
    public function adjustment() {
        $this->fetch();
    }
    public function index() {
        $this->fetch();
    }
    public function review() {
        $this->fetch();
    }
}