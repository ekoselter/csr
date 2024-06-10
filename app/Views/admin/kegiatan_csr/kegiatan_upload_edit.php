<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Edit Kegiatan CSR</h4>


                </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col-lg-12">
                                <form class="" action="<?= base_url(); ?>/kegiatan_upload_update" method="post">
                                    <input type="hidden" name="id" value="<?= $d['id']; ?>">
                                    <div class="card-body bootstrap-select-1">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h6 class="input-title mt-0">Tahun</h6>
                                                <input type="number" class="form-control mb-3" name="tahun" value="<?= $d['tahun']; ?>">
                                            </div>
                                            <div class="col-md-12">
                                                <h6 class="input-title mt-0">Ruang Lingkup TSP</h6>
                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" name="ruang_lingkup">
                                                    <option value="">Pilih Ruang Lingkup</option>

                                                    <?php foreach ($ruang_lingkup as $r) : ?>
                                                        <option value="<?= $r['id']; ?>" <?php if ($r['id'] == $d['id_ruang']) {
                                                                                                echo 'selected';
                                                                                            } ?>><?= $r['ket']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <h6 class="input-title mt-0">Urusan / Bidang</h6>
                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" name="urusan_bidang">
                                                    <option value="">Pilih Urusan / Bidang</option>

                                                    <?php foreach ($urusan_bidang as $r) : ?>
                                                        <option value="<?= $r['id']; ?>" <?php if ($r['id'] == $d['id_urusan']) {
                                                                                                echo 'selected';
                                                                                            } ?>><?= $r['ket']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>

                                            <div class="col-md-12 mt-3">
                                                <h6 class="input-title mt-0">Program / Kegiatan</h6>
                                                <textarea class="form-control" name="program_kegiatan" id="" cols="30" rows="2"><?= $d['program_kegiatan']; ?></textarea>
                                            </div>

                                            <div class="col-md-12 mt-3">
                                                <h6 class="input-title mt-0">Permasalahan</h6>
                                                <textarea class="form-control" name="permasalahan" id="" cols="30" rows="3"><?= $d['permasalahan']; ?></textarea>
                                            </div>

                                            <div class="col-md-12 mt-3">
                                                <h6 class="input-title mt-0">Alamat</h6>
                                                <textarea class="form-control" name="alamat" id="" cols="30" rows="2"><?= $d['alamat']; ?></textarea>
                                            </div>

                                            <div class="col-md-4 mt-3">
                                                <h6 class="input-title mt-0">Kapanewon</h6>
                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" id="kapanewon" name="kapanewon">
                                                    <option value="">Pilih Kapanewon</option>

                                                    <?php foreach ($kapanewon as $k) : ?>
                                                        <option value="<?= $k['id_kapanewon']; ?>" <?php if ($k['id_kapanewon'] == $d['id_kapanewon']) {
                                                                                                        echo 'selected';
                                                                                                    } ?>><?= $k['nm_kapanewon']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>

                                            <div class="col-md-4 mt-3">
                                                <input type="hidden" id="kalurahan_lama" value="<?= $d['id_kalurahan']; ?>">
                                                <h6 class="input-title mt-0">Kalurahan</h6>
                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" id="kalurahan" name="kalurahan">
                                                    <option value="">Pilih Kalurahan</option>
                                                    <?php foreach ($kalurahan as $kal) : ?>
                                                        <option value="<?= $kal['id_kalurahan']; ?>" <?php if ($kal['id_kalurahan'] == $d['id_kalurahan']) {
                                                                                                            echo 'selected';
                                                                                                        } ?>><?= $kal['nm_kalurahan']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>

                                            <div class="col-md-4 mt-3">
                                                <h6 class="input-title mt-0">Sumber Usulan</h6>
                                                <select class="select2 form-control mb-3 custom-select" style="width: 100%; height:36px;" name="sumber_usulan">
                                                    <option value="">Pilih Sumber Usulan</option>
                                                    <option value="musrembang" <?php if ($d['sumber_usulan'] == 'musrembang') {
                                                                                    echo 'selected';
                                                                                } ?>>MUSREMBANG</option>
                                                    <option value="proposal" <?php if ($d['sumber_usulan'] == 'proposal') {
                                                                                    echo 'selected';
                                                                                } ?>>PROPOSAL</option>
                                                </select>
                                            </div>

                                            <div class="col-md-6">
                                                <h6 class="input-title mt-0">Biaya Perkiraan (start range)</h6>
                                                <input type="number" class="form-control" name="biaya" value="<?= $d['biaya']; ?>">
                                            </div>
                                            <div class="col-md-6">
                                                <h6 class="input-title mt-0">Biaya Perkiraan (end range)</h6>
                                                <input type="number" class="form-control" name="biaya2" value="<?= $d['biaya2']; ?>">
                                            </div>

                                            <div class="col-md-6 mt-3">
                                                <h6 class="input-title mt-0">Keterangan</h6>
                                                <textarea class="form-control" name="keterangan" id="" cols="30" rows="3"><?= $d['keterangan']; ?></textarea>
                                            </div>
                                            <div class="col-md-6 mt-3">
                                                <h6 class="input-title mt-0">OPD</h6>
                                                <textarea class="form-control" name="opd" id="" cols="30" rows="3"><?= $d['opd']; ?></textarea>
                                            </div>

                                            <div class="col-md-12 mt-4">
                                                <div class="form-group">
                                                    <div>
                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                            Submit
                                                        </button>
                                                        <a href="<?= base_url(); ?>kegiatan_upload_all" class="btn btn-secondary waves-effect m-l-5">
                                                            Cancel
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                            </div> <!-- end col -->
                        </div>

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
<?= $this->endSection() ?>