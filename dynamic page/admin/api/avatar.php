<?php

/**
 * 根据用户名获取用户头像
 * name => image
 */
require_once '../../functions.php';

if(empty($_GET['name'])) {
    exit ('缺少必要参数');
}
$name = $_GET['name'];

// 2.查询对应的头像地址
$address = wx_fetch_one("select avatar from users where name = '{$name}' limit 1;");

echo $address[0];
