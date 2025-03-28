<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

// Halaman depan (tanpa login)
$routes->get('/', 'Depan::index');
$routes->get('/profil', 'Depan::profil');
$routes->get('/kegiatan', 'Depan::kegiatan');
$routes->post('/depan/kegiatan_search', 'Depan::kegiatan_search');
$routes->get('/report', 'Depan::report');
$routes->post('/depan/report_search', 'Depan::report_search');
$routes->post('/laporan/report_search', 'Laporan::report_search');
$routes->get('/publikasi_csr', 'Depan::publikasi_csr');
$routes->get('/kontak_kami', 'Depan::kontak_kami');
$routes->get('kegiatan_csr/getkalurahan/(:any)', 'Kegiatan_Csr::getKalurahan/$1');
$routes->get('publikasi_detail/(:any)', 'Publikasi::publikasi_detail/$1');

// Admin (dilindungi dengan filter 'auth')
$routes->group('admin', ['filter' => 'auth:0'], function ($routes) {
    $routes->get('dashboard', 'Dashboard::index');
    // Kegiatan CSR
    $routes->get('kegiatan_csr', 'Kegiatan_Csr::index');
    $routes->get('kegiatan_csr_non', 'Kegiatan_Csr::kegiatan_csr_non');
    $routes->get('kegiatan_csr/format_kegiatan', 'Kegiatan_Csr::format_kegiatan');   
    $routes->post('kegiatan_save', 'Kegiatan_Csr::kegiatan_save');
    $routes->post('kegiatan_save_non', 'Kegiatan_Csr::kegiatan_save_non');
    $routes->get('kegiatan_csr/edit/(:any)', 'Kegiatan_Csr::edit/$1');
    $routes->get('kegiatan_csr/edit_non/(:any)', 'Kegiatan_Csr::edit_non/$1');
    $routes->post('kegiatan_update', 'Kegiatan_Csr::kegiatan_update');
    $routes->post('kegiatan_update_non', 'Kegiatan_Csr::kegiatan_update_non');
    $routes->get('kegiatan_hapus/(:any)', 'Kegiatan_Csr::kegiatan_hapus/$1');
    $routes->get('kegiatan_hapus_non/(:any)/(:any)', 'Kegiatan_Csr::kegiatan_hapus_non/$1/$2');
    $routes->post('kegiatan_upload', 'Kegiatan_Csr::kegiatan_upload');
    $routes->get('kegiatan_csr/detail/(:any)', 'Kegiatan_Csr::detail_csr/$1');
    $routes->get('print_allkegiatan', 'Kegiatan_Csr::print_allkegiatan');
    $routes->get('print_allkegiatan_non', 'Kegiatan_Csr::print_allkegiatan_non');
    $routes->get('upload_laporan_admin', 'Kegiatan_Csr::upload_laporan_admin');
    $routes->post('upload_laporan_simpan', 'Kegiatan_Csr::upload_laporan_simpan');
    // Upload Kegiatan
    $routes->get('kegiatan_upload_all', 'Kegiatan_Csr::kegiatan_upload_all');
    $routes->get('kegiatan_upload/edit/(:any)', 'Kegiatan_Csr::kegiatan_upload_edit/$1');
    $routes->post('kegiatan_upload_update', 'Kegiatan_Csr::kegiatan_upload_update');
    $routes->get('kegiatan_upload_hapus/(:any)', 'Kegiatan_Csr::kegiatan_upload_hapus/$1');
    $routes->get('kegiatan_upload_submit', 'Kegiatan_Csr::kegiatan_upload_submit');
    $routes->get('kegiatan_upload_kosong', 'Kegiatan_Csr::kegiatan_upload_kosong');
    // Perusahaan
    $routes->get('perusahaan', 'Perusahaan::index');
    $routes->post('perusahaan_save', 'Perusahaan::perusahaan_save');
    $routes->get('perusahaan/edit/(:any)', 'Perusahaan::edit/$1');
    $routes->post('perusahaan_update', 'Perusahaan::perusahaan_update');
    $routes->post('perusahaan_update_ALL', 'Perusahaan::updateAllPasswords');
    $routes->get('perusahaan/hapus/(:any)', 'Perusahaan::perusahaan_hapus/$1');
    // Laporan
    // $routes->get('laporan_kegiatan', 'Laporan::index');
    // $routes->get('laporan_print', 'Laporan::laporan_print');
    // $routes->get('preview_laporan/(:any)', 'Kegiatan_Csr::preview_laporan/$1');

});
$routes->group('user', ['filter' => 'auth:1'], function ($routes) {
    $routes->get('dashboard', 'Dashboard::index');
    // Kegiatan CSR
    $routes->get('kegiatan_csr', 'Kegiatan_Csr::index');
    $routes->get('kegiatan_csr/format_kegiatan', 'Kegiatan_Csr::format_kegiatan');
    $routes->get('kegiatan_csr/getkalurahan/(:any)', 'Kegiatan_Csr::getKalurahan/$1');
    $routes->post('kegiatan_save', 'Kegiatan_Csr::kegiatan_save');
    $routes->get('kegiatan_csr/edit/(:any)', 'Kegiatan_Csr::edit/$1');
    $routes->post('kegiatan_update', 'Kegiatan_Csr::kegiatan_update');
    $routes->get('kegiatan_hapus/(:any)', 'Kegiatan_Csr::kegiatan_hapus/$1');
    $routes->post('kegiatan_upload', 'Kegiatan_Csr::kegiatan_upload');
    $routes->post('pilih_kegiatan', 'Kegiatan_Csr::pilih_kegiatan');
    $routes->get('my_kegiatan_csr', 'Kegiatan_Csr::my_kegiatan_csr');
    $routes->get('kegiatan_csr/detail/(:any)', 'Kegiatan_Csr::detail_csr/$1');
    // Upload Kegiatan
    $routes->get('kegiatan_upload_all', 'Kegiatan_Csr::kegiatan_upload_all');
    $routes->get('kegiatan_upload/edit/(:any)', 'Kegiatan_Csr::kegiatan_upload_edit/$1');
    $routes->post('kegiatan_upload_update', 'Kegiatan_Csr::kegiatan_upload_update');
    $routes->get('kegiatan_upload_hapus/(:any)', 'Kegiatan_Csr::kegiatan_upload_hapus/$1');
    $routes->get('kegiatan_upload_submit', 'Kegiatan_Csr::kegiatan_upload_submit');
    $routes->get('kegiatan_upload_kosong', 'Kegiatan_Csr::kegiatan_upload_kosong');
    $routes->post('upload_laporan', 'Kegiatan_Csr::upload_laporan');
    $routes->get('print_allkegiatan', 'Kegiatan_Csr::print_allkegiatan');
    $routes->get('print_mykegiatan', 'Kegiatan_Csr::print_mykegiatan');
    $routes->get('preview_laporan/(:any)', 'Kegiatan_Csr::preview_laporan/$1');
});

