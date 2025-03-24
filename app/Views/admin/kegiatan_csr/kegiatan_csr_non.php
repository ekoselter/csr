<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Kegiatan CSR Non List</h4>


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
                                <button type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-animation="bounce" data-target=".tambahNon">
                                    <i class="fa fa-plus"></i> Tambah Data
                                </button>
                                <a href="<?= base_url(); ?>admin/print_allkegiatan_non" target="_blank">
                                    <button type="button" class="btn btn-danger waves-effect waves-light">
                                        <i class="fa fa-print"></i> Print
                                    </button>
                                </a>
                            <?php } ?>

                        </div>
                        <?php if (session()->getFlashdata('success')) : ?>
                            <div class="alert alert-success">
                                <?= session()->getFlashdata('success'); ?>
                            </div>
                        <?php endif; ?>
                        <div class="modal fade tambahNon" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title mt-0" id="myLargeModalLabel">Tambah Kegiatan Non List</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <form class="" id="form" action="<?= base_url(); ?>/admin/kegiatan_save_non" method="post" enctype="multipart/form-data">
                                                <?= csrf_field() ?>
                                                    <div class="card-body bootstrap-select-1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <h6 class="input-title mt-0">Tahun</h6>
                                                                <input type="number" class="form-control" name="tahun" required>
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
                                                                <h6 class="input-title mt-0">Aktifitas</h6>
                                                                <textarea class="form-control" name="aktifitas" id="" cols="30" rows="2"></textarea>
                                                            </div>

                                                            <div class="col-md-12 mt-3">
                                                                <h6 class="input-title mt-0">Alamat</h6>
                                                                <textarea class="form-control" name="alamat" id="" cols="30" rows="2"></textarea>
                                                            </div>

                                                            <div class="col-md-4 mt-3">
                                                                <h6 class="input-title mt-0">Kapanewon</h6>
                                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" id="kapanewonNon" name="kapanewon" required>
                                                                    <option value="">Pilih Kapanewon</option>

                                                                    <?php foreach ($kapanewon as $k) : ?>
                                                                        <option value="<?= $k['id_kapanewon']; ?>"><?= $k['nm_kapanewon']; ?></option>
                                                                    <?php endforeach; ?>
                                                                </select>
                                                            </div>

                                                            <div class="col-md-4 mt-3">
                                                                <h6 class="input-title mt-0">Kalurahan</h6>
                                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" id="kalurahanNon" name="kalurahan" required>
                                                                    <option value="">Pilih Kalurahan</option>

                                                                </select>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-0">Satuan</h6>
                                                                <input type="text" id="satuan" class="form-control" name="satuan">
                                                            </div>

                                                            <div class="col-md-6">
                                                                <h6 class="input-title mt-0">Perkiraan Biaya</h6>
                                                                <input type="text" id="biayaNon" class="form-control" name="biaya" oninput="updateRupiahInputNon()">
                                                            </div>
                                                            <div class="col-md-6 mt-3">
                                                                <h6 class="input-title mt-0">Biaya yang disalurkan</h6>
                                                                <input type="text" id="nominalNon" class="form-control" name="nominal" oninput="updateRupiahInputNon2()">
                                                            </div>
                                                            <div class="col-md-6 mt-3">
                                                                <h6 class="input-title mt-0">Volume</h6>
                                                                <input type="text" id="volume" class="form-control" name="volume">
                                                            </div>

                                                            <div class="col-md-6 mt-3">
                                                                <h6 class="input-title mt-0">OPD</h6>
                                                                <textarea class="form-control" name="opd" id="" cols="30" rows="3"></textarea>
                                                            </div>    
                                                            
                                                            <div class="col-md-12 mt-3">
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
                                                                <p style="font-size: 11px; color:crimson">Upload File dengan format .pdf maksimal 500 KB</p>
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
                                    <th>Aktifitas</th>
                                    <th>Alamat</th>
                                    <th>Kapanewon</th>
                                    <th>Kalurahan</th>
                                    <th>Perkiraan Biaya</th>
                                    <th>Volume</th>
                                    <th>Satuan</th>
                                    <th>OPD</th>        
                                    <th>Biaya disalurkan</th>
                                    <th>Waktu</th> 
                                    <th>Laporan</th>                    
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
                                            <?php if (!empty($k['nominal'])) { ?>
                                                <?= number_format($k['nominal'], 0, ',', '.'); ?>
                                            <?php } ?>
                                        </td>
                                        <td><?= date('d-m-Y', strtotime($k['waktu'])); ?></td>
                                        <td>                                  
                                            <a href="<?= base_url(); ?>multi/preview_laporan/<?= $k['file'] ?>" target="_blank">
                                                <button type="button" class="btn btn-danger waves-effect waves-light">
                                                    <i class="fa fa-eye"></i> Lihat Laporan
                                                </button>
                                            </a>                               
                                        </td>
                                        <td>
                                            <?php if (session('level') == 0) { ?>
                                                <!-- <a href="<?= base_url(); ?>admin/kegiatan_csr/detail/<?= $k['id'] ?>" class="btn btn-sm btn-info"><i class="fas fa-list"></i></a> -->
                                                <a href="<?= base_url(); ?>admin/kegiatan_csr/edit_non/<?= $k['id'] ?>" class="btn btn-sm btn-success"><i class="fas fa-edit"></i></a>
                                                <a href="<?= base_url(); ?>admin/kegiatan_hapus_non/<?= $k['id'] ?>/<?= $k['id_detail'] ?>/" onclick="return confirm('apakah anda ingin hapus data?');" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
                                            <?php } ?>
                                        </td>
                                    </tr>
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
        $('#kapanewonNon').change(function() {
            var id_kapanewon = $(this).val();
            $('#kalurahanNon').empty();
            if (id_kapanewon !== "") {
                // console.log(id_kapanewon);
                $.ajax({
                    type: "GET",
                    url: "<?= base_url() ?>/kegiatan_csr/getkalurahan/" + id_kapanewon,
                    success: function(data) {
                        data = JSON.parse(data);
                        data.forEach(function(item) {
                            $('#kalurahanNon').append($('<option>', {
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

    function updateRupiahInputNon() {
        var inputElement = document.getElementById('biayaNon');
        var inputValue = inputElement.value.replace(/[^\d]/g, ''); // Hapus karakter selain angka
        inputElement.value = formatRupiah(inputValue);
    }

    function updateRupiahInputNon2() {
        var inputElement = document.getElementById('nominalNon');
        var inputValue = inputElement.value.replace(/[^\d]/g, ''); // Hapus karakter selain angka
        inputElement.value = formatRupiah(inputValue);
    }
  
</script>
<?= $this->endSection() ?>