<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Website Resmi CSR Kabupaten Kulon Progo</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Mannatthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="shortcut icon" href="<?= base_url(); ?>/depan/assets/img/logo_header.png">
    <!-- plugin css -->
    <link href="<?= base_url('admin'); ?>/assets/plugins/dropify/css/dropify.min.css" rel="stylesheet">
    <link href="<?= base_url('admin'); ?>/assets/plugins/select2/select2.min.css" rel="stylesheet" type="text/css" />

    <!-- DataTables -->
    <link href="<?= base_url('admin'); ?>/assets/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    <!-- Responsive datatable examples -->
    <link href="<?= base_url('admin'); ?>/assets/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

    <link href="<?= base_url('admin'); ?>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<?= base_url('admin'); ?>/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="<?= base_url('admin'); ?>/assets/css/style.css" rel="stylesheet" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.min.js"></script>

</head>


<body>

    <!-- Loader -->
    <div id="preloader">
        <div id="status">
            <div class="spinner"></div>
        </div>
    </div>

    <!-- Navigation Bar-->
    <header id="topnav">
        <div class="topbar-main">
            <div class="container-fluid">

                <!-- Logo container-->
                <div class="logo">
                    <a href="<?= base_url('dashboard'); ?>" class="logo">
                        <img src="<?= base_url(); ?>/depan/assets/img/logo_header3.png" height="40" alt="">
                    </a>

                </div>
                <!-- End Logo container-->


                <div class="menu-extras topbar-custom">

                    <ul class="list-unstyled float-right mb-0">

                        <!-- User-->
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"><?= session('username'); ?>
                                <img src="<?= base_url('admin'); ?>/assets/images/users/avatar-1.jpg" alt="user" class="rounded-circle">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown  border-0">
                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h5>Selamat Datang</h5>
                                </div>
                                <!-- <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle m-r-5 text-muted"></i> Profile</a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-wallet m-r-5 text-muted"></i> My
                                    Wallet</a>
                                <a class="dropdown-item" href="#"><span class="badge badge-success float-right">5</span><i class="mdi mdi-settings m-r-5 text-muted"></i> Settings</a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline m-r-5 text-muted"></i> Lock screen</a> -->
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?= base_url('logout'); ?>"><i class="mdi mdi-logout m-r-5 text-muted"></i>
                                    Logout</a>
                            </div>
                        </li>
                        <li class="menu-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>

                    </ul>
                </div>
                <!-- end menu-extras -->

                <div class="clearfix"></div>

            </div> <!-- end container -->
        </div>
        <!-- end topbar-main -->

        <!-- MENU Start -->
        <div class="navbar-custom">
            <div class="container-fluid">
                <div id="navigation">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu">
                        
                        <?php if (session('level') == 0) { ?>
                            <li class="has-submenu">
                                <a href="<?= base_url('admin/dashboard'); ?>"><i class="dripicons-device-desktop"></i>Dashboard</a>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="dripicons-stack"></i>Data Master</a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="<?= base_url('admin/perusahaan'); ?>">Perusahaan</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="<?= base_url('admin/kegiatan_csr'); ?>"><i class="dripicons-blog"></i>Kegiatan CSR</a>
                            </li>
                        <?php } ?>

                        <?php if (session('level') > 0) { ?>
                            <li class="has-submenu">
                                <a href="<?= base_url('user/dashboard'); ?>"><i class="dripicons-device-desktop"></i>Dashboard</a>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="dripicons-stack"></i>Kegiatan CSR</a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="<?= base_url('user/kegiatan_csr'); ?>">All Kegiatan</a></li>
                                            <li><a href="<?= base_url('user/my_kegiatan_csr'); ?>">My Kegiatan</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        <?php } ?>

                        <?php if (session('level') == 0) { ?>
                            <li class="has-submenu">
                                <a href="<?= base_url('user/laporan_kegiatan'); ?>"><i class="dripicons-blog"></i>Laporan Kegiatan CSR</a>
                            </li>
                        <?php } ?>

                        <li class="has-submenu">
                            <a href="<?= base_url('publikasi/admin'); ?>"><i class="dripicons-blog"></i>Publikasi</a>
                        </li>

                    </ul>
                    <!-- End navigation menu -->
                </div> <!-- end #navigation -->
            </div> <!-- end container -->
        </div> <!-- end navbar-custom -->
    </header>
    <!-- End Navigation Bar-->

    <?= $this->renderSection('content') ?>

    <!-- Footer -->
    <footer class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    © 2023 CSR Kabupaten Kulon Progo.
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->


    <!-- jQuery  -->
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.min.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/popper.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/bootstrap.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/modernizr.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/waves.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.slimscroll.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.nicescroll.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.scrollTo.min.js"></script>

    <!-- KNOB JS -->
    <script src="<?= base_url('admin'); ?>/assets/plugins/jquery-knob/excanvas.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/plugins/jquery-knob/jquery.knob.js"></script>

    <!-- Required datatable js -->
    <script src="<?= base_url('admin'); ?>/assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/plugins/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Responsive examples -->
    <script src="<?= base_url('admin'); ?>/assets/plugins/datatables/dataTables.responsive.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/plugins/datatables/responsive.bootstrap4.min.js"></script>

    <!-- Datatable init js -->
    <!-- <script src="<?= base_url('admin'); ?>/assets/pages/datatables.init.js"></script> -->


    <!-- <script src="<?= base_url('admin'); ?>/assets/plugins/chart.js/chart.min.js"></script> -->
    <!-- <script src="<?= base_url('admin'); ?>/assets/pages/dashboard.js"></script> -->

    <!-- Plugins js -->
    <script src="<?= base_url('admin'); ?>/assets/plugins/select2/select2.min.js"></script>

    <script src="<?= base_url('admin'); ?>/assets/plugins/dropify/js/dropify.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/pages/dropify.init.js"></script>
    <!--Wysiwig js-->
    <script src="<?= base_url('admin'); ?>/assets/plugins/tinymce/tinymce.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/pages/form-editor.js"></script>

    <!-- App js -->
    <script src="<?= base_url('admin'); ?>/assets/js/app.js"></script>

    <?= $this->renderSection('script') ?>

</body>

</html>