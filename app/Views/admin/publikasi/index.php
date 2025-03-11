<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Publikasi</h4>


                </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="mt-0 header-title">Data Publikasi</h4>
                        <!-- <p class="text-muted mb-4 font-13">DataTables has most features enabled by
                            default, so all you need to do to use it with your own tables is to call
                            the construction function: <code>$().DataTable();</code>.
                        </p> -->
                        <div class="card-title mb-4">
                            <button type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".tambahKegiatan">
                                <i class="fa fa-plus"></i> Tambah Data
                            </button>
                            <!-- <button type="button" class="btn btn-danger btn-sm tombolimport">
                                <i class="fa fa-plus"></i> Import Excel
                            </button> -->
                        </div>
                        <div class="modal fade tambahKegiatan" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title mt-0" id="myLargeModalLabel">Tambah Publikasi</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <form class="" action="<?= base_url('multi/publikasi_save'); ?>" method="post" enctype="multipart/form-data">
                                                <?= csrf_field() ?>
                                                    <div class="card-body bootstrap-select-1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-0">Judul</h6>
                                                                <textarea class="form-control" name="judul" id="" cols="30" rows="2" required></textarea>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-3">Foto</h6>
                                                                <div class="card m-b-30">
                                                                    <div class="card-body">

                                                                        <input type="file" id="input-file-now" class="dropify" name="foto" required />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-3">Deskripsi</h6>
                                                                <textarea id="elm1" name="deskripsi"></textarea>
                                                            </div>

                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-3">Author</h6>
                                                                <input type="text" class="form-control" name="author" value="<?= session('username'); ?>">
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
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div>
                        <table id="datatable" class="table table-bordered dt-responsive" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th style="width: 5%;">No</th>
                                    <th>Foto</th>
                                    <th>Judul</th>
                                    <th>Deskripsi</th>
                                    <th>Author</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $no = 1;
                                foreach ($publikasi as $k) : ?>
                                    <tr>
                                        <td><?= $no++; ?></td>
                                        <td>
                                            <img class="rounded mr-2 mo-mb-2" alt="200x200" style="width: 200px;" src="<?= base_url(); ?>/publikasi/<?= $k['foto']; ?>" data-holder-rendered="true">
                                        </td>
                                        <td><?= $k['judul']; ?></td>
                                        <td><?= strip_tags(html_entity_decode($k['deskripsi'])); ?></td>
                                        <td><?= $k['author']; ?></td>
                                        <td>
                                            <?php if (session('level') == 0) { ?>
                                                <?php if ($k['status'] == 0) { ?>
                                                    <a href="<?= base_url(); ?>multi/publikasi_view/<?= $k['slug'] ?>" class="btn btn-sm btn-info"><i class="fas fa-eye"></i></a>
                                                <?php } else { ?>
                                                    <a href="<?= base_url(); ?>multi/publikasi_view/<?= $k['slug'] ?>" class="btn btn-sm btn-info"><i class="fas fa-eye-slash"></i></a>
                                            <?php }
                                            } ?>
                                            <a href="<?= base_url(); ?>multi/publikasi_edit/<?= $k['id'] ?>" class="btn btn-sm btn-success"><i class="fas fa-edit"></i></a>
                                            <a href="<?= base_url(); ?>multi/publikasi_hapus/<?= $k['id'] ?>" onclick="return confirm('apakah anda ingin hapus data?');" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->

    </div> <!-- end container -->
</div>
<?= $this->endSection() ?>
<?= $this->section('script'); ?>
<script>
    $(function() {
        $('#datatable').DataTable({
            "wrap": true,
            "scrollX": true, // Aktifkan scroll horizontal
            "scrollCollapse": true, // Aktifkan perbaikan scroll
            "paging": true, // Nonaktifkan paging jika tidak dibutuhkan
            // Anda juga dapat mengatur lebar kontainer tabel jika diperlukan
            "scrollXInner": "100%", // Mengisi seluruh lebar kontainer

        });
    });
</script>

<?= $this->endSection() ?>