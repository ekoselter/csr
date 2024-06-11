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

    <h1>Data Kegiatan CSR</h1>

    <!-- Tabel untuk menampilkan data -->
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Tahun</th>
                <th>Ruang Lingkup TSP</th>
                <th>Urusan / Bidang</th>
                <th>Program / Kegiatan</th>
                <th>Alamat</th>
                <th>Kapanewon</th>
                <th>Kalurahan</th>
                <th>Perkiraan Biaya</th>
                <th>Volume</th>
                <th>Satuan</th>
                <th>OPD</th>
            </tr>
        </thead>
        <tbody>
            <?php $no = 1;
            foreach ($kegiatan as $k) : ?>
                <tr>
                    <td><?= $no++; ?></td>
                    <td><?= $k['tahun']; ?></td>
                    <td><?= $k['ruang_lingkup']; ?></td>
                    <td><?= $k['urusan_bidang']; ?></td>
                    <td><?= $k['program_kegiatan']; ?></td>
                    <td><?= $k['alamat']; ?></td>
                    <td><?= $k['kapanewon']; ?></td>
                    <td><?= $k['kalurahan']; ?></td>
                    <td>
                        <?php if (!empty($k['biaya'])) { ?>
                            <?= number_format($k['biaya'], 0, ',', '.'); ?>
                        <?php } ?>
                    </td>
                    <td><?= $k['volume']; ?></td>
                    <td><?= strtoupper($k['satuan']); ?></td>
                    <td><?= $k['opd']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <script>
        window.print();
    </script>
</body>

</html>