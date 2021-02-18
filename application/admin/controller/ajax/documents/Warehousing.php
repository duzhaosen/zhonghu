<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax\documents;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Warehousing extends Common {
    private $param;

    /** 单证入库
     * $request array()
     */
    public function addDocuments(Request $request) {
        $res = Config::parse(APP_PATH.'/admin/config/formValidator/addDocuments.ini','ini');
        foreach($res['adddocuments'] as $key => $value) {
            $request->param($key) ? $this->param[$key] = $request->param($key) : "";
            if($value && empty($this->param[$key])) {
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = $res['adddocumentscomment'][$key].'不可为空';
                return json($data);
            }
        }
        //格式化数据
        $res = Model('Documents')->addDocuments($this->param);
        $result = $res == true? '成功': '失败';
        writLog("添加单证入库".http_build_query($this->param)."结果：".$result,ADD_LOGS,53);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '单证入库成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '单证入库失败';
        return json($data);
    }

    /** 单证删除
     *
     */
    public function delDocuments(Request $request) {
        $this->param = $request->param();
        if(!isset($this->param['add_id']) || empty($this->param['add_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '单证入库批次号不可为空';
            return json($data);
        }
        $res = Model('Documents')->delDocuments($this->param);
        $result = $res == true? '成功': '失败';
        writLog("删除单证".http_build_query($this->param)."结果：".$result,DEL_LOGS,53);
        if($res == true) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '删除成功';
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '删除失败';
        return json($data);
    }

    /** 查询单证使用详情
     * @param Request $request
     * @return \think\response\Json
     */
    public function getInfo(Request $request) {
        $this->param = array_filter($request->param());
        if(!isset($this->param['related_id'])) {
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '关联批次号为空';
            return json($data);
        }
        $result = Model('Documents')->getInfoList($this->param);
        if(!empty($result)) {
            $data = array();
            $data['code'] = 100000;
            $html = '<thead>
                     <tr>
                        <td>单证号</td>
                        <td>是否使用</td>
                        <td>操作人</td>
                        <td>操作时间</td>
                     </tr>
                    </thead>
                    <tbody>';
            foreach($result as $key => $value) {
                $time = $value['issued_time'] == 0 ? '' : date('Y-m-d H:i:s',$value['issued_time']);
                $html .= '<tr>
                            <td>'.$value['documents_id'].'</td>
                            <td>'.$value['is_issuedStr'].'</td>
                            <td>'.$value['issued_user'].'</td>
                            <td>'.$time.'</td>
                         </tr>';
            }
            $html .= '<tbody>';
            $data['data'] = $html;
            return json($data);
        }
        $data = array();
        $data['code'] = 100001;
        $data['msg'] = '查询失败';
        return json($data);
    }

    public function export(Request $request) {
        $this->param = array_filter($request->param());
        $condition = [];
        if(isset($this->param['documents_id'])) {
            $list = Model('Documents')->getListPage();
            if(!empty($list)) {
                foreach($list as $k =>$value) {
                    if($this->param['documents_id'] >= $value['s_num'] && $this->param['documents_id'] <= $value['e_num']) {
                        $condition['s_num'] = $value['s_num'];
                    }
                }
                if(!isset($condition['s_num'])) {
                    $condition['s_num'] = $this->param['documents_id'];
                }
            }
        }
        if(isset($this->param['add_id'])) {
            $condition['add_id'] = $this->param['add_id'];
        }
        if(isset($this->param['create_user'])) {
            $condition['create_user'] = $this->param['create_user'];
        }
        if(isset($this->param['create_time'])) {
            $condition['create_time'] = strtotime($this->param['create_time']);
        }
        $page = 1;
        if(isset($this->param['page'])) {
            $page = $this->param['page'];
        }
        $total = false;
        if($this->param['total'] == 1) {
            $total = true;
        }
        $res = Model('Documents')->getList($condition,$this->param['pagesize'],['page'=>$page,'query'=>$this->param]);
        if($total) {
            writLog("单证入库导出".http_build_query($condition)."总条数：".$res->total(),EXPORT_LOGS,53);
            return ceil($res->total()/$this->param['pagesize']);
        }
        $line = '';
        $condition = explode(",",$this->param['condition']);
        foreach($res->all() as $key =>$value) {
            foreach ($condition as $k => $v) {
                if(strpos($v,'time') !== false && $value[$v] != 0){
                    $line .= date('Y-m-d H:i:s',$value[$v]).",";
                }else{
                    $line .= $value[$v].",";
                }
            }
            $line .= "\n";
        }
        return $line;
    }

}
