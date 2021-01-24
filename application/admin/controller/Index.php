<?php
namespace app\admin\controller;


class Index extends Common
{
    protected $power=0;
    public function index()
    {
        return $this->fetch();
    }

}
