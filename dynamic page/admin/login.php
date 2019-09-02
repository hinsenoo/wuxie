<?php
/**
 * 登录页面
 */

// 载入常用函数
require_once '../functions.php';

function login () {
    // 表单提交三部曲
    // 1.接受并校验
    // 2.数据持久化
    // 3. 响应

    if (empty($_POST['name'])) {
        $GLOBALS['message'] = '请填写用户名';
        return;
    }

    if (empty($_POST['password'])) {
        $GLOBALS['message'] = '请填写密码';
        return;
    }

    $name = $_POST['name'];
    $password = $_POST['password'];

    // 当客户端提交过来完整的表单信息就应该对其开始进行数据校验
    $user = wx_fetch_one("select * from users where name = '{$name}' limit 1");

    if (!$user) {
        // 用户名不存在
        $GLOBALS['message'] = '邮箱与密码不匹配';
        return;
    }

    // 一般密码是加密存储的
    // 再次加密=========================================================
    if ($user['password'] !== md5($password)) {
        // 密码不匹配
        $GLOBALS['message'] = '邮箱与密码不匹配';
        return;
    }

    // 存一个登录标识
    // $_SESSION['is_logged_in'] = true;
    // 为了后续可以直接获取当前登录用户的信息，这里直接将用户信息放到 session 中
    $_SESSION['current_login_user'] = $user;
    // $_SESSION['current_login_user_id'] = $user['id'];

    // 一切 ok 即可跳转
    header('Location: /admin/');
}

// 判断当前是否是 POST 请求
if($_SERVER['REQUEST_METHOD'] === 'POST') {
    login();
}

// 退出功能
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] == 'logout') {
    // 删除登录标识
    unset($_SESSION['current_login_user']);
}
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign in &laquo; WX</title>
    <link rel="stylesheet" href="/static/assets/vendors/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/static/assets/vendors/animate/animate.css">
    <link rel="stylesheet" href="/static/assets/css/admin.css">
</head>
<body>
    <div class="login">
        <!-- 可以通过 form 上添加 novalidate 取消浏览器自带的校验功能 -->
        <!-- autocomplete="off" 关闭客户端的自动完成功能 -->
        <form class="login-form<?php echo isset($message) ? ' shake animated' : '' ?>" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post"
        novalidate autocomplete="off">
            <img class="avatar" src="/static/assets/img/default.png">
            <!-- 错误信息展示 -->
            <?php if (isset($message)) : ?>
            <div class="alert alert-danger">
                <Strong>错误！</Strong><?php echo $message ?>
            </div>
            <?php endif ?>
            <div class="form-group">
                <label for="name">用户名</label>
                <input type="text" class="form-control" name="name" id="name" placeholder="用户名"
                autofocus value="<?php echo empty($_POST['name']) ? '' : $_POST['name'] ?>">
            </div>
            <div class="form-group">
                <label for="password">密码：</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="密码">
            </div>
            <button class="btn btn-primary btn-block">登 录</button>
        </form>
    </div>
    <script src="/static/assets/vendors/jquery/jquery.js"></script>
    <script>
        // 头像加载
        $(function ($) {
            $('#name').on('blur', function () {
                var value = $(this).val();
                if (!value) return;

                // 用户输入了一个用户名
                // 获取这个邮箱对应的头像地址，展示到上面的 img 元素上
                // 因为客户端的 JS 无法直接操作数据库， 应该通过 JS 发送 AJAX 请求 告诉服务端的某个 接口
                // 让这个接口帮助客户端获取头像地址

                $.get('/admin/api/avatar.php', {name: value}, function (res) {
                    // res => 用户对应的头像地址
                    if (!res) return;
                    // 展示到上面的 img 元素上
                    $('.avatar').fadeOut(function () {
                        // 等到 淡出完成
                        $(this).on('load', function () {
                            // 图片完全加载成功过后
                            $(this).fadeIn();
                        }).attr('src', res);
                    })
                })
            })
        })
    </script>
</body>
</html>