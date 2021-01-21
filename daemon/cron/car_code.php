<?php

namespace daemon\cron;
use think\Model;
class car_code {

    private $time = 0;
    public function run(){
        //验车码查询今天是否已经生成
        $this->time = strtotime(date("Ymd"));
        $list = Model('Carcode')->getList(['time'=>$this->time],1);
        if(!empty($list)) {
            return true;
        }
        $this->addCode();
    }

    /** 添加验车码，如果添加失败，则重复添加
     * @return bool
     */
    public function addCode() {
        $code = Model('Carcode')->createInvitecode();
        $res = model('Carcode')->addCode(['time'=>$this->time,'code'=>$code]);
        if($res == false) {
            $this->addCode();
        }
        return true;
    }

}
$cron = new car_code();
$cron->run();
?>
