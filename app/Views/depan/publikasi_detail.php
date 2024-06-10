<?= $this->extend('layout/depan/template') ?>

<?= $this->section('content') ?>

<!-- breadcrumb start -->
<div class="breadcrumb-area bg-overlay-2" style="background-image:url('<?= base_url(); ?>/depan/assets/img/other/4.png')">
    <div class="container">
        <div class="breadcrumb-inner">
            <div class="section-title text-center">
                <h2 class="page-title">Publikasi Details</h2>
                <ul class="page-list">
                    <li><a href="<?= base_url(); ?>">Home</a></li>
                    <li>Details</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb end -->

<!-- blog-page- Start -->
<div class="single-blog-page bg-gray pd-top-120">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="blog-details-page-inner pb-lg-5">
                    <div class="single-blog-inner bg-none">
                        <div class="details p-0 border-bottom mb-4 pb-3">
                            <!-- <div class="cat"><a href="#">Business</a></div> -->
                            <h3><?= $d['judul']; ?></h3>
                            <ul class="meta-inner">
                                <li><img src="<?= base_url(); ?>/depan/assets/img/icon/1.png" alt="img"> By <?= $d['author']; ?></li>
                                <li>
                                    <?= date('Y-m-d', strtotime($d['tgl'])); ?>
                                </li>
                            </ul>
                        </div>
                        <div class="thumb">
                            <img src="<?= base_url(); ?>/publikasi/<?= $d['foto']; ?>" alt="img">
                        </div>
                        <div class="details p-0 pt-3">
                            <p><?= $d['deskripsi']; ?></p>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <aside class="sidebar-area">
                    <!-- <div class="widget widget-search">
                        <div class="single-search-inner">
                            <input type="text" placeholder="Search your keyword">
                            <button><i class="la la-search"></i></button>
                        </div>
                    </div> -->

                    <div class="widget widget-news">
                        <h5 class="widget-title">Publikasi Terbaru</h5>
                        <?php foreach ($d_new as $k) : ?>
                            <div class="single-news-wrap media">

                                <div class="media-body align-self-center">
                                    <h6><a href="<?= base_url(); ?>publikasi_detail/<?= $k['slug']; ?>"><?= $k['judul']; ?></a></h6>
                                    <p class="date"><i class="far fa-calendar-alt"></i><?= date('Y-m-d', strtotime($k['tgl'])); ?></p>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</div>
<!-- blog-page- end -->

<?= $this->endSection() ?>