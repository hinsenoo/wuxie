<?php

// 接收客户端的 AJAX 请求 返回 数据

// 载入封装的所有的函数
require_once '../../functions.php';

// if(empty($_GET['name'])) {
//     exit ('缺少必要参数');
// }

$where = empty($_GET['name']) ? '' : $_GET['name'];
$from = $_GET['from'];

if($from == 'person' ){
$sql = "select 
        person.id,
        person.name,
        person.grade,
        person.major,
        position.name as position,
        department.name as department
        from person
        inner join department on person.department_id = department.id
        inner join position on person.position_id = position.id
        where person.name = '{$where}'
        order by person.id desc
        ";
}else if ($from == 'users'){
    $sql = "select * from {$from}";
}else {
    $sql = "select * from {$from} where name = '{$where}'";
}

$data = wx_fetch_all($sql);

$json = json_encode($data);

header('Content-Type: application/json');

echo $json;

