<?php


 // 载入配置选项，为了防止 function.php 重复载入时载入配置报错，所以使用 require_once
require_once 'config.php';


/**
 * 封装常用函数
 */
session_start();

/**
 * 获取当前登陆用户信息，如果没有获取到则自动跳转到登录页面
 *
 * @return [session] 登录标识
 */
function wx_get_current_user () {
    if(empty($_SESSION['current_login_user'])) {
        header('Location: /admin/login.php');
        exit();// 没有必要再执行之后的代码
    }
    return $_SESSION['current_login_user'];
}

/**
 * 根据配置文件信息创建一个数据库连接，注意用完以后需要关闭
 * @return mysqli 数据库连接对象
 */
function wx_connect_sql() {
    $connection = mysqli_connect(WX_DB_HOST, WX_DB_USER, WX_DB_PASS, WX_DB_NAME);

    if (!$connection) {
        // 如果链接失败
        die('<h1>Connect Error (' . mysqli_connect_erro() . ')' . mysqli_connect_error() . '</h1>');
    }

    // 设置数据库编码
    mysqli_set_charset($connection, 'utf8');

    return $connection;
}

/**
 * 通过一个数据库查询获取多条数据
 *  => 索引数组套关联数组
 * @param [String] $sql
 * @return [array] $data
 */
function wx_fetch_all ($sql) {
    // 获取数据库连接
    $connection = wx_connect_sql();

    // 定义结果数据容器，用于装载查询到的数据
    $data = array();

    // 执行参数中指定的 SQL 语句
    if ($result = mysqli_query($connection ,$sql)) {
        // 查询成功 则获取结果集中的数据

        // 遍历每一行的数据
        while ($row = mysqli_fetch_array($result)) {
            // 追加到数据容器中
            $data[] = $row;
        }

        // 释放结果集
        mysqli_free_result($result);
    }

    // 关闭数据库连接
    mysqli_close($connection);

    // 返回容器中的数据
    return $data = isset($data) ? $data : null;
}

/**
 * 获取单条数据
 * => 关联数组
 * @param [String] $sql
 * @return [array] $data
 */
function wx_fetch_one ($sql) {
    $data = wx_fetch_all($sql);
    return isset($data[0]) ? $data[0] : null;
}

function wx_execute($sql) {
    // 获取与数据库之间的连接
    $connection = wx_connect_sql();

    // 执行 sql 语句，获取一个查询对象
    if ($result = mysqli_query($connection, $sql)) {
        // 查询成功，获取执行语句后影响的行数
        $affected_rows = mysqli_affected_rows($connection);
    }

    // 关闭数据库连接
    mysqli_close($connection);

    // 返回受影响的行数
    return isset($affected_rows) ? $affected_rows : 0;
}