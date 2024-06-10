<?= $this->extend('layout/depan/template') ?>

<?= $this->section('content') ?>

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

<div class="blog-area pd-top-118 pd-bottom-90">
    <div class="container">
        <div class="section-title text-center">
            <!-- <h6>Blog & News</h6> -->
            <h2>Alur Kegiatan CSR di Kabupaten Kulon Progo</h2>
        </div>
        <div class="row">

            <div class="col-lg-12 col-md-12">
                <img src="<?= base_url(); ?>/depan/assets/img/alur.png" alt="">
            </div>

        </div>
    </div>
</div>

<!-- blog area start -->
<div class="blog-area pd-top-118 pd-bottom-90">
    <div class="container">
        <div class="section-title text-center">
            <!-- <h6>Blog & News</h6> -->
            <h2>Publikasi Terbaru</h2>
        </div>
        <div class="row">
            <?php foreach ($publikasi as $k) : ?>
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-2">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/publikasi/<?= $k['foto']; ?>" alt="img" style="max-height: 163px; width:100%">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By <?= $k['author']; ?></li>
                                <li><i class="fa fa-calendar-alt"></i><?= date('Y-m-d', strtotime($k['tgl'])); ?></li>
                            </ul>
                            <h5>
                                <a href="<?= base_url(); ?>publikasi_detail/<?= $k['slug']; ?>">
                                    <?= substr(strip_tags($k['judul']), 0, 25); ?>...
                                </a>
                            </h5>
                            <p><?= substr(strip_tags($k['deskripsi']), 0, 100); ?>...</p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<!-- Blog area end -->

<!-- client area start -->
<!-- <div class="client-area bg-main">
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
</div> -->
<!-- client area end -->

<?= $this->endSection() ?>