$routes->group('multi', ['filter' => 'auth:0,1'], function ($routes) {
     // Publikasi
     $routes->get('publikasi', 'Publikasi::index');
     $routes->post('publikasi_save', 'Publikasi::publikasi_simpan');
     $routes->get('publikasi_edit/(:any)', 'Publikasi::publikasi_edit/$1');
     $routes->post('publikasi_update', 'Publikasi::publikasi_update');
     $routes->get('publikasi_hapus/(:any)', 'Publikasi::publikasi_hapus/$1');
     $routes->get('publikasi_view/(:any)', 'Publikasi::publikasi_view/$1');
     $routes->get('publikasi_detail/(:any)', 'Publikasi::publikasi_detail/$1');
         // Laporan
    $routes->get('laporan_kegiatan', 'Laporan::index');
    $routes->get('laporan_print', 'Laporan::laporan_print');
    $routes->get('preview_laporan/(:any)', 'Kegiatan_Csr::preview_laporan/$1');
});

// Login & Autentikasi
$routes->get('/login', 'User::login');
$routes->post('/verifikasi', 'User::verifikasi');
$routes->get('/logout', 'User::logout');

// Captcha (jika dibutuhkan)
// $routes->get('/', 'PagesController::index');
// $routes->post('page/submitContactUs', 'PagesController::submitContactUs');
