<?php if (!empty($kegiatan)) { ?>
    <div id="hasilsearch">
        <div class="row">
            <div class="col-md-12">
                <table id="datatable" class="table table-striped dt-responsive" style="width:100%">
                    <thead>
                        <tr>
                            <th style="width: 5%;">No</th>
                            <th>Tahun</th>
                            <th>Bidang</th>
                            <th>Ruang Lingkup</th>
                            <th>Kegiatan</th>
                            <th>Aktifitas</th>
                            <th>Kapanewon</th>
                            <th>Kalurahan</th>
                            <!-- <th>Sumber Usulan</th> -->
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($kegiatan as $k) : ?>
                            <tr>
                                <td style="text-align:center;"><?= $no++; ?></td>
                                <td style="text-align:center;"><?= $k['tahun']; ?></td>
                                <td><?= $k['urusan_bidang']; ?></td>
                                <td><?= $k['ruang_lingkup']; ?></td>
                                <td><?= $k['program_kegiatan']; ?></td>
                                <td><?= $k['aktifitas']; ?></td>
                                <td><?= $k['kapanewon']; ?></td>
                                <td><?= $k['kalurahan']; ?></td>
                                <!-- <td><?= strtoupper($k['satuan']); ?></td> -->
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php } ?>
<?php if (empty($kegiatan)) { ?>
    <div class="row">
        <div class="col-md-12">
            <table id="datatable" class="table table-striped dt-responsive" style="width:100%">
                <thead>
                    <tr>
                        <th style="width: 5%;">No</th>
                        <th>Tahun</th>
                        <th>Bidang</th>
                        <th>Ruang Lingkup</th>
                        <th>Kegiatan</th>
                        <th>Aktifitas</th>
                        <th>Kapanewon</th>
                        <th>Kalurahan</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="8" style="text-align: center;">Data Tidak Ditemukan</td>
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