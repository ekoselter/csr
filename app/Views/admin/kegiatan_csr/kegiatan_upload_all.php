<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Kegiatan CSR</h4>


                </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="mt-0 header-title">Data Kegiatan CSR Belum Tersubmit</h4>
                        <!-- <p class="text-muted mb-4 font-13">DataTables has most features enabled by
                            default, so all you need to do to use it with your own tables is to call
                            the construction function: <code>$().DataTable();</code>.
                        </p> -->
                        <div class="card-title mb-4">
                            <?php if (session('level') == 0) { ?>
                                <a href="<?= base_url(); ?>kegiatan_csr">
                                    <button type="button" class="btn btn-default waves-effect waves-light">
                                        <i class="fa fa-arrow-left"></i> Kembali
                                    </button>
                                </a>
                                <a href="<?= base_url(); ?>admin/kegiatan_upload_submit">
                                    <button type="button" class="btn btn-success waves-effect waves-light">
                                        <i class="fa fa-save"></i> Submit Data
                                    </button>
                                </a>
                                <a href="<?= base_url(); ?>admin/kegiatan_upload_kosong">
                                    <button type="button" class="btn btn-danger waves-effect waves-light">
                                        <i class="fa fa-trash"></i> Kosongkan Data
                                    </button>
                                </a>
                            <?php } ?>
                        </div>
                        <table id="datatable" class="table table-bordered dt-responsive" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Tahun</th>
                                    <th>Ruang Lingkup TSP</th>
                                    <th>Urusan / Bidang</th>
                                    <th>Program / Kegiatan</th>
                                    <th>Aktifitas</th>
                                    <th>Alamat</th>
                                    <th>Kapanewon</th>
                                    <th>Kalurahan</th>
                                    <th>Perkiraan Biaya</th>
                                    <th>Volume</th>
                                    <th>Satuan</th>
                                    <th>OPD</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $no = 1;
                                foreach ($kegiatan as $k) : ?>
                                    <tr>
                                        <td><?= $no++; ?></td>
                                        <td><?= $k['tahun']; ?></td>
                                        <td><?= $k['ruang_lingkup']; ?></td>
                                        <td><?= $k['urusan_bidang']; ?></td>
                                        <td><?= $k['program_kegiatan']; ?></td>
                                        <td><?= $k['aktifitas']; ?></td>
                                        <td><?= $k['alamat']; ?></td>
                                        <td><?= $k['kapanewon']; ?></td>
                                        <td><?= $k['kalurahan']; ?></td>
                                        <td>
                                            <?php if (!empty($k['biaya'])) { ?>
                                                <?= number_format($k['biaya'], 0, ',', '.'); ?>
                                            <?php } ?>
                                        </td>
                                        <td><?= $k['volume']; ?></td>
                                        <td><?= strtoupper($k['satuan']); ?></td>
                                        <td><?= $k['opd']; ?></td>
                                        <td>
                                            <?php if (session('level') == 0) { ?>
                                                <a href="<?= base_url(); ?>admin/kegiatan_upload/edit/<?= $k['id'] ?>" class="btn btn-sm btn-success"><i class="fas fa-edit"></i></a>
                                                <a href="<?= base_url(); ?>admin/kegiatan_upload_hapus/<?= $k['id'] ?>" onclick="return confirm('apakah anda ingin hapus data?');" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
                                            <?php } ?>
                                        </td>
                                    </tr>
                                    <div class="modal fade pilihKegiatan<?= $k['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title mt-0" id="myLargeModalLabel">Pilih Kegiatan</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <form class="" action="<?= base_url(); ?>admin/pilih_kegiatan" method="post">
                                                            <?= csrf_field() ?>
                                                                <div class="card-body bootstrap-select-1">
                                                                    <div class="row">
                                                                        <input type="hidden" name="id_kegiatan_csr" value="<?= $k['id'] ?>">
                                                                        <div class="col-md-6">
                                                                            <h6 class="input-title mt-0">Total Seluruh Biaya</h6>
                                                                            <input type="number" class="form-control" value="<?= $k['biaya']; ?>">
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <h6 class="input-title mt-0">Biaya yang akan di salurkan</h6>
                                                                            <input type="number" class="form-control" name="nominal">
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
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>

    </div> <!-- end container -->
</div>
<?= $this->endSection() ?>
<?= $this->section('script'); ?>
<script>
    $(document).ready(function() {
        $('#datatable').DataTable({
            // "autoWidth": false,
            // "responsive": true,
            // "lengthChange": false
        });
    });
</script>
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<?= $this->endSection() ?>