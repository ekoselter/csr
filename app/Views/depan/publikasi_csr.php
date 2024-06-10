<?= $this->extend('layout/depan/template') ?>

<?= $this->section('content') ?>

<!-- breadcrumb start -->
<div class="breadcrumb-area bg-overlay-2" style="background-image:url('assets/img/other/9.png')">
    <div class="container">
        <div class="breadcrumb-inner">
            <div class="section-title text-center">
                <h2 class="page-title">Publikasi</h2>
                <ul class="page-list">
                    <li><a href="<?= base_url(); ?>">Home</a></li>
                    <li>Data Publikasi</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb end -->

<!-- blog-page- Start -->
<div class="blog-page-area pd-top-120">
    <div class="container">
        <div class="row justify-content-center">
            <?php foreach ($publikasi as $k) : ?>
                <div class="col-lg-4 col-md-6">
                    <div class="single-product-wrap style-bottom">
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/publikasi/<?= $k['foto']; ?>" alt="img">
                        </div>
                        <div class="product-details-inner">
                            <ul class="meta-inner">
                                <li><i class="fa fa-user"></i>By <?= $k['author']; ?></li>
                                <li><i class="fa fa-calendar-alt"></i>Marce 9 , 2020</li>
                            </ul>
                            <h4><a href="#"><?= $k['judul']; ?></a></h4>
                            <p><?= $k['deskripsi']; ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<!-- blog-page- end -->

<?= $this->endSection() ?>