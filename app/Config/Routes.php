<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
// $routes->get('/', 'Home::index');

//depan
$routes->get('/', 'Depan::index');
$routes->get('/profil', 'Depan::profil');
$routes->get('/kegiatan', 'Depan::kegiatan');
$routes->post('/depan/kegiatan_search', 'Depan::kegiatan_search');
$routes->get('/report', 'Depan::report');
$routes->post('/depan/report_search', 'Depan::report_search');
$routes->get('/publikasi_csr', 'Depan::publikasi_csr');
$routes->get('/kontak_kami', 'Depan::kontak_kami');

// admin
$routes->get('/dashboard', 'Dashboard::index');
$routes->get('/kegiatan_csr', 'Kegiatan_Csr::index');
$routes->get('/kegiatan_csr/getkalurahan/(:any)', 'Kegiatan_Csr::getKalurahan/$1');
$routes->post('/kegiatan_save', 'Kegiatan_Csr::kegiatan_save');
$routes->get('/kegiatan_csr/edit/(:any)', 'Kegiatan_Csr::edit/$1');
$routes->post('/kegiatan_update', 'Kegiatan_Csr::kegiatan_update');
$routes->get('/kegiatan_hapus/(:any)', 'Kegiatan_Csr::kegiatan_hapus/$1');
$routes->post('/kegiatan_upload', 'Kegiatan_Csr::kegiatan_upload');
$routes->post('/pilih_kegiatan', 'Kegiatan_Csr::pilih_kegiatan');
$routes->get('/my_kegiatan_csr', 'Kegiatan_Csr::my_kegiatan_csr');
$routes->get('/kegiatan_csr/detail/(:any)', 'Kegiatan_Csr::detail_csr/$1');
$routes->get('/perusahaan', 'Perusahaan::index');
$routes->post('/perusahaan_save', 'Perusahaan::perusahaan_save');
$routes->get('/perusahaan/edit/(:any)', 'Perusahaan::edit/$1');
$routes->post('/perusahaan_update', 'Perusahaan::perusahaan_update');
$routes->get('/login', 'User::login');
$routes->post('/verifikasi', 'User::verifikasi');
$routes->get('/logout', 'User::logout');
$routes->get('/publikasi/admin', 'Publikasi::index_admin');
$routes->post('/publikasi_save', 'Publikasi::publikasi_simpan');
$routes->get('/publikasi_edit/(:any)', 'Publikasi::publikasi_edit/$1');
$routes->post('/publikasi_update', 'Publikasi::publikasi_update');
$routes->get('/publikasi_hapus/(:any)', 'Publikasi::publikasi_hapus/$1');
$routes->get('/publikasi_view/(:any)', 'Publikasi::publikasi_view/$1');
$routes->get('/publikasi_detail/(:any)', 'Publikasi::publikasi_detail/$1');
$routes->get('/kegiatan_upload_all', 'Kegiatan_Csr::kegiatan_upload_all');
$routes->get('/kegiatan_upload/edit/(:any)', 'Kegiatan_Csr::kegiatan_upload_edit/$1');
$routes->post('/kegiatan_upload_update', 'Kegiatan_Csr::kegiatan_upload_update');
$routes->get('/kegiatan_upload_hapus/(:any)', 'Kegiatan_Csr::kegiatan_upload_hapus/$1');
$routes->get('/kegiatan_upload_submit', 'Kegiatan_Csr::kegiatan_upload_submit');
$routes->get('/kegiatan_upload_kosong', 'Kegiatan_Csr::kegiatan_upload_kosong');
$routes->post('/upload_laporan', 'Kegiatan_Csr::upload_laporan');
$routes->get('/print_allkegiatan', 'Kegiatan_Csr::print_allkegiatan');
$routes->get('/print_mykegiatan', 'Kegiatan_Csr::print_mykegiatan');
$routes->get('/laporan_kegiatan', 'Laporan::index');
$routes->get('/laporan_print', 'Laporan::laporan_print');
