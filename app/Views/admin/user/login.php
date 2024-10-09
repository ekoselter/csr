<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Website Resmi CSR Kabupaten Kulon Progo</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Mannatthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="shortcut icon" href="<?= base_url(); ?>/depan/assets/img/logo_header.png">

    <link href="<?= base_url('admin'); ?>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<?= base_url('admin'); ?>/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="<?= base_url('admin'); ?>/assets/css/style.css" rel="stylesheet" type="text/css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

</head>


<body>


    <!-- Begin page -->
    <div class="accountbg" style="background: url('<?= base_url(); ?>/admin/assets/images/bg-login.png');"></div>
    <div class="wrapper-page">

        <div class="card">
            <div class="card-body">

                <div class="text-center m-b-15">
                    <a href="<?= base_url(); ?>" class="logo logo-admin"><img src="<?= base_url(); ?>/depan/assets/img/logo_header.png" height="50" alt="logo"></a>
                </div>

                <?php if (session()->getFlashdata('error')): ?>
                    <div class="alert alert-danger">
                        <?= session()->getFlashdata('error') ?>
                    </div>
                <?php endif; ?>
                
                <div class="p-3">
                    <form class="form-horizontal m-t-20" action="<?= base_url(); ?>verifikasi" method="post">
                    <?= csrf_field() ?>
                        <div class="form-group row">
                            <div class="col-12">
                                <input class="form-control" type="text" required="" placeholder="Username" name="username">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-12">
                                <input class="form-control" type="password" required="" placeholder="Password" name="password">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <div class="col-12">
                                <!-- Google reCAPTCHA v2 -->
                                <div class="g-recaptcha" data-sitekey="<?= getenv('RECAPTCHA_SITE_KEY') ?>"></div>
                            </div>
                        </div>

                        <!-- <div class="form-group row">
                            <div class="col-12">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">Remember me</label>
                                </div>
                            </div>
                        </div> -->

                        <div class="form-group text-center row m-t-20">
                            <div class="col-12">
                                <button class="btn btn-danger btn-block waves-effect waves-light" type="submit">Log In</button>
                            </div>
                        </div>

                        <!-- <div class="form-group m-t-10 mb-0 row">
                            <div class="col-sm-7 m-t-20">
                                <a href="pages-recoverpw.html" class="text-muted"><i class="mdi mdi-lock"></i> <small>Forgot your password ?</small></a>
                            </div>
                            <div class="col-sm-5 m-t-20">
                                <a href="pages-register.html" class="text-muted"><i class="mdi mdi-account-circle"></i> <small>Create an account ?</small></a>
                            </div>
                        </div> -->
                    </form>
                </div>

            </div>
        </div>
    </div>



    <!-- jQuery  -->
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/popper.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/bootstrap.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/modernizr.min.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/waves.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.slimscroll.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.nicescroll.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/js/jquery.scrollTo.min.js"></script>

    <!-- KNOB JS -->
    <script src="<?= base_url('admin'); ?>/assets/plugins/jquery-knob/excanvas.js"></script>
    <script src="<?= base_url('admin'); ?>/assets/plugins/jquery-knob/jquery.knob.js"></script>

    <!-- App js -->
    <script src="<?= base_url('admin'); ?>/assets/js/app.js"></script>

    <!-- Tambahkan script untuk reCAPTCHA v2 -->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

</body>

</html>