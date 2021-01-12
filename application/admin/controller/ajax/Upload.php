<?php
/**
 * @user: Zhaosen Du
 * @email: zhduzhaosen@126.com
 * @date: 2020/12/17
 * @createTime: 16:04
 * @company: 中互交通运输有限公司 https://zhonghujiaotong.com
 */
namespace app\admin\controller\Ajax;

use think\Model;
use think\Request;
use app\admin\controller\Common;
use think\Config;

class Upload extends Common {
    private $param;
    /** 统筹单文件上传
     *
     */
    public function index(Request $request) {
        $file = request()->file('file');
        $result = $request->param('');
        if(!isset($result['folder'])) {
            $result['folder'] = 'default1';
        }
        if(!isset($result['temporary_id']) || $result['temporary_id'] == false) {
            // 上传失败获取错误信息
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '暂存单号未标识';
            return json($data);
        }
        if($file) {
            $path = Config::parse(APP_PATH.'/admin/config/upload.ini','ini');
            $info = $file->move(ROOT_PATH . 'public' . DS . 'imagePath' . DS . 'image' . DS . $result['folder']);
            if($info){
                $url =  $info->getSaveName();
                $param = array();
                $param['temporary_id'] = $result['temporary_id'];
                $param['attach_url'] = $url;
                $param['folder'] = $result['folder'];
                $param['name'] = $result['name'];
                $res = Model('Upload')->addUpload($param);
                if($res) {
                    $data = array();
                    $data['code'] = 100000;
                    $data['msg'] = '上传成功';
                    $data['url'] = $path['url']['path'].$result['folder'].'/'.$url;
                    $data['id'] = $res;
                    return json($data);
                }else{
                    $data = array();
                    $data['code'] = 100001;
                    $data['msg'] = '上传失败';
                    return json($data);
                }
            }else{
                // 上传失败获取错误信息
                $data = array();
                $data['code'] = 100001;
                $data['msg'] = '上传文件失败';
                $data['data'] = $file->getError();
                return json($data);
            }
        }else{
            // 上传失败获取错误信息
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '请选择上传的图片';
            return json($data);
        }
    }

    /** 删除文件
     * @param Request $request
     */
    public function delFile(Request $request) {
        $id = $request->param('id');
        if(!isset($id)) {
            // 上传失败获取错误信息
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '图片ID丢失';
            return json($data);
        }
        $res = Model('Upload')->editUpload(['id'=>$id,'type'=>2]);
        if($res) {
            $data = array();
            $data['code'] = 100000;
            $data['msg'] = '图片删除成功';
            return json($data);
        }else{
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '图片删除失败';
            return json($data);
        }
    }
}
