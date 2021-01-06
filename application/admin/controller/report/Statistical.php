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

class Statistical extends Common {
    public function analysis() {
        $this->fetch();
    }
}