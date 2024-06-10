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

                        <h4 class="mt-0 header-title">Data Perusahaan Kegiatan <?= $csr; ?></h4>
                        <!-- <p class="text-muted mb-4 font-13">DataTables has most features enabled by
                            default, so all you need to do to use it with your own tables is to call
                            the construction function: <code>$().DataTable();</code>.
                        </p> -->
                        <div class="card-title mb-4">

                            <!-- <button type="button" class="btn btn-danger btn-sm tombolimport">
                                <i class="fa fa-plus"></i> Import Excel
                            </button> -->
                        </div>

                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Perusahaan</th>
                                    <th>Penanggungjawab</th>
                                    <th>No HP / CP</th>
                                    <th>Nominal</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $no = 1;
                                foreach ($kegiatan as $k) : ?>
                                    <tr>
                                        <td><?= $no++; ?></td>
                                        <td><?= $k['nama_perusahaan']; ?></td>
                                        <td><?= $k['penanggungjawab']; ?></td>
                                        <td><?= $k['no_hp']; ?></td>
                                        <td><?= $k['nominal']; ?></td>
                                    </tr>
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