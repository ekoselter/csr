<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Edit Data Perusahaan</h4>


                </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col-lg-12">
                                <form class="" action="<?= base_url(); ?>/perusahaan_update" method="post">
                                    <?= csrf_field() ?>
                                    <input type="hidden" name="id_user" value="<?= $d['id_user']; ?>">
                                    <div class="card-body bootstrap-select-1">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h6 class="input-title mt-0">Nama Perusahaan</h6>
                                                <textarea class="form-control" name="nama_perusahaan" id="" cols="30" rows="2"><?= $d['nama_perusahaan']; ?>
                                                </textarea>
                                            </div>

                                            <div class="col-md-6">
                                                <h6 class="input-title mt-3">Nama Penanggungjawab</h6>
                                                <input type="text" class="form-control" name="penanggungjawab" value="<?= $d['penanggungjawab']; ?>">
                                            </div>

                                            <div class="col-md-6">
                                                <h6 class="input-title mt-3">CP / No HP</h6>
                                                <input type="number" class="form-control" name="no_hp" value="<?= $d['no_hp']; ?>">
                                            </div>

                                            <div class="col-md-6">
                                                <h6 class="input-title mt-3">Username</h6>
                                                <input type="text" class="form-control" name="username" value="<?= $d['username']; ?>">
                                            </div>

                                            <div class="col-md-6">
                                                <h6 class="input-title mt-3">Password</h6>
                                                <input type="text" class="form-control" name="password" value="<?= $d['password2']; ?>">
                                            </div>

                                            <div class="col-md-12 mt-4">
                                                <div class="form-group">
                                                    <div>
                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                            Submit
                                                        </button>
                                                        <a href="<?= base_url(); ?>perusahaan" class="btn btn-secondary waves-effect m-l-5">
                                                            Cancel
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                                <form action="<?= base_url(); ?>/perusahaan_update_ALL" method="post">
                                    <?= csrf_field() ?>
                                    <button type="submit" class="btn btn-warning waves-effect waves-light">Update All Passwords</button>
                                </form>
                            </div> <!-- end col -->
                        </div>

                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->

    </div> <!-- end container -->
</div>
<?= $this->endSection() ?>
<?= $this->section('script'); ?>
<?= $this->endSection() ?>