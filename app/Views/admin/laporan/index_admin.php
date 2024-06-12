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

        <!-- CONTOH form pencarian -->
        <!-- <div class="row">
            <div class="col-sm-12">
                <div class="container">
                    <form action="">
                        <div class="btn btn-base hover-none">Form Pencarian</div>
                        <div class="property-form-grid">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="single-select-inner style-bg-border">
                                        <span class="label">Perusahaan</span>
                                        <select name="perusahaan" id="perusahaan">
                                            <option value="">Pilih Perusahan</option>
                                            <?php foreach ($perusahaan as $p) : ?>
                                                <option value="<?= $p['id']; ?>"><?= $p['nama_perusahaan']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="single-select-inner style-bg-border">
                                        <span class="label">Urusan/Bidang</span>
                                        <select name="urusan_bidang" id="urusan_bidang">
                                            <option value="">Pilih Urusan / Bidang</option>
                                            <?php foreach ($urusan_bidang as $r) : ?>
                                                <option value="<?= $r['id']; ?>"><?= $r['ket']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-select-inner style-bg-border">
                                        <span class="label">Kapanewon</span>
                                        <select id="kapanewon" name="kapanewon">
                                            <option value="">Pilih Kapanewon</option>
                                            <?php foreach ($kapanewon as $k) : ?>
                                                <option value="<?= $k['id_kapanewon']; ?>"><?= $k['nm_kapanewon']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-select-inner style-bg-border">
                                        <span class="label">Kalurahan</span>
                                        <select id="kalurahan" name="kalurahan">
                                            <option value="">Pilih Kalurahan</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-12 text-center mb-4">
                                    <button type="button" class="btn btn-base" id="search">Pencarian</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div> -->

        <div class="row">
                <div class="col-lg-12">
                    <form class="" action="<?= base_url(); ?>laporan_print" method="get" enctype="multipart/form-data" target="_blank">
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
                                        <h6 class="mt-lg-0 input-title">Urusan/Bidang</h6>
                                        <select class="select2 form-control mb-3 custom-select" name="urusan_bidang" id="urusan_bidang" style="width: 100%; height:36px;">
                                            <option value="">Pilih Urusan / Bidang</option>
                                                <?php foreach ($urusan_bidang as $r) : ?>
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

                                    <div class="col-md-6">
                                    <div>
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
                                        <th>Kegiatan</th>
                                        <th>Waktu Pelaksanaan</th>
                                        <th>Lokasi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1;
                                    foreach ($report as $r) : ?>
                                        <tr>
                                            <td style="text-align:center;"><?= $no++; ?></td>
                                            <td style="text-align:center;"><?= $r['nama_perusahaan']; ?></td>
                                            <td><?= $r['urusan_bidang']; ?></td>
                                            <td><?= $r['program_kegiatan']; ?></td>
                                            <td><?= date('Y-m-d', strtotime($r['waktu'])); ?></td>
                                            <td>
                                                <b>Alamat:</b><?= $r['alamat']; ?>
                                                <br>
                                                <b>Kalurahan:</b> <?= $r['kalurahan']; ?>
                                                <br>
                                                <b>Kapanewon:</b> <?= $r['kapanewon']; ?>
                                                <br>
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
            var perusahaan = $('#perusahaan').val();
            var urusan_bidang = $('#urusan_bidang').val();
            var kapanewon = $('#kapanewon').val();
            var kalurahan = $('#kalurahan').val();

            $.ajax({
                url: '<?= base_url() ?>/laporan/report_search',
                method: 'post',
                data: {
                    perusahaan: perusahaan,
                    urusan_bidang: urusan_bidang,
                    kapanewon: kapanewon,
                    kalurahan: kalurahan,
                },
                success: function(data) {
                    $('#hasilsearch').html(data);
                }
            });
        });
    });
</script>
<?= $this->endSection() ?>