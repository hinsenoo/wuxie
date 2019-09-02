<?php 

    require_once '../functions.php';

    // 判断用户是否登录一定是最先去做
    wx_get_current_user();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Settings &laquo; WX</title>
    <link rel="stylesheet" href="/static/assets/vendors/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/static/assets/vendors/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="/static/assets/vendors/nprogress/nprogress.css">
    <link rel="stylesheet" href="/static/assets/css/admin.css">
    <script src="/static/assets/vendors/nprogress/nprogress.js"></script>
</head>
<body>
    <!-- loading 开始 -->
    <script>NProgress.start()</script>

    <!-- 内容块 -->
    <div class="main">
        <!-- 导航栏 -->
        <?php include 'inc/navbar.php' ?>
        <div class="container-fluid">
            <div class="page-title">
                <h1>网站设置</h1>
            </div>
            <!-- 有错误信息时展示 -->
            <!-- <div class="alert alert-danger">
                <strong>错误！</strong>发生XXX错误
            </div> -->
            <form class="form-horizontal">
                <div class="form-group">
                <label for="site_logo" class="col-sm-2 control-label">网站图标</label>
                <div class="col-sm-6">
                    <input id="site_logo" name="site_logo" type="hidden">
                    <label class="form-image">
                    <input id="logo" type="file">
                    <img src="/static/assets/img/wuxielogo(opacity).png">
                    <i class="mask fa fa-upload"></i>
                    </label>
                </div>
                </div>
                <div class="form-group">
                    <label for="site_name" class="col-sm-2 control-label">站点名称</label>
                    <div class="col-sm-6">
                        <input id="site_name" name="site_name" class="form-control" type="type" placeholder="站点名称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="site_description" class="col-sm-2 control-label">站点描述</label>
                    <div class="col-sm-6">
                        <textarea id="site_description" name="site_description" class="form-control" placeholder="站点描述" cols="30" rows="6"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="site_keywords" class="col-sm-2 control-label">站点关键词</label>
                    <div class="col-sm-6">
                        <input id="site_keywords" name="site_keywords" class="form-control" type="type" placeholder="站点关键词">
                    </div>
                </div>
                <div class="form-group">
                    <label for="site_keywords" class="col-sm-2 control-label">联系方式</label>
                    <div class="col-sm-6">
                        <input id="site_keywords" name="site_keywords" class="form-control" type="type" placeholder="站点关键词">
                    </div>
                </div>
                <div class="form-group">
                <div class="col-sm-offset-2 col-sm-6">
                    <button type="submit" class="btn btn-primary">保存设置</button>
                </div>
                </div>
            </form>
        </div>
    </div>

    <!-- 侧边栏 -->
    <?php $current_page = 'settings'; ?>
    <?php include 'inc/sidebar.php'?>

    <script src="/static/assets/vendors/jquery/jquery.js"></script>
    <script src="/static/assets/vendors/bootstrap/js/bootstrap.js"></script>
    <!-- loading 开始 -->
    <script>NProgress.done()</script>
</body>
</html>