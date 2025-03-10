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

                        <h4 class="mt-0 header-title">Data Kegiatan CSR Terpilih</h4>
                        <!-- <p class="text-muted mb-4 font-13">DataTables has most features enabled by
                            default, so all you need to do to use it with your own tables is to call
                            the construction function: <code>$().DataTable();</code>.
                        </p> -->
                        <div class="card-title mb-4">
                            <?php if (session('level') == 0) { ?>
                                <button type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".tambahKegiatan">
                                    <i class="fa fa-plus"></i> Tambah Data
                                </button>
                            <?php }else if (session('level') == 1) { ?>                          
                                <a href="<?= base_url(); ?>user/print_mykegiatan" target="_blank">
                                    <button type="button" class="btn btn-danger waves-effect waves-light">
                                        <i class="fa fa-print"></i> Print
                                    </button>
                                </a>
                            <?php } ?>
                            <!-- <button type="button" class="btn btn-danger btn-sm tombolimport">
                                <i class="fa fa-plus"></i> Import Excel
                            </button> -->
                        </div>

                        <table id="datatable" class="table table-bordered dt-responsive" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Aksi</th>
                                    <!-- <th>Ruang Lingkup TSP</th>
                                    <th>Urusan / Bidang</th> -->
                                    <th>Ruang lingkup</th>
                                    <th>Program / Kegiatan</th>
                                    <th>Aktifitas</th>
                                    <th>Alamat</th>
                                    <th>Kapanewon</th>
                                    <th>Kalurahan</th>
                                    <th>Kebutuhan biaya</th>
                                    <th>Volume</th>
                                    <th>Satuan</th>
                                    <th>OPD Pengampu</th>
                                    <th>CSR yang disalurkan</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $no = 1;
                                foreach ($kegiatan as $k) : ?>
                                    <tr>
                                        <td><?= $no++; ?></td>
                                        <td>
                                            <?php if (empty($k['file'])) { ?>
                                                <button type="button" class="btn btn-success waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".uploadLap<?= $k['id'] ?>">
                                                    <i class="fa fa-upload"></i> Upload Laporan
                                                </button>
                                            <?php } else { ?>
                                                <!-- <button type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".lihatLap<?= $k['id'] ?>">
                                                    <i class="fa fa-eye"></i> Lihat Laporan
                                                </button> -->

                                                <a href="<?= base_url(); ?>user/preview_laporan/<?= $k['file'] ?>" target="_blank">
                                                    <button type="button" class="btn btn-danger waves-effect waves-light">
                                                        <i class="fa fa-eye"></i> Lihat Laporan
                                                    </button>
                                                </a>
                                            <?php } ?>
                                        </td>
                                        <!-- <td><?= $k['ruang_lingkup']; ?></td>
                                        <td><?= $k['urusan_bidang']; ?></td> -->
                                        <td><?= $k['ruang_lingkup']; ?></td>
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
                                            <?php if (!empty($k['nominal'])) { ?>
                                                <?= number_format($k['nominal'], 0, ',', '.'); ?>
                                            <?php } ?>
                                        </td>

                                    </tr>
                                    <!-- modal upload -->
                                    <div class="modal fade uploadLap<?= $k['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title mt-0" id="myLargeModalLabel">Upload Laporan</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>                                                   
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <form class="" action="<?= base_url(); ?>user/upload_laporan" method="post" enctype="multipart/form-data">
                                                            <?= csrf_field() ?>
                                                                <input type="hidden" name="id" value="<?= $k['id']; ?>">
                                                                <div class="card-body bootstrap-select-1">
                                                                    <div class="row">
                                                                        <!-- <div class="col-md-12">
                                                                            <div class="m-b-30">
                                                                                <a href="<?= base_url(); ?>user/kegiatan_csr/format_kegiatan" class="btn btn-success">Download Format</a>
                                                                            </div>
                                                                        </div> -->
                                                                        <div class="col-md-12">
                                                                            <h6 class="input-title mt-0">Tanggal Pelaksanaan</h6>
                                                                            <div class="card m-b-30">
                                                                                <input type="date" class="form-control" name="tgl_pelaksanaan" />
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <h6 class="input-title mt-0">File Laporan (dapat berupa foto dalam pdf)</h6>
                                                                            <div class="card m-b-30">
                                                                                <div class="card-body">

                                                                                    <input type="file" name="laporan" accept=".pdf" required/>
                                                                                </div>
                                                                            </div>
                                                                            <p>Upload File dengan format .pdf maksimal 500 KB</p>
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

                                    <!-- modal lihat -->
                                    <div class="modal fade lihatLap<?= $k['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title mt-0" id="myLargeModalLabel">Lihat Laporan</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <form class="" action="<?= base_url('user/upload_laporan'); ?>" method="post" enctype="multipart/form-data">
                                                            <?= csrf_field() ?>
                                                                <input type="text" name="id" value="<?= $k['file']; ?>">
                                                                <img src=<?= base_url('laporan/'.$k['file']); ?>>
                                                                <div class="card-body bootstrap-select-1">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <h6 class="input-title mt-0">Tanggal Pelaksanaan</h6>
                                                                            <div class="card m-b-30">
                                                                                <input type="date" class="form-control" name="tgl_pelaksanaan" />
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <h6 class="input-title mt-0">File Laporan</h6>
                                                                            <div class="card m-b-30">
                                                                                <div class="card-body">

                                                                                    <input type="file" name="laporan" />
                                                                                </div>
                                                                            </div>
                                                                            <p>Upload File dengan format .jpg, .jpeg, .png, .pdf maksimal 2 MB</p>
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
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<script>
    $(document).ready(function() {
        $('#kapanewon').change(function() {
            var id_kapanewon = $(this).val();
            $('#kalurahan').empty();
            if (id_kapanewon !== "") {
                // console.log(id_kapanewon);
                $.ajax({
                    type: "GET",
                    url: "<?= base_url() ?>user/kegiatan_csr/getkalurahan/" + id_kapanewon,
                    success: function(data) {
                        data = JSON.parse(data);
                        data.forEach(function(item) {
                            $('#kalurahan').append($('<option>', {
                                value: item.id_kalurahan,
                                text: item.nm_kalurahan
                            }));
                        });
                    }
                });
            }
        });
    });
</script>
<?= $this->endSection() ?>