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
        if(!isset($result['related_id']) || $result['related_id'] == false) {
            // 上传失败获取错误信息
            $data = array();
            $data['code'] = 100001;
            $data['msg'] = '关联单号未标识';
            return json($data);
        }
        if($file) {
            $path = Config::parse(APP_PATH.'/admin/config/upload.ini','ini');
            $info = $file->move(ROOT_PATH . 'public' . $path['url']['path'] . $result['folder']);
            if($info){
                $url =  $info->getSaveName();
                $param = array();
                $param['related_id'] = $result['related_id'];
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
                    writLog("上传图片成功".http_build_query($data),UPLOAD_LOGS,0);
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
                writLog("上传图片失败".$file->getError(),UPLOAD_LOGS,0);
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
        $result = $res == true? '成功': '失败';
        writLog("删除文件id-".$id."结果：".$result,DEL_LOGS,0);
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
