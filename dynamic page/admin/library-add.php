<?php 

    require_once '../functions.php';

    // 判断用户是否登录一定是最先去做
    $users = wx_get_current_user();
	
	if ($users['level'] == '访客') header('Location: /admin/index-member.php');

    // 添加函数
    function add_library() {
        if(empty($_POST['name']) || empty($_POST['press']) || empty($_POST['number'])
            || empty($_POST['category']) || empty($_POST['direction'])) {
                $GLOBALS['message'] = '请完整填写表单！';
                $GLOBALS['success'] = false;
                return;
        }

        // 接受并保存
        $name = $_POST['name'];
        $press = $_POST['press'];
        $number = $_POST['number'];
        $direction = $_POST['direction'];
        $category = $_POST['category'];

        $rows = wx_execute("insert into library values (null, '{$name}', '{$press}', '{$number}', '{$direction}', '{$category}');");

        // 直接输出 true
        $GLOBALS['success'] = $rows > 0 ;
        $GLOBALS['message'] = $rows <= 0 ? '添加失败!' : '添加成功!' ;
    }


    // 判断是否为需要编辑的数据
    // =================================================
    if (empty($_GET['id'])) {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            add_library();
        }
    }else {
        $id = (int)$_GET['id'];
        $from = isset($_GET['from']) ? $_GET['from'] : '';
        // 编辑
        // 客户端通过URL 传递了一个 ID
        // => 客户端是要来拿一个修改数据的表单
        // => 需要拿到用户想要修改的数据
        $current_edit = wx_fetch_one("select * from {$from} where id = {$id}");
        // 编辑功能
        if($_SERVER['REQUEST_METHOD'] === 'POST'){

                $id = $current_edit['id'];

                $name = empty($_POST['name']) ? $current_edit['name'] : $_POST['name'];
                $current_edit['name'] = $name;

                $press = empty($_POST['press']) ? $current_edit['press'] : $_POST['press'];
                $current_edit['press'] = $press;

                $number = empty($_POST['number']) ? $current_edit['number'] : $_POST['number'];
                $current_edit['number'] = $number;

                $category = empty($_POST['category']) ? $current_edit['category'] : $_POST['category'];
                $current_edit['category'] = $category;

                $direction = empty($_POST['direction']) ? $current_edit['direction'] : $_POST['direction'];
                $current_edit['direction'] = $direction;

                // var_dump($current_edit);
                $rows = wx_execute("update {$from} set name = '{$name}', press = '{$press}' , 
                                    number = '{$number}' , category = '{$category}' ,
                                    direction = '{$direction}' where id = {$id}");
                // 直接输出 true
                $GLOBALS['success'] = $rows > 0 ;
                $GLOBALS['message'] = $rows <= 0 ? '修改失败!' : '修改成功!' ;
        }
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Users &laquo; WX</title>
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
                <h1>增改图书</h1>
            </div>
            <!-- 有错误信息时展示 -->
            <!-- <div class="alert alert-danger">
                <strong>错误！</strong>发生XXX错误
            </div> -->
            <div class="row">
                <div class="col-md-6 add">
                    <?php if (isset($message)) : ?>
                    <?php if ($success): ?>
                    <div class="alert alert-success">
                    <strong>成功！</strong> <?php echo $message; ?>
                    </div>
                    <?php else: ?>
                    <div class="alert alert-danger">
                    <strong>错误！</strong> <?php echo $message; ?>
                    </div>
                    <?php endif ?>
                    <?php endif ?>
                    <?php if(isset($current_edit)): ?>
                    <form class="col-md-10" action="<?php echo $_SERVER['PHP_SELF']; ?>?from=library&id=<?php echo $current_edit['id'] ?>" method="post">
                        <h4>编辑《<?php echo $current_edit['name'] ?>》</h4>
                        <div class="form-group">
                            <label for="name">图书名称：</label>
                            <input id="name" class="form-control" name="name" type="text" placeholder="名称"
                            value="<?php echo $current_edit['name'] ?>">
                        </div>
                        <div class="form-group">
                            <label for="press">出版社：</label>
                            <input id="press" class="form-control" name="press" type="text" placeholder="出版社"
                            value="<?php echo $current_edit['press']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="number">数量：</label>
                            <input id="number" class="form-control" name="number" type="text" placeholder="数量"
                            value="<?php echo $current_edit['number']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="category">类别：</label>
                            <input id="category" class="form-control" name="category" type="text" placeholder="类别"
                            value="<?php echo $current_edit['direction'] ?>">
                        </div>
                        <div class="form-group">
                            <label for="direction">方向：</label>
                            <input id="direction" class="form-control" name="direction" type="text" placeholder="方向"
                            value="<?php echo $current_edit['direction'] ?>">
                        </div>
                        <div class="form-group text-center">
                            <button class="btn btn-primary" type="submit">保存</button>
                        </div>
                    </form>
                    <?php else: ?>
                    <form class="col-md-10" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                        <h4>添加图书</h4>
                        <div class="form-group">
                            <label for="name">图书名称：:</label>
                            <input id="name" class="form-control" name="name" type="text" placeholder="名称"
                            value="<?php echo isset($_POST['name']) ? $_POST['name'] : '' ?>">
                        </div>
                        <div class="form-group">
                            <label for="press">出版社：</label>
                            <input id="press" class="form-control" name="press" type="text" placeholder="出版社"
                            value="<?php echo isset($_POST['press']) ? $_POST['press'] : '' ?>">
                        </div>
                        <div class="form-group">
                            <label for="number">数量：</label>
                            <input id="number" class="form-control" name="number" type="text" placeholder="数量"
                            value="<?php echo isset($_POST['number']) ? $_POST['number'] : '' ?>">
                        </div>
                        <div class="form-group">
                            <label for="category">类别：</label>
                            <input id="category" class="form-control" name="category" type="text" placeholder="类别"
                            value="<?php echo isset($_POST['category']) ? $_POST['category'] : '' ?>">
                        </div>
                        <div class="form-group">
                            <label for="direction">方向：</label>
                            <input id="direction" class="form-control" name="direction" type="text" placeholder="方向"
                            value="<?php echo isset($_POST['direction']) ? $_POST['direction'] : '' ?>">
                        </div>
                        <div class="form-group text-center">
                            <button class="btn btn-primary" type="submit">添加</button>
                        </div>
                    </form>
                    <?php endif; ?>
                </div>
                <div class="col-md-6 search">
                    <div class="search-input">
                        <div id="box-search" class="input-group">
                            <input id="search-name" type="text" class="form-control input-lg" placeholder="名称">
                            <span id="search" class="input-group-addon btn btn-primary">搜索</span>
                        </div>
                    </div>
                    <div>
                        <div class="page-action">
                            <!-- 当选中多个时 呈现-->
                        <a id="btn_delete" class="btn btn-danger btn-sm" href="/admin/api/delete.php" style="display: none">批量删除</a>
                        </div>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th class="text-center" width="40"><input type="checkbox"></th>
                                    <th class="text-center">图书名称</th>
                                    <th class="text-center">出版社</th>
                                    <th class="text-center">数量</th>
                                    <th class="text-center">类别</th>
                                    <th class="text-center">方向</th>
                                    <th class="text-center" width="100">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 侧边栏 -->
    <?php $current_page = 'library-add'; ?>
    <?php include 'inc/sidebar.php'?>

    <script id="tbody_tmpl" type="text/wx-jsrender">
    {{for comments}}
    <tr data-id="{{:id }}">
        <td class="text-center"><input type="checkbox"></td>
        <td class="text-center">{{:name}}</td>
        <td class="text-center">{{:press}}</td>
        <td class="text-center">{{:number}}</td>
        <td class="text-center">{{:category}}</td>
        <td class="text-center">{{:direction}}</td>
        <td class="text-center">
            <a href="/admin/library-add.php?from=library&id={{:id}}" class="btn btn-default btn-xs">编辑</a>
            <a href="javascript:;" class="btn btn-danger btn-xs btn-delete">删除</a>
        </td>
    </tr>
    {{/for}}
    </script>
    <script src="/static/assets/vendors/jquery/jquery.js"></script>
    <script src="/static/assets/vendors/bootstrap/js/bootstrap.js"></script>
    <script src="/static/assets/vendors/jsrender/jsrender.js"></script>
    <script>
        // // nprogress
        $(document)
    	.ajaxStart(function () {
    		NProgress.start()
    	})
    	.ajaxStop(function () {
    		NProgress.done()
        })
        
        function check() {

            var $tbodyCheckboxs = $('tbody input');
            var $btnDelete = $('#btn_delete');

            // 定义一个数组 记录被选中的
            var allCheckeds = [];

            $tbodyCheckboxs.on('change', function () {
                var id = $(this).parent().parent().data('id');

                if ($(this).prop('checked')) {
                    // allCheckeds.indexOf(id) !== -1 || allCheckeds.push(id);
                    allCheckeds.includes(id) || allCheckeds.push(id);
                } else {
                    allCheckeds.splice(allCheckeds.indexOf(id), 1);
                }

                // 根据剩下多少选中的 checkbox 决定
                allCheckeds.length ? $btnDelete.fadeIn() : $btnDelete.fadeOut();
                $btnDelete.prop('search', '?from=library&id=' + allCheckeds);
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
        }
        
        $('#search').on('click', function () {
            var name = $('#search-name').val();
            $('tbody').fadeOut(function () {
                $.getJSON('/admin/api/search.php?from=library', { name : name }, function (data) {
                    var html = '';
                    for (var i = 0; i < data.length; i++){
                        html += $('#tbody_tmpl').render({ comments : data[i] });
                        $('tbody').html(html).fadeIn();
                        check();
                    }
                })
            });
        })
        $('tbody').on('click', '.btn-delete' ,function () {
            // 删除单条数据的时机
            // 1. 先拿到需要删除的数据 ID
            var $tr = $(this).parent().parent();
            var id = $tr.data('id');

            // 2. 发送一个AJAX 请求告诉服务端要删除哪一条具体的数据
            $.get('/admin/api/search-delete.php?from=library', {id: id}, function (res) {
                if (!res) return;
                // // 3. 根据服务端返回的删除是否成功决定是否在界面上移除这个元素   ============================== 方式一
                $tr.remove();
            });
        })
        

    </script>
    <!-- loading 开始 -->
    <script>NProgress.done()</script>
</body>
</html>