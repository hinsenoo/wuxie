<?php

/**
 * 根据客户端传递过来的ID删除对应数据
 */

require_once '../../functions.php';

if (empty($_GET['id'])) {
    exit ('缺少必要参数');
}

$from = $_GET['from'];
// $id = (int)$_GET['id'];
// 或者 is_numeric('abc');
$id = $_GET['id'];
// => '1 or 1=1'
// sql 注入

$ids = explode(',',$id); 
$flag = true;
foreach ($ids as $key) {
    if(!is_numeric($key)) $flag = false;
}

if ($flag) {
        $rows = wx_execute('delete from ' . $from . ' where id in (' . $id . ');');
}

if ($rows > 0) {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
} else {
    exit('删除失败');
}

// header('Content-Type: appliction/json');

// echo json_encode($rows > 0);