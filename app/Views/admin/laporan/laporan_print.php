<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kegiatan CSR</title>
    <style>
        /* Aturan gaya untuk tabel */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>

    <h1>Laporan Kegiatan CSR</h1>

    <!-- Tabel untuk menampilkan data -->
    <table>
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
                <th>Satuan</th>
                <th>Volume Disalurkan</th>
                <th>Dana Disalurkan</th>
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
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <script>
        window.print();
    </script>
</body>

</html>