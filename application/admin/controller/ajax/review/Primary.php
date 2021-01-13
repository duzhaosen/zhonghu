<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\Review;

use think\Controller;
use think\Request;

class Primary extends Controller {
    private $param;
    /** 初级审核 返回修改
     *
     */
    public function review(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['related_id']) || empty($this->param['related_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '关联ID不可为空';
            return json($data);
        }
        $res = Model('ReviewLog')->review($this->param);
        if($res == false) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '审核失败';
            return json($data);
        }
        $data = array();
        $data['code'] = 100000;
        $data['msg'] = '审核成功';
        return json($data);
    }
}
