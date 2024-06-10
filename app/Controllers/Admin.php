<?php

namespace App\Controllers;

class Admin extends BaseController
{
    public function index(): string
    {
        return view('layout/admin/index');
    }

    public function kegiatan_csr(): string
    {
        $kegiatan = $this->db->table('kegiatan_csr')->get()->getResultArray();
        $ruang_lingkup = $this->db->table('ruang_lingkup')->get()->getResultArray();
        $urusan_bidang = $this->db->table('urusan_bidang')->get()->getResultArray();
        $kapanewon = $this->db->table('kalurahan')
            ->select('kalurahan.id_kapanewon, kalurahan.nm_kapanewon')
            ->groupBy('kalurahan.id_kapanewon')
            ->groupBy('kalurahan.nm_kapanewon')
            ->get()
            ->getResultArray();

        $data = [
            'kegiatan' => $kegiatan,
            'ruang_lingkup' => $ruang_lingkup,
            'urusan_bidang' => $urusan_bidang,
            'kapanewon' => $kapanewon,
        ];
        // dd($data);
        return view('admin/kegiatan_csr', $data);
    }

    public function kegiatan(): string
    {
        return view('depan/kegiatan');
    }
}
