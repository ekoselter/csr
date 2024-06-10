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

                        <h4 class="mt-0 header-title">Data Kegiatan CSR</h4>
                        <!-- <p class="text-muted mb-4 font-13">DataTables has most features enabled by
                            default, so all you need to do to use it with your own tables is to call
                            the construction function: <code>$().DataTable();</code>.
                        </p> -->
                        <div class="card-title mb-4">
                            <?php if (session('level') == 0) { ?>
                                <button type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".tambahKegiatan">
                                    <i class="fa fa-plus"></i> Tambah Data
                                </button>
                                <button type="button" class="btn btn-success waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".uploadKegiatan">
                                    <i class="fa fa-plus"></i> Import Data
                                </button>
                                <a href="<?= base_url(); ?>kegiatan_upload_all">
                                    <button type="button" class="btn btn-info waves-effect waves-light">
                                        <i class="fa fa-excel"></i> Kegiatan Belum Tersubmit
                                    </button>
                                </a>
                            <?php } ?>

                            <a href="<?= base_url(); ?>print_allkegiatan" target="_blank">
                                <button type="button" class="btn btn-danger waves-effect waves-light">
                                    <i class="fa fa-print"></i> Print
                                </button>
                            </a>
                        </div>
                        <div class="modal fade tambahKegiatan" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title mt-0" id="myLargeModalLabel">Tambah Kegiatan</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <form class="" id="form" action="<?= base_url(); ?>/kegiatan_save" method="post">
                                                    <div class="card-body bootstrap-select-1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-0">Tahun</h6>
                                                                <input type="number" class="form-control" name="tahun">
                                                            </div>
                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-3">Ruang Lingkup TSP</h6>
                                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" name="ruang_lingkup" required>
                                                                    <option value="">Pilih Ruang Lingkup</option>

                                                                    <?php foreach ($ruang_lingkup as $r) : ?>
                                                                        <option value="<?= $r['id']; ?>"><?= $r['ket']; ?></option>
                                                                    <?php endforeach; ?>
                                                                </select>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-0">Urusan / Bidang</h6>
                                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" name="urusan_bidang" required>
                                                                    <option value="">Pilih Urusan / Bidang</option>

                                                                    <?php foreach ($urusan_bidang as $r) : ?>
                                                                        <option value="<?= $r['id']; ?>"><?= $r['ket']; ?></option>
                                                                    <?php endforeach; ?>
                                                                </select>
                                                            </div>

                                                            <div class="col-md-12 mt-3">
                                                                <h6 class="input-title mt-0">Program / Kegiatan</h6>
                                                                <textarea class="form-control" name="program_kegiatan" id="" cols="30" rows="2"></textarea>
                                                            </div>

                                                            <div class="col-md-12 mt-3">
                                                                <h6 class="input-title mt-0">Permasalahan</h6>
                                                                <textarea class="form-control" name="permasalahan" id="" cols="30" rows="3"></textarea>
                                                            </div>

                                                            <div class="col-md-12 mt-3">
                                                                <h6 class="input-title mt-0">Alamat</h6>
                                                                <textarea class="form-control" name="alamat" id="" cols="30" rows="2"></textarea>
                                                            </div>

                                                            <div class="col-md-4 mt-3">
                                                                <h6 class="input-title mt-0">Kapanewon</h6>
                                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" id="kapanewon" name="kapanewon" required>
                                                                    <option value="">Pilih Kapanewon</option>

                                                                    <?php foreach ($kapanewon as $k) : ?>
                                                                        <option value="<?= $k['id_kapanewon']; ?>"><?= $k['nm_kapanewon']; ?></option>
                                                                    <?php endforeach; ?>
                                                                </select>
                                                            </div>

                                                            <div class="col-md-4 mt-3">
                                                                <h6 class="input-title mt-0">Kalurahan</h6>
                                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" id="kalurahan" name="kalurahan" required>
                                                                    <option value="">Pilih Kalurahan</option>

                                                                </select>
                                                            </div>

                                                            <div class="col-md-4 mt-3">
                                                                <h6 class="input-title mt-0">Sumber Usulan</h6>
                                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" name="sumber_usulan" required>
                                                                    <option value="">Pilih Sumber Usulan</option>
                                                                    <option value="musrembang">MUSREMBANG</option>
                                                                    <option value="proposal">PROPOSAL</option>
                                                                </select>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-0">Biaya Perkiraan (start range)</h6>
                                                                <input type="text" id="biaya" class="form-control" name="biaya" oninput="updateRupiahInput()">
                                                            </div>
                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-0">Biaya Perkiraan (end range)</h6>
                                                                <input type="text" id="biaya2" class="form-control" name="biaya2" oninput="updateRupiahInput2()">
                                                            </div>

                                                            <div class="col-md-6 mt-3">
                                                                <h6 class="input-title mt-0">Keterangan</h6>
                                                                <textarea class="form-control" name="keterangan" id="" cols="30" rows="3"></textarea>
                                                            </div>
                                                            <div class="col-md-6 mt-3">
                                                                <h6 class="input-title mt-0">OPD</h6>
                                                                <textarea class="form-control" name="opd" id="" cols="30" rows="3"></textarea>
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
                        <div class="modal fade uploadKegiatan" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title mt-0" id="myLargeModalLabel">Upload Kegiatan</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <form class="" action="<?= base_url(); ?>kegiatan_upload" method="post" enctype="multipart/form-data">
                                                    <div class="card-body bootstrap-select-1">
                                                        <div class="row">

                                                            <!-- <div class="col-md-12">
                                                                <h6 class="input-title mt-3">Tahun</h6>
                                                                <input type="number" class="form-control" name="tahun">
                                                            </div> -->

                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-3">File Excel</h6>
                                                                <div class="card m-b-30">
                                                                    <div class="card-body">

                                                                        <input type="file" id="input-file-now" class="dropify" name="fileexcel" accept=".xls, .xlsx" />
                                                                    </div>
                                                                </div>
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
                                    <th>No</th>
                                    <th>Tahun</th>
                                    <th>Ruang Lingkup TSP</th>
                                    <th>Urusan / Bidang</th>
                                    <th>Program / Kegiatan</th>
                                    <th>Permasalahan</th>
                                    <th>Alamat</th>
                                    <th>Kapanewon</th>
                                    <th>Kalurahan</th>
                                    <th>Biaya (star range)</th>
                                    <th>Biaya (end range)</th>
                                    <th>Keterangan</th>
                                    <th>Sumber Usulan</th>
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
                                        <td><?= $k['permasalahan']; ?></td>
                                        <td><?= $k['alamat']; ?></td>
                                        <td><?= $k['kapanewon']; ?></td>
                                        <td><?= $k['kalurahan']; ?></td>
                                        <td>
                                            <?php if (!empty($k['biaya'])) { ?>
                                                <?= number_format($k['biaya'], 0, ',', '.'); ?>
                                            <?php } ?>
                                        </td>
                                        <td>
                                            <?php if (!empty($k['biaya2'])) { ?>
                                                <?= number_format($k['biaya2'], 0, ',', '.'); ?>
                                            <?php } ?>
                                        </td>
                                        <td><?= $k['keterangan']; ?></td>
                                        <td><?= strtoupper($k['sumber_usulan']); ?></td>
                                        <td><?= $k['opd']; ?></td>
                                        <td>
                                            <?php if (session('level') > 0) { ?>
                                                <button type="button" class="btn btn-primary waves-effect waves-light btn-sm" data-toggle="modal" data-animation="bounce" data-target=".pilihKegiatan<?= $k['id'] ?>">
                                                    Pilih CSR
                                                </button>
                                            <?php } ?>
                                            <?php if (session('level') == 0) { ?>
                                                <a href="<?= base_url(); ?>kegiatan_csr/detail/<?= $k['id'] ?>" class="btn btn-sm btn-info"><i class="fas fa-list"></i></a>
                                                <a href="<?= base_url(); ?>kegiatan_csr/edit/<?= $k['id'] ?>" class="btn btn-sm btn-success"><i class="fas fa-edit"></i></a>
                                                <a href="<?= base_url(); ?>kegiatan_hapus/<?= $k['id'] ?>" onclick="return confirm('apakah anda ingin hapus data?');" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
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
                                                            <form class="" action="<?= base_url(); ?>/pilih_kegiatan" method="post">
                                                                <div class="card-body bootstrap-select-1">
                                                                    <div class="row">
                                                                        <?php $nilaiFloat = floatval($k['biaya']);
                                                                        $biaya = number_format($nilaiFloat, 0, ',', '.');
                                                                        ?>
                                                                        <input type="hidden" name="id_kegiatan_csr" value="<?= $k['id'] ?>">
                                                                        <div class="col-md-6">
                                                                            <h6 class="input-title mt-0">Total Seluruh Biaya</h6>
                                                                            <input type="text" class="form-control" value="<?= $biaya; ?>" readonly>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <h6 class="input-title mt-0">Biaya yang akan di salurkan</h6>
                                                                            <input type="text" id="nominal<?php echo $k['id'] ?>" class="form-control" name="nominal" oninput="updatenominal<?php echo $k['id'] ?>()">
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
<script>
    $(document).ready(function() {
        $('#kapanewon').change(function() {
            var id_kapanewon = $(this).val();
            $('#kalurahan').empty();
            if (id_kapanewon !== "") {
                // console.log(id_kapanewon);
                $.ajax({
                    type: "GET",
                    url: "<?= base_url() ?>/kegiatan_csr/getkalurahan/" + id_kapanewon,
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
<script type="text/javascript">
    function formatRupiah(angka) {
        var number_string = angka.toString().replace(/[^,\d]/g, ''),
            split = number_string.split(','),
            sisa = split[0].length % 3,
            rupiah = split[0].substr(0, sisa),
            ribuan = split[0].substr(sisa).match(/\d{3}/gi);

        if (ribuan) {
            separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }

        rupiah = split[1] !== undefined ? rupiah + ',' + split[1] : rupiah;
        return rupiah;
        // return 'Rp ' + rupiah;
    }

    function updateRupiahInput() {
        var inputElement = document.getElementById('biaya');
        var inputValue = inputElement.value.replace(/[^\d]/g, ''); // Hapus karakter selain angka
        inputElement.value = formatRupiah(inputValue);
    }

    function updateRupiahInput2() {
        var inputElement = document.getElementById('biaya2');
        var inputValue = inputElement.value.replace(/[^\d]/g, ''); // Hapus karakter selain angka
        inputElement.value = formatRupiah(inputValue);
    }
    <?php
    foreach ($kegiatan as $k) : ?>

        function updatenominal<?php echo $k['id'] ?>() {
            var inputElement = document.getElementById('nominal<?php echo $k['id'] ?>');
            var inputValue = inputElement.value.replace(/[^\d]/g, ''); // Hapus karakter selain angka
            inputElement.value = formatRupiah(inputValue);
        }
    <?php endforeach; ?>
</script>
<?= $this->endSection() ?>