<?= $this->extend('layout/depan/template') ?>

<?= $this->section('content') ?>

<!-- breadcrumb start -->
<div class="breadcrumb-area bg-overlay-2" style="background-image:url('<?= base_url(); ?>/depan/assets/img/banner/4.png')">
    <div class="container">
        <div class="breadcrumb-inner">
            <div class="section-title text-center">
                <h2 class="page-title">Laporan</h2>
                <ul class="page-list">
                    <li><a href="index.html">Home</a></li>
                    <li>Laporan</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb end -->

<!-- add-property Start -->
<div class="add-property-area pd-top-120">
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
                            <span class="label">Ruang Lingkup</span>
                            <select name="ruang_lingkup" id="ruang_lingkup">
                                <option value="">Pilih Ruang Lingkup</option>
                                <?php foreach ($ruang_lingkup as $r) : ?>
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
                    <div class="col-md-4">
                        <div class="single-select-inner style-bg-border">
                            <span class="label">Aktifitas</span>
                            <select name="aktifitas" id="aktifitas">
                                <option value="">Pilih kegiatan</option>
                                <?php foreach ($aktifitas_filter as $k) : ?>
                                    <option value="<?= $k['aktifitas']; ?>"><?= $k['aktifitas']; ?></option>
                                <?php endforeach; ?>
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
    <div class="container">

        <div class="btn btn-base hover-none">Data Laporan</div>
        <div class="property-form-grid">
            <div id="hasilsearch">
                <div class="row">
                    <div class="col-md-12">
                        <table id="datatable" class="table table-striped dt-responsive" style="width:100%">
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
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- add-property end -->
<?= $this->endSection() ?>
<?= $this->section('script'); ?>
<script src="<?= base_url('admin'); ?>/assets/plugins/datatables/dataTables.responsive.min.js"></script>
<script>
    $(document).ready(function() {
        $('#datatable').DataTable();
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
                            $('select').niceSelect('update');
                        });
                    }
                });
            } else {
                $('#kalurahan').append($('<option>', {
                    value: '',
                    text: 'Pilih Kalurahan'
                }));
                $('select').niceSelect('update');
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
            var ruang_lingkup = $('#ruang_lingkup').val();
            var kapanewon = $('#kapanewon').val();
            var kalurahan = $('#kalurahan').val();
            var aktifitas = $('#aktifitas').val();

            $.ajax({
                url: '<?= base_url() ?>/depan/report_search',
                method: 'post',
                data: {
                    [csrfName]: csrfHash,
                    perusahaan: perusahaan,
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