<?php

namespace app\admin\command;

use think\console\Command;
use think\console\Input;
use think\console\Output;
use think\db;
class car_code extends Command{
    private $time;
    private $db = 'zh_carcode';

    protected function configure(){
        $this->setName('addCarCode')->setDescription("计划任务 car code");
    }

    //调用addCarCode 这个类时,会自动运行execute方法
    protected function execute(Input $input, Output $output){
        $this->writLog("任务开始执行",'car_code');
        /*** 这里写计划任务列表集 START ***/

        //验车码查询今天是否已经生成
        $this->time = strtotime(date("Ymd"));
        $list = db($this->db)->where(['time'=>$this->time])->select();
        if(!empty($list)) {
            $this->writLog("验证码已生成，任务结束",'car_code');
            return true;
        }
        $this->addCode($num=0);

        $this->writLog("任务执行完毕",'car_code');
    }

    /** 添加验车码，如果添加失败，则重复添加
     * @return bool
     */
    public function addCode($num) {
        $code = $this->createInvitecode();
        $res = db($this->db)->insert(['time'=>$this->time,'code'=>$code]);
        if($res == false) {
            $this->writLog("验车码生成失败，第{$num}次,内容{$code}",'car_code');
            $num ++;
            $this->addCode($num);
        }
        $this->writLog("验车码生成成功，第{$num}次,内容{$code}",'car_code');
        return true;
    }
    /** 生成验车码
     * @return string
     */
    public function createInvitecode(){

        // 生成字母和数字组成的6位字符串

        $str = range('A', 'Z');

        // 去除大写的O，以防止与0混淆 

        unset($str[array_search('O', $str)]);

        $arr = array_merge(range(0, 9), $str);

        shuffle($arr);

        $invitecode = '';

        $arr_len = count($arr);

        for ($i = 0; $i < 6; $i++) {
            $rand = mt_rand(0, $arr_len - 1);

            $invitecode .= $arr[$rand];

        }

        return $invitecode;

    }

}
?>
