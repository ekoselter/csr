<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Edit Kegiatan CSR yang dipilih</h4>


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
                                <form class="" action="<?= base_url(); ?>user/my_kegiatan_csr_update" method="post">
                                    <?= csrf_field() ?>
                                    <div class="card-body bootstrap-select-1">
                                        <div class="row">                                       
                                            <div class="col-md-6">
                                                <input type="hidden" name="id" value="<?= $k['id_detail']; ?>">
                                                <div class="col-md-12">
                                                    <h6 class="input-title mt-0">Perkiraan Biaya</h6>
                                                    <input type="text" class="form-control" value="<?php echo $k['biaya'] ?>" readonly>
                                                </div>
                                                <div class="col-md-12">
                                                    <h6 class="input-title mt-3">Volume</h6>
                                                    <input type="text" class="form-control" value="<?php echo $k['volume'] ?>" readonly>
                                                </div>
                                                <div class="col-md-12 mt-3">
                                                    <h6 class="input-title mt-0">Satuan</h6>
                                                    <input type="text" class="form-control" value="<?php echo $k['satuan'] ?>" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="col-md-12 mt-0">
                                                    <h6 class="input-title mt-0">Volume yang akan di salurkan</h6>
                                                    <input type="text" id="vol_salur" class="form-control" name="vol_salur" >
                                                </div>
                                                <div class="col-md-12 mt-3">
                                                    <h6 class="input-title mt-0">Biaya yang akan di salurkan</h6>
                                                    <input type="text" id="nominal<?php echo $k['id'] ?>" class="form-control" name="nominal" oninput="updatenominal<?php echo $k['id'] ?>()">
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