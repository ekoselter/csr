<?php

namespace App\Controllers;

use PhpOffice\PhpSpreadsheet\IOFactory;

class Laporan extends BaseController
{
    public function index()
    {
        $report = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, kegiatan_csr.permasalahan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.biaya2, kegiatan_csr.keterangan, kegiatan_csr.sumber_usulan, kegiatan_csr.opd, nama_perusahaan, waktu')
            ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
            ->join('user', 'detail_kegiatan_csr.id_user=user.id')
            ->join('perusahaan', 'user.id=perusahaan.id_user')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->where('file is NOT NULL ')
            ->get()->getResultArray();
        $urusan_bidang = $this->db->table('urusan_bidang')->get()->getResultArray();
        $kapanewon = $this->db->table('kalurahan')
            ->select('kalurahan.id_kapanewon, kalurahan.nm_kapanewon')
            ->groupBy('kalurahan.id_kapanewon')
            ->groupBy('kalurahan.nm_kapanewon')
            ->get()
            ->getResultArray();
        $perusahaan = $this->db->table('perusahaan')
            ->select('perusahaan.id, nama_perusahaan')
            ->join('user', 'perusahaan.id_user=user.id')
            ->where('level >', 0)
            ->get()->getResultArray();
        $data = [
            'report' => $report,
            'urusan_bidang' => $urusan_bidang,
            'kapanewon' => $kapanewon,
            'perusahaan' => $perusahaan
        ];

        // dd($data);
        return view('admin/laporan/index_admin', $data);
    }

    public function laporan_print()
    {
        $report = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, kegiatan_csr.permasalahan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.biaya2, kegiatan_csr.keterangan, kegiatan_csr.sumber_usulan, kegiatan_csr.opd, nama_perusahaan, waktu')
            ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
            ->join('user', 'detail_kegiatan_csr.id_user=user.id')
            ->join('perusahaan', 'user.id=perusahaan.id_user')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->where('file is NOT NULL ')
            ->get()->getResultArray();
        $data = [
            'report' => $report
        ];
        return view('admin/laporan/laporan_print', $data);
    }
}
