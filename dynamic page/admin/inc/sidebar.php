<?php

    require_once '../functions.php';

    // 页面标识
    $current_page = isset($current_page) ? $current_page : '' ;

    // 用户信息
    $current_user = wx_get_current_user();

?>
<div class="aside">
        <div class="profile">
            <img class="avatar" src="<?php echo $current_user['avatar']; ?>" alt="avatar">
            <h3 class="name"><?php echo $current_user['nickname']; ?></h3>
        </div>
        <ul class="nav">
            <li<?php echo $current_page === 'index' ? ' class="active"' : '' ?>>
                <a href="/admin/index.php">
                    <i class="fa fa-home"></i>主页
                </a>
            </li>
            <?php $menu_person = array('person', 'person-add') ?>
            <li<?php echo in_array($current_page, $menu_person) ? ' class="active"' : '' ?>>
                <a href="#menu-person"<?php echo in_array($current_page, $menu_person) ? '' : ' class="collapsed"' ?> data-toggle="collapse">
                    <i class="fa fa-address-card-o"></i>
                    协会成员
                    <i class="fa fa-angle-right"></i>
                </a>
                <ul id="menu-person" class="collapse<?php echo in_array($current_page, $menu_person) ? ' in' : '' ?>">
                    <li<?php echo $current_page === 'person' ? ' class="active"' : '' ?>><a href="/admin/person.php">所有成员</a></li>
                    <li<?php echo $current_page === 'person-add' ? ' class="active"' : '' ?>><a href="/admin/person-add.php">增改成员</a></li>
                </ul>
            </li>
            <?php $menu_resource = array('resource', 'resource-add') ?>
            <li<?php echo in_array($current_page, $menu_resource) ? ' class="active"' : '' ?>>
                <a href="#menu-resource"<?php echo in_array($current_page, $menu_resource) ? '' : ' class="collapsed"' ?> data-toggle="collapse">
                    <i class="fa fa-share-alt"></i>
                    资源共享
                    <i class="fa fa-angle-right"></i>
                </a>
                <ul id="menu-resource" class="collapse<?php echo in_array($current_page, $menu_resource) ? 'in' : '' ?>">
                    <li<?php echo $current_page === 'resource' ? ' class="active"' : '' ?>><a href="/admin/resource.php">资源信息</a></li>
                    <li<?php echo $current_page === 'resource-add' ? ' class="active"' : '' ?>><a href="/admin/resource-add.php">添加分享</a></li>
                </ul>
            </li>
            <?php $menu_library = array('library', 'library-add') ?>
            <li<?php echo in_array($current_page, $menu_library) ? ' class="active"' : '' ?>>
                <a href="#menu-library"<?php echo in_array($current_page, $menu_library) ? '' : ' class="collapsed"' ?> data-toggle="collapse">
                    <i class="fa fa-book"></i>
                    图书管理
                    <i class="fa fa-angle-right"></i>
                </a>
                <ul id="menu-library" class="collapse<?php echo in_array($current_page, $menu_library) ? 'in' : '' ?>">
                    <li<?php echo $current_page === 'library' ? ' class="active"' : '' ?>><a href="/admin/library.php">图书信息</a></li>
                    <li<?php echo $current_page === 'library-add' ? ' class="active"' : '' ?>><a href="/admin/library-add.php">增改图书</a></li>
                </ul>
            </li>
            <li<?php echo $current_page === 'users' ? ' class="active"' : '' ?>>
                <a href="/admin/users.php"><i class="fa fa-users"></i>用户</a>
            </li>
            <li<?php echo $current_page === 'settings' ? ' class="active"' : '' ?>>
                <a href="/admin/settings.php"><i class="fa fa-cogs"></i>设置</i></a>
            </li>
        </ul>
    </div>
