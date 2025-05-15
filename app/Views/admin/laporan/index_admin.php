<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Laporan</h4>


                </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
                <div class="col-lg-12">
                    <form class="" action="<?= base_url(); ?>multi/laporan_print" method="get" enctype="multipart/form-data" target="_blank">
                        <div class="card">
                            <div class="card-body bootstrap-select-1">                              
                                <h4 class="header-title mt-0">FORM PENCARIAN</h4>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h6 class="input-title mt-0">Perusahaan</h6>
                                        <select class="select2 form-control mb-3 custom-select" name="perusahaan" id="perusahaan" style="width: 100%; height:36px;">
                                            <option value="">Pilih Perusahan</option>
                                                <?php foreach ($perusahaan as $p) : ?>
                                                    <option value="<?= $p['id']; ?>"><?= $p['nama_perusahaan']; ?></option>
                                                <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <h6 class="mt-lg-0 input-title">Ruang Lingkup</h6>
                                        <select class="select2 form-control mb-3 custom-select" name="ruang_lingkup" id="ruang_lingkup" style="width: 100%; height:36px;">
                                            <option value="">Ruang Lingkup</option>
                                                <?php foreach ($ruang_lingkup as $r) : ?>
                                                    <option value="<?= $r['id']; ?>"><?= $r['ket']; ?></option>
                                                <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h6 class="input-title mt-0">Kapanewon</h6>
                                        <select class="select2 form-control mb-3 custom-select" id="kapanewon" name="kapanewon" style="width: 100%; height:36px;">
                                            <option value="">Pilih Kapanewon</option>
                                                <?php foreach ($kapanewon as $k) : ?>
                                                    <option value="<?= $k['id_kapanewon']; ?>"><?= $k['nm_kapanewon']; ?></option>
                                                <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <h6 class="mt-lg-0 input-title">Kalurahan</h6>
                                        <select class="select2 form-control mb-3 custom-select" id="kalurahan" name="kalurahan" style="width: 100%; height:36px;">
                                            <option value="">Pilih Kalurahan</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h6 class="mt-lg-0 input-title">Aktifitas</h6>
                                        <select class="select2 form-control mb-3 custom-select" id="aktifitas" name="aktifitas" style="width: 100%; height:36px;">
                                            <option value="">Pilih Aktifitas</option>
                                                <?php foreach ($aktifitas_filter as $k) : ?>
                                                    <option value="<?= $k['aktifitas']; ?>"><?= $k['aktifitas']; ?></option>
                                                <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-primary waves-effect waves-light" id="search">
                                            Pencarian
                                        </button>
                                        <button type="submit" class="btn btn-danger waves-effect waves-light">
                                            Print
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div> 
            </div> 

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        
                        <h4 class="mt-0 header-title">Laporan Kegiatan CSR</h4>
                        <!-- <p class="text-muted mb-4 font-13">DataTables has most features enabled by
                            default, so all you need to do to use it with your own tables is to call
                            the construction function: <code>$().DataTable();</code>.
                            </p> -->                     
                            
                        <div id="hasilsearch">
                            <!-- <div class="card-title mb-4">
                                <a href="<?= base_url(); ?>laporan_print" target="_blank">
                                    <button type="button" class="btn btn-danger waves-effect waves-light">
                                        <i class="fa fa-print"></i> Print
                                    </button>
                                </a>
                            </div> -->
                            <table id="datatable" class="table table-bordered dt-responsive" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                    <tr>
                                        <th style="width: 5%;">No</th>
                                        <th>Perusahaan</th>
                                        <th>Bidang</th>
                                        <th>Ruang Lingkup</th>
                                        <th>Kegiatan</th>
                                        <th>Aktifitas</th>
                                        <th>Waktu Pelaksanaan</th>
                                        <th>Lokasi</th>
                                        <th>Satuan</th>
                                        <th>Volume Disalurkan</th>
                                        <th>Dana Disalurkan</th>
                                        <th>Laporan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1;
                                    foreach ($report as $r) : ?>
                                        <tr>
                                            <td style="text-align:center;"><?= $no++; ?></td>
                                            <td style="text-align:center;"><?= $r['nama_perusahaan']; ?></td>
                                            <td><?= $r['urusan_bidang']; ?></td>
                                            <td><?= $r['ruang_lingkup']; ?></td>
                                            <td><?= $r['program_kegiatan']; ?></td>
                                            <td><?= $r['aktifitas']; ?></td>
                                            <td><?= date('Y-m-d', strtotime($r['waktu'])); ?></td>
                                            <td>
                                                <b>Alamat:</b><?= $r['alamat']; ?>
                                                <br>
                                                <b>Kalurahan:</b> <?= $r['kalurahan']; ?>
                                                <br>
                                                <b>Kapanewon:</b> <?= $r['kapanewon']; ?>
                                                <br>
                                            </td>
                                            <td><?= $r['satuan']; ?></td>
                                            <td><?= $r['vol_salur']; ?></td>
                                            <td>
                                                <?php if (!empty($r['nominal'])) { ?>
                                                    <?= number_format($r['nominal'], 0, ',', '.'); ?>
                                                <?php } ?>
                                            </td>
                                            <td>
                                                <a href="<?= base_url(); ?>multi/preview_laporan/<?= $r['file'] ?>" target="_blank">
                                                        <button type="button" class="btn btn-danger waves-effect waves-light">
                                                            <i class="fa fa-eye"></i> Lihat Laporan
                                                        </button>
                                                </a>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
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
                        $('#kalurahan').append($('<option>', {
                                value: 'all_kalurahan',
                                text: 'ALL'
                            }));
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
<script>
    $(document).ready(function() {
        $('#search').click(function() {
            let csrfName = '<?= csrf_token() ?>';
            let csrfHash = '<?= csrf_hash() ?>';

            var perusahaan = $('#perusahaan').val();
            // var urusan_bidang = $('#urusan_bidang').val();
            var ruang_lingkup = $('#ruang_lingkup').val();
            var kapanewon = $('#kapanewon').val();
            var kalurahan = $('#kalurahan').val();
            // var program_kegiatan = $('#program_kegiatan').val();
            var aktifitas = $('#aktifitas').val();

            $.ajax({
                url: '<?= base_url() ?>/laporan/report_search',
                method: 'post',
                data: {
                    [csrfName]: csrfHash,
                    perusahaan: perusahaan,
                    // urusan_bidang: urusan_bidang,
                    ruang_lingkup: ruang_lingkup,
                    kapanewon: kapanewon,
                    kalurahan: kalurahan,
                    aktifitas: aktifitas,
                },
                success: function(data) {
                    $('#hasilsearch').html(data);
                }
            });
        });
    });
</script>
<?= $this->endSection() ?>