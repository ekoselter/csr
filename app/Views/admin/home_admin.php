<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>



        <div class="wrapper">
            <div class="container-fluid">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-title-box">
                            <div class="float-right hide-phone">
                                <!-- <ul class="list-inline">
                                    <li class="list-inline-item mr-3">
                                        <input class="knob" data-width="48" data-height="48" data-linecap=round
                                                           data-fgColor="#605daf" value="80" data-skin="tron" data-angleOffset="180"
                                                           data-readOnly=true data-thickness=".1"/>
                                    </li>
                                    <li class="list-inline-item">
                                        <span class="text-muted">Storage used</span>
                                        <h6>400GB/524.84GB</h6>
                                    </li>
                                </ul>                                 -->
                            </div>
                            <h4 class="page-title">DASHBOARD</h4>
                            <div class="btn-group mt-2">
                                <ol class="breadcrumb hide-phone p-0 m-0">
                                    <!-- <li class="breadcrumb-item"><a href="#">Zoogler</a></li>
                                    <li class="breadcrumb-item"><a href="#">UI Kit</a></li>
                                    <li class="breadcrumb-item active">Carousel</li> -->
                                </ol>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <!-- end page title end breadcrumb -->

                <div class="row">
                    <div class="col-lg-9">
                        <div class="card">
                            <div class="card-body">

                                <h4 class="mt-0 header-title">Alur Kegiatan CSR di Kabupaten Kulon Progo</h4>
                                <p class="text-muted mb-4 font-13"></p>

                                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" data-interval="3000">
                                    <div class="carousel-inner" role="listbox">
                                        <div class="carousel-item active">
                                            <img class="d-block mx-auto img-fluid" src="<?= base_url(); ?>/depan/assets/img/alur.png" alt="First slide">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end col -->                 
                </div> <!-- end row -->

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->

<?= $this->endSection() ?>