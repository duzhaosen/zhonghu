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

class Documents extends Common {
    public function add() {
        $this->fetch();
    }
    public function issued() {
        $this->fetch();
    }
    public function recycle() {
        $this->fetch();
    }
}