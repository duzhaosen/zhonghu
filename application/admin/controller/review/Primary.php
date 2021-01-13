<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/31
 * @createTime: 11:54
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */

namespace app\admin\controller\Review;

use app\admin\controller\Common;
use think\Request;

class Primary extends Common {
    private $param;
    public function review(Request $request) {
        $this->param = $request->param();
        if(isset($this->param['plate'])){
            $this->param['overall.plate'] = $this->param['plate'];
            unset($this->param['plate']);
        }
        if(isset($this->param['frame'])){
            $this->param['overall.frame'] = $this->param['frame'];
            unset($this->param['frame']);
        }
        if(isset($this->param['temporary_id'])){
            $this->param['overall.temporary_id'] = $this->param['temporary_id'];
            unset($this->param['temporary_id']);
        }
        if(isset($this->param['frame'])){
            $this->param['overall.frame'] = $this->param['frame'];
            unset($this->param['frame']);
        }
        $this->param['status'] = 3;
        $res = Model('Overall')->getList($this->param);
        $this->assign('list',$res);
        $this->fetch();
    }
    public function info(Request $request) {
        $this->param = $request->param();
        if(isset($this->param['temporary_id']) && !empty($this->param['temporary_id'])){
            $this->param['overall.temporary_id'] = $this->param['temporary_id'];
            unset($this->param['temporary_id']);
        }else{
            $this->error("暂存单号为必须");
        }
        $this->param['status'] = 3;
        $res = Model('Overall')->getList($this->param);
        if($res->total() == 0) {
            $this->error("未查询到统筹单号");
        }
        $this->assign('list',$res->items()[0]);
        $this->fetch();
    }
}
