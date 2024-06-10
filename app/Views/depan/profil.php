<?= $this->extend('layout/depan/template') ?>

<?= $this->section('content') ?>

<!-- breadcrumb start -->
<div class="breadcrumb-area bg-overlay-2" style="background-image:url('<?= base_url(); ?>/depan/assets/img/banner/4.png')">
    <div class="container">
        <div class="breadcrumb-inner">
            <div class="section-title text-center">
                <h2 class="page-title">Profil</h2>
                <ul class="page-list">
                    <li><a href="<?= base_url(); ?>">Home</a></li>
                    <li>Profil</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb end -->

<!-- about area start -->
<div class="about-area bg-gray pd-top-120 pd-bottom-120">
    <div class="container">
        <div class="single-about-inner about-line-right bg-white">
            <div class="row no-gutter">
                <div class="col-lg-4 order-lg-12">
                    <div class="thumb" style="background: url('<?= base_url(); ?>/depan/assets/img/other/profil.png');"></div>
                </div>
                <div class="col-lg-8 order-lg-1">
                    <div class="details">
                        <div class="section-title mb-2">
                            <!-- <h6>We are offring the best real estate</h6> -->
                            <h2>Profil</h2>
                            <p>Corporate Social Responsibility (CSR) atau Tanggung Jawab Sosial Lingkungan Perusahaan (TJSLP) merupakan salah satu upaya untuk mencapai kesejahteraan dan kemakmuran masyarakat guna mewujudkan pemerataan pembangunan ekonomi yang disinergikan dengan program pembangunan daerah.</p>

                            <p>Sistem Informasi CSR-Ku merupakan wadah sinergitas pelaksanaan pembangunan melalui CSR di Kabupaten Kulon Progo. Dikelola resmi oleh Badan Perencanaan Pembangunan Daerah (BAPPEDA) Pemerintah Kabupaten Kulon Progo.</p>
                        </div>

                        <!-- <a class="btn btn-base" href="#">SEE MORE</a> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- about area end -->
<!-- contact-page-end -->

<?= $this->endSection() ?>