<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Perusahaan</h4>


                </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="mt-0 header-title">Data Perusahaan</h4>
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
                                        <h5 class="modal-title mt-0" id="myLargeModalLabel">Tambah Perusahaan</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                            <?php if(session()->getFlashdata('error')): ?>
                                                <p style="color:red"><?= session()->getFlashdata('error') ?></p>
                                            <?php endif; ?>
                                                <form class="" action="<?= base_url('admin/perusahaan_save'); ?>" method="post">
                                                <?= csrf_field() ?>
                                                    <div class="card-body bootstrap-select-1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-0">Nama Perusahaan</h6>
                                                                <textarea class="form-control" name="nama_perusahaan" id="" cols="30" rows="2" required></textarea>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-3">Nama Penanggungjawab</h6>
                                                                <input type="text" class="form-control" name="penanggungjawab" required>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-3">CP / No HP</h6>
                                                                <input type="number" class="form-control" name="no_hp" required>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-3">Username</h6>
                                                                <input type="text" class="form-control" name="username" required>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-3">Password (minimal 5 karakter, 1 huruf kapital dan satu karakter unik (!@#$%^&*))</h6>
                                                                <input type="text" class="form-control" name="password" required>
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
                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th style="width: 5%;">No</th>
                                    <th>Perusahaan / PT</th>
                                    <th>Penanngungjawab</th>
                                    <th>No Hp / CP</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $no = 1;
                                foreach ($perusahaan as $k) : ?>
                                    <tr>
                                        <td><?= $no++; ?></td>
                                        <td><?= $k['nama_perusahaan']; ?></td>
                                        <td><?= $k['penanggungjawab']; ?></td>
                                        <td><?= $k['no_hp']; ?></td>
                                        <td>
                                            <a href="<?= base_url(); ?>admin/perusahaan/edit/<?= $k['id'] ?>" class="btn btn-sm btn-success"><i class="fas fa-edit"></i></a>
                                            <a href="<?= base_url(); ?>admin/perusahaan/hapus/<?= $k['id'] ?>" onclick="return confirm('apakah anda ingin hapus data?');" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
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
<script>
    document.addEventListener("DOMContentLoaded", function() {
        <?php if(session()->getFlashdata('error')): ?>
            var myModal = new bootstrap.Modal(document.querySelector('.tambahKegiatan'));  // Pilih modal berdasarkan class
            myModal.show();  // Tampilkan modal jika terdapat error
        <?php endif; ?>
    });
</script>
<?= $this->endSection() ?>