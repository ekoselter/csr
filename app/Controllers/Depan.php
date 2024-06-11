<?php

namespace App\Controllers;

class Depan extends BaseController
{
    public function index()
    {
        $query = $this->db->table('publikasi')
            ->select('publikasi.*')
            ->where('status', 1)
            ->join('user', 'publikasi.id_user=user.id')->limit(6);
        // ->where('level >', 0)
        $publikasi = $query->get()
            ->getResultArray();
        $data = [
            'publikasi' => $publikasi
        ];

        return view('depan/home', $data);
    }

    public function profil()
    {
        return view('depan/profil');
    }

    public function kegiatan()
    {
        $kegiatan = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();
        $urusan_bidang = $this->db->table('urusan_bidang')->get()->getResultArray();
        $kapanewon = $this->db->table('kalurahan')
            ->select('kalurahan.id_kapanewon, kalurahan.nm_kapanewon')
            ->groupBy('kalurahan.id_kapanewon')
            ->groupBy('kalurahan.nm_kapanewon')
            ->get()
            ->getResultArray();
        $data = [
            'kegiatan' => $kegiatan,
            'urusan_bidang' => $urusan_bidang,
            'kapanewon' => $kapanewon,
        ];

        // dd($kegiatan);
        return view('depan/kegiatan', $data);
    }

    public function kegiatan_search()
    {
        // dd($this->request->getVar('tahun'));
        $query = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as urusan_id, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan');

        // dd($this->request->getVar('urusan_bidang'));
        if ($this->request->getVar('tahun') != '') {
            $query->where('tahun', $this->request->getVar('tahun'));
        }
        if ($this->request->getVar('urusan_bidang') != '') {
            $query->where('urusan_bidang.id', $this->request->getVar('urusan_bidang'));
        }
        if ($this->request->getVar('kapanewon') != '') {
            $query->where('id_kapanewon', $this->request->getVar('kapanewon'));
        }
        if ($this->request->getVar('kalurahan') != '') {
            $query->where('id_kalurahan', $this->request->getVar('kalurahan'));
        }
        $kegiatan = $query->get()->getResultArray();
        $data = [
            'kegiatan' => $kegiatan
        ];
        // dd($kegiatan);
        return view('depan/kegiatan_search', $data);
    }

    public function report()
    {
        $report = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, nama_perusahaan, waktu')
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
        return view('depan/report', $data);
    }

    public function report_search()
    {
        // dd($this->request->getVar('tahun'));
        $query =  $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, urusan_bidang.id as id_urusan, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.id_kapanewon as id_kapanewon, kalurahan.nm_kalurahan as kalurahan,  kalurahan.id_kalurahan as id_kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, nama_perusahaan, waktu')
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
        if ($this->request->getVar('urusan_bidang') != '') {
            $query->where('urusan_bidang.id', $this->request->getVar('urusan_bidang'));
        }
        if ($this->request->getVar('kapanewon') != '') {
            $query->where('id_kapanewon', $this->request->getVar('kapanewon'));
        }
        if ($this->request->getVar('kalurahan') != '') {
            $query->where('id_kalurahan', $this->request->getVar('kalurahan'));
        }
        $report = $query->get()->getResultArray();
        $data = [
            'report' => $report
        ];
        // dd($report);
        return view('depan/report_search', $data);
    }

    public function kontak_kami()
    {
        return view('depan/kontak_kami');
    }

    public function publikasi_csr()
    {
        $query = $this->db->table('publikasi')
            ->select('publikasi.*')
            ->join('user', 'publikasi.id_user=user.id');
        // ->where('level >', 0)
        $publikasi = $query->get()
            ->getResultArray();
        $data = [
            'publikasi' => $publikasi
        ];
        return view('depan/publikasi_csr', $data);
    }
}
