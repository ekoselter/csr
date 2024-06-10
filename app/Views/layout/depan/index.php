<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Website Remi CSR Kabupaten Kulon Progo</title>

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<?= base_url(); ?>/depan/assets/css/vendor.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/depan/assets/css/style.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/depan/assets/css/responsive.css">

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
        <form action="index.html" class="search-form">
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
                    <a href="index.html"><img src="<?= base_url(); ?>/depan/assets/img/logo.png" alt="img"></a>
                </div>
                <div class="nav-right-part nav-right-part-mobile">
                    <a class="btn btn-base" href="<?= base_url(); ?>/login">Login</a>
                </div>
                <div class="collapse navbar-collapse" id="dkt_main_menu">
                    <ul class="navbar-nav menu-open text-center">
                        <li><a href="<?= base_url(); ?>">Beranda</a></li>
                        <li><a href="<?= base_url(); ?>profil">Profil</a></li>
                        <li><a href="<?= base_url(); ?>kegiatan">Kegiatan</a></li>
                        <li><a href="<?= base_url(); ?>laporan">Laporan</a></li>
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

    <!-- banner start -->
    <div class="banner-area banner-area-2 banner-area-bg" style="background: url(<?= base_url(); ?>/depan/assets/img/banner/2.png);">
        <div class="main-search-area">
            <div class="container">
                <form class="main-search-inner pl-0 pr-0">
                    <!-- <div class="row no-gutters">
                        <div class="col-lg-3 col-md-4">
                            <div class="single-check-inner text-lg-center">
                                <label>
                                    <input name="cl-one" type="radio">
                                    <span>Rent</span>
                                </label>
                                <label>
                                    <input name="cl-one" type="radio">
                                    <span>Buy</span>
                                </label>
                                <label>
                                    <input name="cl-one" type="radio">
                                    <span>Sold</span>
                                </label>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-4">
                            <div class="single-input-inner">
                                <input type="text" placeholder="Enter Keyword">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="single-select-inner">
                                <select>
                                    <option>Office</option>
                                    <option value="1">Office 1</option>
                                    <option value="2">Office 2</option>
                                    <option value="3">Office 3</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <a class="btn btn-base w-md-auto w-100" href="#">Search</a>
                        </div>
                    </div> -->
                </form>
            </div>
        </div>
        <div class="container">
            <div class="banner-area-inner">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="banner-inner text-center">
                            <!-- <p>Lorem ipsum dolor sit amet, consecteLorem ipsum dolor sit amet,</p> -->
                            <div class="line"></div>
                            <h2>Website Resmi CSR Kabupaten Kulon Progo</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- banner end -->

    <!-- Propartes area start -->
    <div class="propartes-area pd-top-118 pd-bottom-90">
        <div class="container">
            <div class="section-title text-center">
                <h6>Kegiatan CSR</h6>
                <h2>Kegiatan CSR </h2>
            </div>
            <div class="mgd-tab-inner text-center">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="rent1-tab" data-toggle="tab" href="#rent1" role="tab" aria-controls="rent1" aria-selected="true">Prioritas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="sell1-tab" data-toggle="tab" href="#sell1" role="tab" aria-controls="sell1" aria-selected="false">Non Prioritas</a>
                    </li>
                </ul>
            </div>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="rent1" role="tabpanel" aria-labelledby="rent1-tab">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/1.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/1.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Daily Apartment</a></h4>
                                    <ul class="meta-inner">
                                        <li><img src="<?= base_url(); ?>/depan/assets/img/icon/location2.png" alt="img">New York</li>
                                        <li><a href="#">Prioritas</a></li>
                                    </ul>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/2.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/2.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Hotel Apartment</a></h4>
                                    <ul class="meta-inner">
                                        <li><img src="<?= base_url(); ?>/depan/assets/img/icon/location2.png" alt="img">New York</li>
                                        <li><a href="#">Prioritas</a></li>
                                    </ul>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/3.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/3.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Reached Apartment</a></h4>
                                    <ul class="meta-inner">
                                        <li><img src="<?= base_url(); ?>/depan/assets/img/icon/location2.png" alt="img">New York</li>
                                        <li><a href="#">Prioritas</a></li>
                                    </ul>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/4.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/4.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Farm House</a></h4>
                                    <ul class="meta-inner">
                                        <li><img src="<?= base_url(); ?>/depan/assets/img/icon/location2.png" alt="img">New York</li>
                                        <li><a href="#">Prioritas</a></li>
                                    </ul>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/5.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/5.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Villa House</a></h4>
                                    <ul class="meta-inner">
                                        <li><img src="<?= base_url(); ?>/depan/assets/img/icon/location2.png" alt="img">New York</li>
                                        <li><a href="#">Prioritas</a></li>
                                    </ul>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/6.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/6.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Sea Side House</a></h4>
                                    <ul class="meta-inner">
                                        <li><img src="<?= base_url(); ?>/depan/assets/img/icon/location2.png" alt="img">New York</li>
                                        <li><a href="#">Prioritas</a></li>
                                    </ul>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="sell1" role="tabpanel" aria-labelledby="sell1-tab">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/4.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/4.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Side Apartment</a></h4>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/5.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/5.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Beach Apartment</a></h4>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/6.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/2.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Villa House</a></h4>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/1.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/1.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Daily House</a></h4>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/2.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/2.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">House Apartment</a></h4>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-product-wrap style-bottom">
                                <div class="thumb">
                                    <img src="<?= base_url(); ?>/depan/assets/img/project/3.png" alt="img">
                                    <div class="product-wrap-details">
                                        <div class="media">
                                            <div class="author">
                                                <img src="<?= base_url(); ?>/depan/assets/img/author/6.png" alt="img">
                                            </div>
                                            <div class="media-body">
                                                <h6><a href="#">Owner Name</a></h6>
                                                <p><img src="<?= base_url(); ?>/depan/assets/img/icon/location-alt.png" alt="img">New York real estate </p>
                                            </div>
                                            <a class="fav-btn float-right" href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-inner">
                                    <h4><a href="property-details.html">Daily Apartment</a></h4>
                                    <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                                </div>
                                <div class="product-meta-bottom">
                                    <span class="price">$ 80,650.00</span>
                                    <span>For sale</span>
                                    <span>1 year ago</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Propartes area end -->

    <!-- blog area start -->
    <div class="blog-area pd-top-118 pd-bottom-90">
        <div class="container">
            <div class="section-title text-center">
                <h6>Blog & News</h6>
                <h2>Artikel Terbaru</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-2">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/depan/assets/img/project/7.png" alt="img">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By Admin</li>
                                <li><i class="fa fa-calendar-alt"></i>Marce 9 , 2020</li>
                            </ul>
                            <h4><a href="blog-details.html">Family House</a></h4>
                            <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-2">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/depan/assets/img/project/4.png" alt="img">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By Admin</li>
                                <li><i class="fa fa-calendar-alt"></i>Marce 9 , 2020</li>
                            </ul>
                            <h4><a href="blog-details.html">Villa House</a></h4>
                            <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-2">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/depan/assets/img/project/5.png" alt="img">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By Admin</li>
                                <li><i class="fa fa-calendar-alt"></i>Marce 9 , 2020</li>
                            </ul>
                            <h4><a href="blog-details.html">Beach Side House</a></h4>
                            <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-2">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/depan/assets/img/project/8.png" alt="img">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By Admin</li>
                                <li><i class="fa fa-calendar-alt"></i>Marce 9 , 2020</li>
                            </ul>
                            <h4><a href="blog-details.html">Hotel Apartment</a></h4>
                            <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-2">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/depan/assets/img/project/6.png" alt="img">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By Admin</li>
                                <li><i class="fa fa-calendar-alt"></i>Marce 9 , 2020</li>
                            </ul>
                            <h4><a href="blog-details.html">Daily Apartment</a></h4>
                            <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-2">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/depan/assets/img/project/9.png" alt="img">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By Admin</li>
                                <li><i class="fa fa-calendar-alt"></i>Marce 9 , 2020</li>
                            </ul>
                            <h4><a href="blog-details.html">Farm House</a></h4>
                            <p>Lorem ipsum dolor consectetur iicing elit, sed do eius Lorem ipsum dolo amet, costur adipisicing eiusmod.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog area end -->

    <!-- client area start -->
    <div class="client-area bg-main">
        <div class="container">
            <div class="client-slider owl-carousel">
                <div class="item">
                    <div class="thumb">
                        <img src="<?= base_url(); ?>/depan/assets/img/client/1.png" alt="img">
                    </div>
                </div>
                <div class="item">
                    <div class="thumb">
                        <img src="<?= base_url(); ?>/depan/assets/img/client/2.png" alt="img">
                    </div>
                </div>
                <div class="item">
                    <div class="thumb">
                        <img src="<?= base_url(); ?>/depan/assets/img/client/3.png" alt="img">
                    </div>
                </div>
                <div class="item">
                    <div class="thumb">
                        <img src="<?= base_url(); ?>/depan/assets/img/client/4.png" alt="img">
                    </div>
                </div>
                <div class="item">
                    <div class="thumb">
                        <img src="<?= base_url(); ?>/depan/assets/img/client/5.png" alt="img">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- client area end -->

    <!-- footer area start -->
    <footer class="footer-area style-two" style="background: url(<?= base_url(); ?>/depan/assets/img/other/1.png);">
        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="widget widget_about">
                            <h4 class="widget-title">Company</h4>
                            <div class="details">
                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur et adipisicing eiusmod tempor incididunt labore</p>
                                <p><i class="fas fa-map-marker-alt"></i> 420 Love Sreet 133/2 Mirpur City, Dhaka</p>
                                <p><i class="fas fa-phone-volume"></i> +(066) 19 5017 800 628</p>
                                <p><i class="fas fa-envelope"></i> info.contact@gmail.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="widget widget_newsfeed">
                            <h4 class="widget-title">News Feed</h4>
                            <ul>
                                <li><a href="#"><i class="far fa-user"></i>By Admin</a><span><i class="far fa-calendar-alt"></i>Marce 9 , 2020</span></li>
                                <li><a href="#"><i class="far fa-user"></i>By Admin</a><span><i class="far fa-calendar-alt"></i>Marce 9 , 2020</span></li>
                                <li><a href="#"><i class="far fa-user"></i>By Admin</a><span><i class="far fa-calendar-alt"></i>Marce 9 , 2020</span></li>
                                <li><a href="#"><i class="far fa-user"></i>By Admin</a><span><i class="far fa-calendar-alt"></i>Marce 9 , 2020</span></li>
                                <li><a href="#"><i class="far fa-user"></i>By Admin</a><span><i class="far fa-calendar-alt"></i>Marce 9 , 2020</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-9">
                        <div class="widget widget_subscribe mb-4">
                            <h4 class="widget-title">Newslatter</h4>
                            <div class="details">
                                <p>Lorem ipsum dolor sit amet,</p>
                                <div class="footer-subscribe-inner">
                                    <input type="text" placeholder="Your Mail">
                                    <a class="btn btn-base" href="#">Subscribe</a>
                                </div>
                            </div>
                        </div>
                        <div class="widget widget-tags pt-2">
                            <h5 class="widget-title mb-3">House Tags</h5>
                            <div class="tagcloud mt-0">
                                <a href="#">Creative</a>
                                <a href="#">Development</a>
                                <a href="#">Beach</a>
                                <a href="#">Villa</a>
                                <a href="#">Clean</a>
                                <a href="#">Seo</a>
                                <a href="#">Appertment</a>
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
                        <p>2022, Copy Right By Solverwp. All Rights Reserved</p>
                    </div>
                    <div class="col-lg-6 text-lg-right">
                        <ul>
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="blog.html">Blog</a>
                            </li>
                            <li>
                                <a href="contact.html">Contact</a>
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
    <script src="<?= base_url(); ?>/depan/assets/js/vendor.js"></script>
    <!-- main js  -->
    <script src="<?= base_url(); ?>/depan/assets/js/main.js"></script>
</body>

</html>