<?php 

    require_once '../functions.php';

    // 判断用户是否登录一定是最先去做
    wx_get_current_user();

    $person_number = wx_fetch_one("select 
                                    count(1) as number
                                    from person
                                    inner join department on person.department_id = department.id
                                    inner join position on person.position_id = position.id;")['number'];
    $member_number = wx_fetch_one("select 
                                    count(1) as number
                                    from person
                                    inner join department on person.department_id = department.id
                                    inner join position on person.position_id = position.id
                                    where position.id=6;")['number'];
    $book_number = wx_fetch_one("select count(1) as number from library")['number'];
    $link_number = wx_fetch_one("select count(1) as number from resource")['number'];

    $hz_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 1")['number'];
    $xm_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 2")['number'];
    $bgs_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 3")['number'];
    $xsb_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 4")['number'];
                                $hz_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 1")['number'];
    $xm_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 2")['number'];
    $bgs_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 3")['number'];
    $xsb_number = wx_fetch_one("select 
                                count(1) as number
                                from person
                                inner join department on person.department_id = department.id
                                inner join position on person.position_id = position.id
                                where department.id = 4")['number'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home &laquo; WX</title>
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
            <div class="jumbotron text-center">
                <h1 id="h1-title">Explore , Create</h1>
                <p>探无尽知识海洋，创无限智能生活</p>
                <p id="fun">（学就完事了）</p>
            </div>
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">站内统计</h3>
                    </div>
                    <ul class="list-group">

                        <li class="list-group-item"><strong><?php echo $person_number ?></strong><strong></strong>名成员(<strong><?php echo $member_number ?></strong><strong></strong>名会员)</li>
                        <li class="list-group-item"><strong><?php echo $link_number ?></strong>个资源分享</li>
                        <li class="list-group-item"><strong><?php echo $book_number ?></strong>本藏书</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <h3>人员统计</h3>
                <canvas id="chart_one"></canvas>
            </div>
            <div class="col-md-4"></div>
        </div>
        </div>
    </div>

    <!-- 侧边栏 -->
    <?php $current_page = 'index'; ?>
    <?php include 'inc/sidebar-member.php'?>

    <script src="/static/assets/vendors/jquery/jquery.js"></script>
    <script src="/static/assets/vendors/bootstrap/js/bootstrap.js"></script>
    <script src="/static/assets/vendors/chart/Chart.js"></script>
    <script>
    var ctx = document.getElementById('chart_one').getContext('2d');
    new Chart(ctx, {
        type: 'pie',
        data: {
            datasets: [
            {
                data: [<?php echo $hz_number; ?>, <?php echo $xm_number; ?>, <?php echo $bgs_number; ?> , <?php echo $xsb_number; ?>],
                backgroundColor: [
                '#64bcec',
                '#4dd3b9',
                '#ffc5c1',
                '#fdd67f'
                ]
            }
            ],

            // These labels appear in the legend and in the tooltips when hovering different arcs
            labels: [
            '会长团',
            '项目部',
            '办公室',
            '学术部'
            ]
        }
        })
    </script>
    <!-- loading 开始 -->
    <script>NProgress.done()</script>
</body>
</html>