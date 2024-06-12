<?= $this->extend('layout/admin/index') ?>

<?= $this->section('content') ?>

<div class="wrapper">
    <div class="container-fluid">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">

                    <h4 class="page-title">Preview Laporan</h4>
                    <div class="container">
                        <div id="pdfContainer"></div>

                        <script>
                            // Path ke file PDF yang ingin di-preview
                            var pdfPath = "<?php echo base_url('laporan/'.$nm_file); ?>"; // Ganti 'sample.pdf' dengan nama file PDF yang ingin di-preview

                            // Ambil objek PDF.js
                            var loadingTask = pdfjsLib.getDocument(pdfPath);

                            loadingTask.promise.then(function(pdf) {
                                // Mendapatkan jumlah halaman PDF
                                var numPages = pdf.numPages;

                                // Membuat array untuk menyimpan promise untuk setiap halaman
                                var pagesPromises = [];

                                // Mengambil promise untuk setiap halaman
                                for (var i = 1; i <= numPages; i++) {
                                    pagesPromises.push(pdf.getPage(i));
                                }

                                // Menunggu semua promise selesai dan melakukan render untuk setiap halaman
                                Promise.all(pagesPromises).then(function(pages) {
                                    pages.forEach(function(page) {
                                        var scale = 1.5;
                                        var viewport = page.getViewport({ scale: scale });

                                        // Membuat canvas untuk menampilkan halaman PDF
                                        var canvas = document.createElement('canvas');
                                        var context = canvas.getContext('2d');
                                        canvas.height = viewport.height;
                                        canvas.width = viewport.width;

                                        var renderContext = {
                                            canvasContext: context,
                                            viewport: viewport
                                        };

                                        // Render halaman PDF ke dalam canvas
                                        page.render(renderContext).promise.then(function() {
                                            document.getElementById('pdfContainer').appendChild(canvas);
                                        });
                                    });
                                });
                            });
                        </script>
                        </div>
                    </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->

    </div> <!-- end container -->
</div>
<?= $this->endSection() ?>
<?= $this->section('script'); ?>
<?= $this->endSection() ?>