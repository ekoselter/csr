<?php

namespace App\Controllers;

use PhpOffice\PhpSpreadsheet\IOFactory;

class Laporan extends BaseController
{
    public function index()
    {
        $report = $this->db->table('kegiatan_csr')
            ->select('file,kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, nama_perusahaan, waktu, nominal')
            ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
            ->join('user', 'detail_kegiatan_csr.id_user=user.id')
            ->join('perusahaan', 'user.id=perusahaan.id_user')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->where('file is NOT NULL ')
            ->get()->getResultArray();
        // $urusan_bidang = $this->db->table('urusan_bidang')->get()->getResultArray();
        $ruang_lingkup = $this->db->table('ruang_lingkup')->get()->getResultArray();
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
        // $kegiatan_filter = $this->db->table('kegiatan_csr')
        //     ->select('program_kegiatan')
        //     ->groupby('program_kegiatan')
        //     ->orderby('program_kegiatan','ASC')
        //     ->get()->getResultArray();
        $aktifitas_filter = $this->db->table('kegiatan_csr')
        ->select('aktifitas')
        ->groupby('aktifitas')
        ->orderby('aktifitas','ASC')
        ->get()->getResultArray();
        $data = [
            'report' => $report,
            'ruang_lingkup' => $ruang_lingkup,
            'kapanewon' => $kapanewon,
            'perusahaan' => $perusahaan,
            'aktifitas_filter' => $aktifitas_filter
        ];

        // dd($data);
        return view('admin/laporan/index_admin', $data);
    }

    public function laporan_print()
    {
        // $report = $this->db->table('kegiatan_csr')
        //     ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, nama_perusahaan, waktu')
        //     ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
        //     ->join('user', 'detail_kegiatan_csr.id_user=user.id')
        //     ->join('perusahaan', 'user.id=perusahaan.id_user')
        //     ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
        //     ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
        //     ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
        //     ->where('file is NOT NULL ')
        //     ->get()->getResultArray();
        // $data = [
        //     'report' => $report
        // ];
        // return view('admin/laporan/laporan_print', $data);

        $perusahaan = $this->request->getVar('perusahaan');
        $urusan_bidang = $this->request->getVar('urusan_bidang');
        $kapanewon = $this->request->getVar('kapanewon');
        $kalurahan = $this->request->getVar('kalurahan');
        // var_dump($perusahaan,$urusan_bidang,$kapanewon,$kalurahan);
        // exit;
        $report = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, nama_perusahaan, waktu, nominal')
            ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
            ->join('user', 'detail_kegiatan_csr.id_user=user.id')
            ->join('perusahaan', 'user.id=perusahaan.id_user')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->where('file is NOT NULL ');
        if ($perusahaan != '') {
            $report->where('perusahaan.id', $perusahaan);
        }
        if ($urusan_bidang != '') {
            $report->where('urusan_bidang', $urusan_bidang);
        }
        if ($kapanewon != '') {
            $report->where('kapanewon', $kapanewon);
        }
        if ($this->request->getVar('kalurahan') != '') {
            if ($this->request->getVar('kalurahan') != 'all_kalurahan') {
                $report->where('id_kalurahan', $this->request->getVar('kalurahan'));
            }
        }
            
        $data = [
            'report' => $report->get()->getResultArray()
        ];
        return view('admin/laporan/laporan_print', $data);
    }

    public function report_search()
    {
        // dd($this->request->getVar('tahun'));
        $query =  $this->db->table('kegiatan_csr')
            ->select('file, kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, nama_perusahaan, waktu, nominal')
            ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
            ->join('user', 'detail_kegiatan_csr.id_user=user.id')
            ->join('perusahaan', 'user.id=perusahaan.id_user')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->where('file is NOT NULL ');

        // dd($this->request->getVar('urusan_bidang'));
        if ($this->request->getVar('perusahaan') != '') {
            $query->where('perusahaan.id', $this->request->getVar('perusahaan'));
        }
        if ($this->request->getVar('ruang_lingkup') != '') {
            $query->where('ruang_lingkup.id', $this->request->getVar('ruang_lingkup'));
        }
        if ($this->request->getVar('kapanewon') != '') {
            $query->where('id_kapanewon', $this->request->getVar('kapanewon'));
        }
        if ($this->request->getVar('kalurahan') != '') {
            if ($this->request->getVar('kalurahan') != 'all_kalurahan') {
                $query->where('id_kalurahan', $this->request->getVar('kalurahan'));
            }
        }
        if ($this->request->getVar('aktifitas') != '') {
            $query->where('aktifitas', $this->request->getVar('aktifitas'));
        }
        $report = $query->get()->getResultArray();
        $data = [
            'report' => $report
        ];
        // dd($report);
        return view('admin/laporan/report_search', $data);
    }
}
