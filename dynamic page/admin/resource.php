<?php 

    require_once '../functions.php';

    // 判断用户是否登录一定是最先去做
    $users = wx_get_current_user();
	
	if ($users['level'] == '访客') header('Location: /admin/index-member.php');

    $where = '1 = 1';
    $search = '';

    // 筛选===================================================

    //查询分类数据
    $direction = wx_fetch_all('select direction as name from resource
                                GROUP BY direction;');
    $category = wx_fetch_all('select category as name from resource
                            GROUP BY category;');

    // 方向筛选
    if (isset($_GET['direction']) && $_GET['direction'] !== 'all') {
        $where .= " and resource.direction =  '" . $_GET['direction'] ."'";
        $search .= '&direction=' . $_GET['direction'];
    }
    // 类别筛选
    if (isset($_GET['category']) && $_GET['category'] !== 'all') {
        $where .= " and resource.category =  '" . $_GET['category'] ."'";
        $search .= '&category=' . $_GET['category'];
    }

    // 处理分页参数
    // =======================================================
    $size = 20;
    $page = empty($_GET['page']) ? 1 : (int)$_GET['page'];
    // 必须 >= 1 && <= 总页数

    if ($page < 1 ) {
        header('Location: /admin/resource.php?page=1'. $search);
    }

    // 最大页码数
    $total_count = (int)wx_fetch_one("select count(1) as count from resource
                        where {$where}")['count'];
    $total_pages = (int)ceil($total_count / $size);

    if(isset($_total_pages)){
        if($page > $total_pages) {
            header('Location: /admin/resource.php?page='. $total_pages . $search);
        }
    }

    // 计算出要越过多少条
    $offset = ($page - 1) * $size;

    $post = wx_fetch_all("select 
                *
                from resource
                where {$where}
                order by resource.id desc
                limit {$offset}, {$size};
    ");

    // if (empty($post)) {
    //     header('Location: /admin/resource.php?[]');
    // }

    // 处理分页页码
    // ==============================================================

    $visiables = 5;

    // 计算最大和最小展示的页码
    $begin = $page - ($visiables - 1) / 2 ;
    $end = $begin + $visiables - 1;
    
    // 重点考虑合理性的问题
    // begin > 0 end <= total_pages
    $begin = $begin < 1 ? 1 : $begin; // 确保了 begin 不会小于 1
    $end = $begin + $visiables - 1; // 因为 上 行可能导致 begin 变化，这里同步两者的关系
    $end = $end > $total_pages ? $total_pages : $end; // 确保了 end 不会大于 total_pages;
    $begin = $end - $visiables + 1; // 因为 上 可能改变了end， 也就有可能打破begin 和 end 的关系
    $begin = $begin < 1 ? 1 : $begin;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>resource &laquo; WX</title>
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
                <h1>资源信息</h1>
                <a href="resource-add.php" class="btn btn-primary btn-xs">新增</a>
            </div>
                <!-- 有错误信息时展示 -->
            <!-- <div class="alert alert-danger">
                <strong>错误!</strong>发生XXX错误
            </div> -->
            <div class="page-action">
                <!-- 当多重选中时显示 -->
                <a id="btn_delete" class="btn btn-danger btn-sm" href="/admin/api/delete.php" style="display: none;">批量删除</a>
                <form class="form-inline" action="">
                    <select class="form-control input-sm" name="category">
                        <option value="all">所有类别</option>
                        <?php foreach ($category as $item): ?>
                        <option 
                        value="<?php echo $item['name'] ?>"
                        <?php echo isset($_GET['category']) && $_GET['category'] === $item['name'] ? 'selected' : '' ;?>>
                        <?php echo $item['name'] ?></option>
                        <?php endforeach; ?>
                    </select>
                    <select class="form-control input-sm" name="direction">
                        <option value="all">所有方向</option>
                        <?php foreach ($direction as $item): ?>
                        <option 
                        value="<?php echo $item['name'] ?>"
                        <?php echo isset($_GET['direction']) && $_GET['direction'] === $item['name'] ? 'selected' : '' ;?>>
                        <?php echo $item['name'] ?></option>
                        <?php endforeach; ?>
                    </select>
                    <button class="btn btn-default btn-sm">筛选</button>
                </form>
                <!-- 分页功能 -->
                <ul class="pagination pagination-sm pull-right">
                    <li<?php echo $page == 1 ? ' class="hidden"' : ''?> ><a  href="?page=1" ><<</a></li>
                    <li<?php echo $page == 1 ? ' class="hidden"' : ''?> ><a  href="?page=<?php echo (int)($page - 1) . $search; ?>" >上一页</a></li>
                    <?php for ($i = $begin; $i <= $end; $i++): ?>
                    <li<?php echo $i === $page ? ' class="active"' : ''; ?>><a href="?page=<?php echo $i . $search; ?>"><?php echo $i; ?></a></li>
                    <?php endfor ?>
                    <li<?php echo $page == $total_pages ? ' class="hidden"' : ''?>><a href="?page=<?php echo (int)($page + 1) . $search; ?>">下一页</a></li>
                    <li<?php echo $page == $total_pages ? ' class="hidden"' : ''?> ><a  href="?page=<?php echo $total_pages ?>" >>></a></li>
                </ul>
            </div>
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="text-center" width="40"><input type="checkbox" name="" id=""></th>
                        <th>名称</th>
                        <th>链接</th>
                        <th>提取码</th>
                        <th class="text-center">类别</th>
                        <th class="text-center">方向</th>
                        <th class="text-center" width="100">操作</th>
                    </tr>
                </thead>
                <tbody>
                <?php if (isset($post)) : ?>
                    <?php foreach ($post as $item) : ?>
                    <tr>
                        <td class="text-center"><input type="checkbox" data-id="<?php echo $item['id']; ?>"></td>
                        <td><?php echo $item['name']; ?></td>
                        <td><?php echo $item['link']; ?></td>
                        <td><?php echo $item['link_pw']; ?></td>
                        <td class="text-center"><?php echo $item['category']; ?></td>
                        <td class="text-center"><?php echo $item['direction']; ?></td>
                        <td class="text-center">
                            <a href="/admin/resource-add.php?from=resource&id=<?php echo $item['id'] ?>" class="btn btn-default btn-xs">编辑</a>
                            <a href="/admin/api/delete.php?id=<?php echo $item['id'] . '&from=resource'?>" class="btn btn-danger btn-xs">删除</a>
                        </td>
                    </tr>
                    <?php endforeach ?>
                    <?php endif ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- 侧边栏 -->
    <?php $current_page = 'resource'; ?>
    <?php include 'inc/sidebar.php'?>

    <script src="/static/assets/vendors/jquery/jquery.js"></script>
    <script src="/static/assets/vendors/bootstrap/js/bootstrap.js"></script>
    <script>
        $(function ($) {

            var $tbodyCheckboxs = $('tbody input');
            var $btnDelete = $('#btn_delete');
            
            // 定义一个数组 记录被选中的
            var allCheckeds = [];

            $tbodyCheckboxs.on('change', function () {
                var id = $(this).data('id');

                if ($(this).prop('checked')) {
                    // allCheckeds.indexOf(id) !== -1 || allCheckeds.push(id);
                    allCheckeds.includes(id) || allCheckeds.push(id);
                } else {
                    allCheckeds.splice(allCheckeds.indexOf(id), 1);
                }

                // 根据剩下多少选中的 checkbox 决定
                allCheckeds.length ? $btnDelete.fadeIn() : $btnDelete.fadeOut();
                $btnDelete.prop('search', '?from=resource&id=' + allCheckeds);
            })
            $('thead input').on('change', function () {
                // 1. 获取当前选中状态
                var checked = $(this).prop('checked');
                // 2. 设置给标体中的每一个
                $tbodyCheckboxs.prop('checked', checked).trigger('change');
                // $tbodyCheckboxs.attr('checked', checked).trigger('change')
            })
            $('#slug').on('input', function () {
                $(this).next().children().text($(this).val())
            })
        })
    </script>
    <!-- loading 开始 -->
    <script>NProgress.done()</script>
</body>
</html>