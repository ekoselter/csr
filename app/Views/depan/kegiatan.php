<?= $this->extend('layout/depan/template') ?>

<?= $this->section('content') ?>

<!-- breadcrumb start -->
<div class="breadcrumb-area bg-overlay-2" style="background-image:url('<?= base_url(); ?>/depan/assets/img/banner/4.png')">
    <div class="container">
        <div class="breadcrumb-inner">
            <div class="section-title text-center">
                <h2 class="page-title">Kegiatan</h2>
                <ul class="page-list">
                    <li><a href="index.html">Home</a></li>
                    <li>Kegiatan</li>
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
                        <label class="single-input-inner style-bg-border">
                            <span class="label">Tahun</span>
                            <input type="text" id="tahun" name="tahun">
                        </label>
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
                    <div class="col-md-4">
                        <div class="single-select-inner style-bg-border">
                            <span class="label">Kegiatan</span>
                            <select name="kegiatan" id="kegiatan">
                                <option value="">Pilih kegiatan</option>
                                <?php foreach ($kegiatan_filter as $k) : ?>
                                    <option value="<?= $k['program_kegiatan']; ?>"><?= $k['program_kegiatan']; ?></option>
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

        <div class="btn btn-base hover-none">Data Kegiatan</div>
        <div class="property-form-grid">
            <div id="hasilsearch">
                <div class="row">
                    <div class="col-md-12">
                        <table id="datatable" class="table table-striped dt-responsive" style="width:100%">
                            <thead>
                                <tr>
                                    <th style="width: 5%;">No</th>
                                    <th>Tahun</th>
                                    <th>Bidang</th>
                                    <th>Kegiatan</th>
                                    <th>Kapanewon</th>
                                    <th>Kalurahan</th>
                                    <th>Sumber Usulan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 1;
                                foreach ($kegiatan as $k) : ?>
                                    <tr>
                                        <td style="text-align:center;"><?= $no++; ?></td>
                                        <td style="text-align:center;"><?= $k['tahun']; ?></td>
                                        <td><?= $k['urusan_bidang']; ?></td>
                                        <td><?= $k['program_kegiatan']; ?></td>
                                        <td><?= $k['kapanewon']; ?></td>
                                        <td><?= $k['kalurahan']; ?></td>
                                        <td><?= strtoupper($k['satuan']); ?></td>
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
            var tahun = $('#tahun').val();
            var urusan_bidang = $('#urusan_bidang').val();
            var kapanewon = $('#kapanewon').val();
            var kalurahan = $('#kalurahan').val();
            var kegiatan = $('#kegiatan').val();
            // console.log(kegiatan);

            $.ajax({
                url: '<?= base_url() ?>/depan/kegiatan_search',
                method: 'post',
                data: {
                    tahun: tahun,
                    urusan_bidang: urusan_bidang,
                    kapanewon: kapanewon,
                    kalurahan: kalurahan,
                    kegiatan: kegiatan,
                },
                success: function(data) {
                    $('#hasilsearch').html(data);
                }
            });
        });
    });
</script>
<?= $this->endSection() ?>