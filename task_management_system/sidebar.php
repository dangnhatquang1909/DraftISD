<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <div class="dropdown">
    <a href="./" class="brand-link logo-switch" style="background-color: #EF8F8F;">
      <?php if ($_SESSION['login_type'] == 1) : ?>
        <img class="brand-image elevation-3 logo-lg" src="./assets/uploads/Store Logo.png">Phuong Thu Beauty
      <?php else : ?>
        <img class="brand-image elevation-3 logo-mini" src="./assets/uploads/Store Logo.png">
      <?php endif; ?>
    </a>

  </div>
  <div class="sidebar pb-4 mb-4" style="background-image: url('assets/uploads/sidebarr.png'); width=100%; height=100;">
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column nav-flat" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item dropdown">
          <a href="./" class="nav-link nav-home" style="background-color: #FFE2DC;">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link nav-edit_project nav-view_project" style="background-color: #FFE2DC;">
            <i class="nav-icon fas fa-layer-group"></i>
            <p>
              Projects
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <?php if ($_SESSION['login_type'] != 3) : ?>
              <li class="nav-item">
                <a href="./index.php?page=new_project" class="nav-link nav-new_project tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New</p>
                </a>
              </li>
            <?php endif; ?>
            <li class="nav-item">
              <a href="./index.php?page=project_list" class="nav-link nav-project_list tree-item">
                <i class="fas fa-angle-right nav-icon"></i>
                <p>List</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a href="./index.php?page=task_list" class="nav-link nav-task_list" style="background-color:#FFE2DC;">
            <i class="fas fa-tasks nav-icon"></i>
            <p>Task</p>
          </a>
        </li>
        <?php if ($_SESSION['login_type'] == 1) : ?>
          <li class="nav-item">
            <a href="#" class="nav-link nav-edit_user" style="background-color: #FFE2DC;">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Users
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.php?page=new_user" class="nav-link nav-new_user tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>Add New</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.php?page=user_list" class="nav-link nav-user_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
        <?php endif; ?>
      </ul>
    </nav>
  </div>

  <style>
    .nav-item p {
      color: rgb(42, 3, 3);
      height: 100%;
      width: 200%;
      font-size: 20px;
    }

    .nav-item i {
      color: rgb(42, 3, 3);
    }

    .nav-item a {
      background-color: #FFE2DC;
    }
  </style>
</aside>
<script>
  $(document).ready(function() {
    var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
    var s = '<?php echo isset($_GET['s']) ? $_GET['s'] : '' ?>';
    if (s != '')
      page = page + '_' + s;
    if ($('.nav-link.nav-' + page).length > 0) {
      $('.nav-link.nav-' + page).addClass('active')
      if ($('.nav-link.nav-' + page).hasClass('tree-item') == true) {
        $('.nav-link.nav-' + page).closest('.nav-treeview').siblings('a').addClass('active')
        $('.nav-link.nav-' + page).closest('.nav-treeview').parent().addClass('menu-open')
      }
      if ($('.nav-link.nav-' + page).hasClass('nav-is-tree') == true) {
        $('.nav-link.nav-' + page).parent().addClass('menu-open')
      }
    }
  })
</script>