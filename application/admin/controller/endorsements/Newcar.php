<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\endorsements;

use app\admin\controller\Common;

class Newcar extends Common {
    protected $power = 45;
    public function index() {
        $this->fetch();
    }
}
