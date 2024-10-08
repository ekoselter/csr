<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Website Resmi CSR Kabupaten Kulon Progo</title>

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<?= base_url(); ?>/depan/assets/css/vendor.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/depan/assets/css/style.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/depan/assets/css/responsive.css">
    <link rel="icon" href="<?= base_url(); ?>/depan/assets/img/logo_header3.png" type="image/png">
    <link href="<?= base_url('admin'); ?>/assets/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="<?= base_url('admin'); ?>/assets/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

</head>

<body>

    <!-- preloader area start -->
    <!-- <div class="preloader" id="preloader">
        <div class="preloader-inner">
            <div class="spinner">
                <div class="dot1"></div>
                <div class="dot2"></div>
            </div>
        </div>
    </div> -->
    <!-- preloader area end -->
    <!-- search popup start-->
    <div class="body-overlay" id="body-overlay"></div>
    <div class="td-search-popup" id="td-search-popup">
        <form action="<?= base_url(); ?>" class="search-form">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search.....">
            </div>
            <button type="submit" class="submit-btn"><i class="fa fa-search"></i></button>
        </form>
    </div>
    <!-- search popup end-->

    <!-- navbar start -->
    <div class="navbar-area navbar-area-2">
        <!-- navbar top start -->
        <!-- <div class="navbar-top bg-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-lg-left text-center">
                        <ul>
                            <li>
                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location.png" alt="img"> 420 Love Sreet 133/2 flx City</p>
                            </li>
                            <li>
                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/phone.png" alt="img"> +(06) 017 800 628</p>
                            </li>
                            <li>
                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/envelope.png" alt="img"> info.contact@gmail.com</p>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-4">
                        <ul class="topbar-right text-lg-right text-center">
                            <li>
                                <a class="ml-0" href="signup.html">Register</a>
                                <a href="signin.html">Login</a>
                            </li>
                            <li class="social-area">
                                <a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                                <a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a>
                                <a href="#"><i class="fab fa-skype" aria-hidden="true"></i></a>
                                <a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- navbar top end -->
        <nav class="navbar navbar-expand-lg">
            <div class="container nav-container">
                <div class="responsive-mobile-menu">
                    <button class="menu toggle-btn d-block d-lg-none" data-target="#dkt_main_menu" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-left"></span>
                        <span class="icon-right"></span>
                    </button>
                </div>
                <div class="logo">
                    <a href="<?= base_url(); ?>"><img src="<?= base_url(); ?>/depan/assets/img/logo_header3.png" alt="img"></a>
                </div>
                <div class="nav-right-part nav-right-part-mobile">
                    <a class="btn btn-base" href="<?= base_url(); ?>/login">Login</a>
                </div>
                <div class="collapse navbar-collapse" id="dkt_main_menu">
                    <ul class="navbar-nav menu-open text-center">
                        <li><a href="<?= base_url(); ?>">Beranda</a></li>
                        <li><a href="<?= base_url(); ?>profil">Profil</a></li>
                        <li><a href="<?= base_url(); ?>kegiatan">Kegiatan</a></li>
                        <li><a href="<?= base_url(); ?>report">Laporan</a></li>
                        <li><a href="<?= base_url(); ?>kontak_kami">Kontak Kami</a></li>
                    </ul>
                </div>
                <div class="nav-right-part nav-right-part-desktop">
                    <ul>
                        <li><a class="search" href="#"><i class="fa fa-search"></i></a></li>
                        <li><a class="btn btn-base" href="<?= base_url('login'); ?>">Login <i class="fa fa-key"></i></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <!-- navbar end -->

    <?= $this->renderSection('content') ?>

    <!-- footer area start -->
    <!-- <footer class="footer-area style-two" style="background: url(<?= base_url(); ?>/depan/assets/img/other/1.png);"> -->
    <footer class="footer-area style-two">
        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="widget widget_about">
                            <img src="<?= base_url(); ?>/depan/assets/img/logo_header.png" alt="img">
                            <h4 class="widget-title">Kabupaten Kulon Progo</h4>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="widget widget_about">
                            <h4 class="widget-title">Tentang</h4>
                            <div class="details">
                                <!-- <p>Website Resmi CSR Kabupaten Kulon Progo</p> -->
                                <p><i class="fas fa-map-marker-alt"></i> Gedung BAPPEDA Jl. Perwakilan Nomor 1 Wates, Kulon Progo, Daerah Istimewa Yogyakarta</p>
                                <p><i class="fas fa-phone-volume"></i> (0274) 773247 Fax: (0274) 774126</p>
                                <p><i class="fas fa-envelope"></i> admin.csrku@gmail.com</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 align-self-center">
                        <p>2023, Kabupaten Kulon Progo. All Rights Reserved</p>
                    </div>
                    <div class="col-lg-6 text-lg-right">
                        <ul>
                            <li>
                                <a href="<?= base_url(); ?>">Beranda</a>
                            </li>
                            <li>
                                <a href="<?= base_url(); ?>profil">Profil</a>
                            </li>
                            <li>
                                <a href="<?= base_url(); ?>kegiatan">Kegiatan</a>
                            </li>
                            <li>
                                <a href="<?= base_url(); ?>report">Laporan</a>
                            </li>
                            <li>
                                <a href="<?= base_url(); ?>kontak_kami">Kontak Kami</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer area end -->

    <!-- back to top area start -->
    <div class="back-to-top">
        <span class="back-top"><i class="fa fa-angle-up"></i></span>
    </div>
    <!-- back to top area end -->

    <!-- all plugins here -->
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.min.js"></script>
    <script src="<?= base_url(); ?>/depan/assets/js/vendor.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/plugins/datatables/dataTables.bootstrap4.min.js"></script>
    <!-- main js  -->
    <script src="<?= base_url(); ?>/depan/assets/js/main.js"></script>
    <?= $this->renderSection('script') ?>
</body>

</html>