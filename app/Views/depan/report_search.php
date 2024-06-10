<?php if (!empty($report)) { ?>
    <div id="hasilsearch">
        <div class="row">
            <div class="col-md-12">
                <table id="datatable" class="table table-striped dt-responsive" style="width:100%">
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
                        <th>Kegiatan</th>
                        <th>Waktu Pelaksanaan</th>
                        <th>Lokasi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="6" style="text-align: center;">Data Tidak Ditemukan</td>
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