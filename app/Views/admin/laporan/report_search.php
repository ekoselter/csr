<?php if (!empty($report)) { ?>
    <div id="hasilsearch">
        <div class="row">
            <div class="col-md-12">
                <!-- <div class="card-title mb-4">
                    <a href="<?= base_url(); ?>laporan_print" target="_blank">
                        <button type="button" class="btn btn-danger waves-effect waves-light">
                            <i class="fa fa-print"></i> Print
                        </button>
                    </a>
                </div> -->
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
                            <th>satuan</th>
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
                                    <a href="<?= base_url(); ?>preview_laporan/<?= $r['file'] ?>" target="_blank">
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
<?php } ?>
<?php if (empty($report)) { ?>
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
                        <th>satuan</th>
                        <th>Volume Disalurkan</th>
                        <th>Dana Disalurkan</th>
                        <th>Laporan</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="12" style="text-align: center;">Data Tidak Ditemukan</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
<?php } ?>
<script>
    $(document).ready(function() {
        $('#datatable').DataTable();
            

    });
</script>