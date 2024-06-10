<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Edit Kegiatan CSR</h4>


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
                                <form class="" action="<?= base_url(); ?>publikasi_update" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="id" value="<?= $d['id']; ?>">
                                    <div class="card-body bootstrap-select-1">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h6 class="input-title mt-0">Judul</h6>
                                                <textarea class="form-control" name="judul" id="" cols="30" rows="2"><?= $d['judul']; ?></textarea>
                                            </div>

                                            <div class="col-md-12">
                                                <h6 class="input-title mt-3">Foto</h6>
                                                <div class="card m-b-30">
                                                    <div class="card-body">

                                                        <input type="file" id="input-file-now" class="dropify" name="foto" value="<?= $d['foto']; ?>" data-default-file="<?= base_url(); ?>/publikasi/<?= $d['foto']; ?>" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <h6 class="input-title mt-3">Deskripsi</h6>
                                                <textarea id="elm1" name="deskripsi"><?= $d['deskripsi']; ?></textarea>
                                            </div>

                                            <div class="col-md-12">
                                                <h6 class="input-title mt-3">Author</h6>
                                                <input type="text" class="form-control" name="author" value="<?= $d['author']; ?>">
                                            </div>

                                            <div class="col-md-12 mt-4">
                                                <div class="form-group">
                                                    <div>
                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                            Submit
                                                        </button>
                                                        <button type="reset" class="btn btn-secondary waves-effect m-l-5">
                                                            Reset
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
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
<script src="<?= base_url('admin'); ?>/assets/plugins/dropify/js/dropify.min.js"></script>
<script src="<?= base_url('admin'); ?>/assets/pages/dropify.init.js"></script>
<!--Wysiwig js-->
<script src="<?= base_url('admin'); ?>/assets/plugins/tinymce/tinymce.min.js"></script>
<script src="<?= base_url('admin'); ?>/assets/pages/form-editor.js"></script>
<?= $this->endSection() ?>