<?= $this->extend('layout/depan/template') ?>

<?= $this->section('content') ?>

<!-- breadcrumb start -->
<div class="breadcrumb-area bg-overlay-2" style="background-image:url('<?= base_url(); ?>/depan/assets/img/banner/4.png')">
    <div class="container">
        <div class="breadcrumb-inner">
            <div class="section-title text-center">
                <h2 class="page-title">Kontak Kami</h2>
                <ul class="page-list">
                    <li><a href="<?= base_url(); ?>">Home</a></li>
                    <li>Kontak Kami</li>
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
                    <div class="thumb" style="background: url(assets/img/other/2.png);"></div>
                </div>
                <div class="col-lg-8 order-lg-1">
                    <div class="details">
                        <div class="section-title mb-2">
                            <!-- <h6>We are offring the best real estate</h6> -->
                            <h2>Kontak Kami</h2>
                            <p>Do you have any queries ? You can visit our office during business hours.</p>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="contact-single-list">
                                    <!-- <h5>India Office</h5> -->
                                    <p><i class="fas fa-calendar-day" aria-hidden="true"></i> Senin - Jumat</p>
                                    <p><i class="fas fa-clock" aria-hidden="true"></i> 09:00 - 16:30 PM</p>
                                    <p><i class="fas fa-map-marker-alt" aria-hidden="true"></i> Gedung BAPPEDA Jl. Perwakilan Nomor 1 Wates, Kulon Progo, Daerah Istimewa Yogyakarta</p>
                                    <p><i class="fas fa-phone-volume" aria-hidden="true"></i> (0274) 773247 Fax: (0274) 774126</p>
                                    <p><i class="fas fa-envelope" aria-hidden="true"></i> admin.csrku@gmail.com</p>
                                    <br><br>
                                    <h5>Lokasi Kami : </h5>
                                </div>
                            </div>
                        </div>
                        <!-- <a class="btn btn-base" href="#">SEE MORE</a> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact-page-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3952.35256323879!2d110.1574900750057!3d-7.858121892163685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7afb3ccb988d5d%3A0x6ee522690d5f1368!2sBAPPEDA%20(Badan%20Perencanaan%20Pembangunan%20Daerah)%20Kabupaten%20Kulon%20Progo!5e0!3m2!1sid!2sid!4v1701757899023!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- about area end -->
<!-- contact-page-end -->

<?= $this->endSection() ?>