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
use think\Request;

class Endorsements extends Common {
    private $param;
    public function index(Request $request) {
        $this->param = $request->param();
        $res = Model('Endorsements')->getList($this->param);
        $this->Assign('list',$res);
        $this->fetch();
    }
    public function view(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['p_temporary_id']) || empty($this->param['p_temporary_id'])) {
            $this->error("批单号不可为空");
        }
        $this->param['endorsements.p_temporary_id'] = $this->param['p_temporary_id'];
        unset($this->param['p_temporary_id']);
        $res = Model('Endorsements')->getList($this->param);
        if($res->total() == 0) {
            $this->error("批单查询失败");
        }
        $this->Assign('list',$res[0]);
        $this->fetch();
    }
}
