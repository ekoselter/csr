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
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="mt-0 header-title">Laporan Kegiatan CSR</h4>
                        <!-- <p class="text-muted mb-4 font-13">DataTables has most features enabled by
                            default, so all you need to do to use it with your own tables is to call
                            the construction function: <code>$().DataTable();</code>.
                        </p> -->
                        <div class="card-title mb-4">
                            <a href="<?= base_url(); ?>laporan_print" target="_blank">
                                <button type="button" class="btn btn-danger waves-effect waves-light">
                                    <i class="fa fa-print"></i> Print
                                </button>
                            </a>
                        </div>
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
<?= $this->endSection() ?>