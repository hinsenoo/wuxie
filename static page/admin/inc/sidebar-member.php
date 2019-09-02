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
                <a href="/admin/index-member.php">
                    <i class="fa fa-home"></i>主页
                </a>
            </li>
            <?php $menu_resource = array('resource', 'resource-add') ?>
            <li<?php echo in_array($current_page, $menu_resource) ? ' class="active"' : '' ?>>
                <a href="#menu-resource"<?php echo in_array($current_page, $menu_resource) ? '' : ' class="collapsed"' ?> data-toggle="collapse">
                    <i class="fa fa-share-alt"></i>
                    资源共享
                    <i class="fa fa-angle-right"></i>
                </a>
                <ul id="menu-resource" class="collapse<?php echo in_array($current_page, $menu_resource) ? 'in' : '' ?>">
                    <li<?php echo $current_page === 'resource' ? ' class="active"' : '' ?>><a href="/admin/resource-member.php">资源信息</a></li>
                    <li<?php echo $current_page === 'resource-add' ? ' class="active"' : '' ?>><a href="/admin/resource-add-member.php">添加分享</a></li>
                </ul>
            </li>
            <li<?php echo $current_page === 'library' ? ' class="active"' : '' ?>>
				<a href="/admin/library-member.php">
					<i class="fa fa-book"></i>图书信息
				</a>
			</li>
        </ul>
    </div>
