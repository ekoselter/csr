<?php

namespace App\Controllers;

use PhpOffice\PhpSpreadsheet\IOFactory;

class Kegiatan_Csr extends BaseController
{
    public function index()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }

        $kegiatan = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();
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
        return view('admin/kegiatan_csr/kegiatan_csr', $data);
    }

    public function getKalurahan($id_kapanewon)
    {
        $data = $this->db->table('kalurahan')->where('id_kapanewon', $id_kapanewon)->get()->getResultArray();
        return json_encode($data);
    }

    public function kegiatan_save()
    {
        // Hapus tanda titik
        $biaya = str_replace('.', '', $this->request->getVar('biaya'));

        $this->db->table('kegiatan_csr')
            ->set('tahun', $this->request->getVar('tahun'))
            ->set('ruang_lingkup', $this->request->getVar('ruang_lingkup'))
            ->set('urusan_bidang', $this->request->getVar('urusan_bidang'))
            ->set('program_kegiatan', $this->request->getVar('program_kegiatan'))
            ->set('alamat', $this->request->getVar('alamat'))
            ->set('kapanewon', $this->request->getVar('kapanewon'))
            ->set('kalurahan', $this->request->getVar('kalurahan'))
            ->set('biaya', $biaya)
            ->set('volume', $this->request->getVar('volume'))
            ->set('satuan', $this->request->getVar('satuan'))
            ->set('opd', $this->request->getVar('opd'))
            ->insert();

        return redirect()->to(base_url('/kegiatan_csr'));
    }

    public function edit($id)
    {
        $ruang_lingkup = $this->db->table('ruang_lingkup')->get()->getResultArray();
        $urusan_bidang = $this->db->table('urusan_bidang')->get()->getResultArray();
        $kapanewon = $this->db->table('kalurahan')
            ->select('kalurahan.id_kapanewon, kalurahan.nm_kapanewon')
            ->groupBy('kalurahan.id_kapanewon')
            ->groupBy('kalurahan.nm_kapanewon')
            ->get()
            ->getResultArray();
        $kegiatan = $this->db->table('kegiatan_csr')->where('id', $id)->get()->getRowArray();
        $kalurahan = $this->db->table('kalurahan')
            ->where('id_kapanewon', $kegiatan['kapanewon'])
            ->get()
            ->getResultArray();
        $data = [
            'ruang_lingkup' => $ruang_lingkup,
            'urusan_bidang' => $urusan_bidang,
            'kapanewon' => $kapanewon,
            'kalurahan' => $kalurahan,
            'd' => $kegiatan
        ];
        // dd($data);
        return view('admin/kegiatan_csr/kegiatan_csr_edit', $data);
    }

    public function kegiatan_update()
    {
        // dd($this->request->getVar());

        $this->db->table('kegiatan_csr')
            ->set('tahun', $this->request->getVar('tahun'))
            ->set('ruang_lingkup', $this->request->getVar('ruang_lingkup'))
            ->set('urusan_bidang', $this->request->getVar('urusan_bidang'))
            ->set('program_kegiatan', $this->request->getVar('program_kegiatan'))
            ->set('alamat', $this->request->getVar('alamat'))
            ->set('kapanewon', $this->request->getVar('kapanewon'))
            ->set('kalurahan', $this->request->getVar('kalurahan'))
            ->set('biaya', $this->request->getVar('biaya'))
            ->set('volume', $this->request->getVar('volume'))
            ->set('satuan', $this->request->getVar('satuan'))
            ->set('opd', $this->request->getVar('opd'))
            ->where('id', $this->request->getVar('id'))
            ->update();

        return redirect()->to(base_url('/kegiatan_csr'));
    }

    public function kegiatan_hapus($id)
    {
        $this->db->table('kegiatan_csr')->where('id', $id)->delete();
        return redirect()->to(base_url('/kegiatan_csr'));
    }

    public function pilih_kegiatan()
    {
        $nominal = str_replace('.', '', $this->request->getVar('nominal'));
        // dd($nominal);
        $this->db->table('detail_kegiatan_csr')
            ->set('id_kegiatan_csr', $this->request->getVar('id_kegiatan_csr'))
            ->set('id_user', session('id_user'))
            ->set('nominal', $nominal)
            ->insert();

        return redirect()->to(base_url('/my_kegiatan_csr'));
    }

    public function my_kegiatan_csr()
    {
        $kegiatan = $this->db->table('detail_kegiatan_csr')
            ->select('detail_kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, detail_kegiatan_csr.nominal, detail_kegiatan_csr.file')
            ->where('id_user', session('id_user'))
            ->join('kegiatan_csr', 'detail_kegiatan_csr.id_kegiatan_csr=kegiatan_csr.id')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();


        $data = [
            'kegiatan' => $kegiatan,
        ];
        // dd($data);
        return view('admin/kegiatan_csr/my_kegiatan_csr', $data);
    }

    public function detail_csr($id)
    {
        $csr = $this->db->table('kegiatan_csr')->where('id', $id)->get()->getRowArray();
        $kegiatan = $this->db->table('detail_kegiatan_csr')
            ->select('perusahaan.nama_perusahaan, perusahaan.penanggungjawab, perusahaan.no_hp, detail_kegiatan_csr.nominal')
            ->where('id_kegiatan_csr', $id)
            ->join('user', 'detail_kegiatan_csr.id_user=user.id')
            ->join('perusahaan', 'perusahaan.id_user=user.id')
            // ->join('kegiatan_csr', 'detail_kegiatan_csr.id_kegiatan_csr=kegiatan_csr.id')
            // ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            // ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            // ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();


        $data = [
            'csr' => $csr['program_kegiatan'],
            'kegiatan' => $kegiatan,
        ];
        // dd($data);
        return view('admin/kegiatan_csr/detail_kegiatan_csr', $data);
    }

    public function kegiatan_upload()
    {
        $file = $this->request->getFile('fileexcel');
        $tahun = $this->request->getVar('tahun');

        // dd($file->getClientMimeType());
        if ($file && $file->isValid()) {
            $spreadsheet = IOFactory::load($file->getTempName());
            $data = $spreadsheet->getActiveSheet()->toArray();
            foreach ($data as $x => $row) {
                if ($x == 0) {
                    continue;
                }
                // dd($row[1]);

                $ruang_lingkup = $row[2];
                $urusan_bidang = $row[3];
                $program_kegiatan = $row[4];
                $alamat = $row[5];
                $kalurahan = $row[6];
                $kapanewon = $row[7];
                $harga = $row[8];
                $volume = $row[9];
                $satuan = $row[10];
                $opd = $row[11];

                //ruang lingkup
                if (empty($ruang_lingkup)) {
                    $des_lingkup = '';
                } else {
                    $des_lingkup = $ruang_lingkup;
                }
                $ruang = $this->db->table('ruang_lingkup')->like('TRIM(ket)', trim($des_lingkup))->get()->getRowArray();
                if (!empty($ruang)) {
                    $id_ruang = $ruang['id'];
                } else {
                    $id_ruang = '';
                }

                //bidang
                if (empty($urusan_bidang)) {
                    $des_urusan = '';
                } else {
                    $des_urusan = $urusan_bidang;
                }
                $urusan = $this->db->table('urusan_bidang')->like('TRIM(ket)', trim($des_urusan))->get()->getRowArray();
                if (!empty($urusan)) {
                    $id_urusan = $urusan['id'];
                } else {
                    $id_urusan = '';
                }

                if (($row[1] and $row[2]) == '') {
                    break;
                }

                //kalurahan
                if (empty($kalurahan)) {
                    $nm_kalurahan = '';
                } else {
                    $nm_kalurahan = $kalurahan;
                }
                $kalurahan_db = $this->db->table('kalurahan')->like('TRIM(nm_kalurahan)', trim($nm_kalurahan))->get()->getRowArray();
                if (!empty($kalurahan)) {
                    $id_kalurahan = $kalurahan_db['id_kalurahan'];
                    $id_kapanewon = $kalurahan_db['id_kapanewon'];
                } else {
                    $id_kalurahan = '';
                    $id_kapanewon = '';
                }

                if (($row[1] and $row[2]) == '') {
                    break;
                }

                // dd($id_ruang);
                $hasil = [
                    'tahun' => $row[1],
                    'id_ruang' => $id_ruang,
                    'ruang_lingkup' => $ruang_lingkup,
                    'id_urusan' => $id_urusan,
                    'urusan_bidang' => $urusan_bidang,
                    'program_kegiatan' => $program_kegiatan,
                    'alamat' => $alamat,
                    'id_kalurahan' => $id_kalurahan,
                    'kalurahan' => $kalurahan,
                    'id_kapanewon' => $id_kapanewon,
                    'kapanewon' => $kapanewon,
                    'biaya' => str_replace(array(".", ","), '', $harga),
                    'volume' => str_replace(array(".", ","), '', $volume),
                    'satuan' => $satuan,
                    'opd' => $opd,
                ];

                $this->db->table('kegiatan_upload')
                    ->insert($hasil);
            }
            return redirect()->to(base_url('/kegiatan_upload_all'));
            // Proses data sesuai kebutuhan Anda
            // Misalnya, simpan data ke database atau tampilkan data

            // dd($hasil);
            // dd($data);
        } else {
            echo 'File Excel tidak valid';
        }
    }

    public function kegiatan_upload_all()
    {
        $kegiatan = $this->db->table('kegiatan_upload')->get()->getResultArray();
        $data = [
            'kegiatan' => $kegiatan,
        ];
        return view('admin/kegiatan_csr/kegiatan_upload_all', $data);
    }

    public function kegiatan_upload_submit()
    {
        $kegiatan = $this->db->table('kegiatan_upload')->get()->getResultArray();
        // dd($kegiatan);
        foreach ($kegiatan as $x => $k) {
            $hasil = [
                'tahun' => $k['tahun'],
                'ruang_lingkup' => $k['id_ruang'],
                'urusan_bidang' => $k['id_urusan'],
                'program_kegiatan' => $k['program_kegiatan'],
                'alamat' => $k['alamat'],
                'kapanewon' => $k['id_kapanewon'],
                'kalurahan' => $k['id_kalurahan'],
                'biaya' => $k['biaya'],
                'volume' => $k['volume'],
                'satuan' => $k['satuan'],
                'opd' => $k['opd'],
            ];

            $this->db->table('kegiatan_csr')
                ->insert($hasil);
        }
        // dd($hasil);
        $this->db->table('kegiatan_upload')->truncate();
        return redirect()->to(base_url('/kegiatan_csr'));
    }

    public function kegiatan_upload_kosong()
    {
        $this->db->table('kegiatan_upload')->truncate();
        return redirect()->to(base_url('/kegiatan_upload_all'));
    }

    public function kegiatan_upload_edit($id)
    {
        $ruang_lingkup = $this->db->table('ruang_lingkup')->get()->getResultArray();
        $urusan_bidang = $this->db->table('urusan_bidang')->get()->getResultArray();
        $kapanewon = $this->db->table('kalurahan')
            ->select('kalurahan.id_kapanewon, kalurahan.nm_kapanewon')
            ->groupBy('kalurahan.id_kapanewon')
            ->groupBy('kalurahan.nm_kapanewon')
            ->get()
            ->getResultArray();
        $kegiatan = $this->db->table('kegiatan_upload')->where('id', $id)->get()->getRowArray();
        $kalurahan = $this->db->table('kalurahan')
            ->where('id_kapanewon', $kegiatan['id_kapanewon'])
            ->get()
            ->getResultArray();
        $data = [
            'ruang_lingkup' => $ruang_lingkup,
            'urusan_bidang' => $urusan_bidang,
            'kapanewon' => $kapanewon,
            'kalurahan' => $kalurahan,
            'd' => $kegiatan
        ];
        // dd($data);
        return view('admin/kegiatan_csr/kegiatan_upload_edit', $data);
    }

    public function kegiatan_upload_update()
    {
        // dd($this->request->getVar());

        $ruang = $this->db->table('ruang_lingkup')->where('id', $this->request->getVar('ruang_lingkup'))->get()->getRowArray();
        $urusan = $this->db->table('urusan_bidang')->where('id', $this->request->getVar('urusan_bidang'))->get()->getRowArray();
        $kalurahan = $this->db->table('kalurahan')->where('id_kalurahan', $this->request->getVar('kalurahan'))->get()->getRowArray();

        $this->db->table('kegiatan_upload')
            ->set('tahun', $this->request->getVar('tahun'))
            ->set('id_ruang', $this->request->getVar('ruang_lingkup'))
            ->set('ruang_lingkup', $ruang['ket'])
            ->set('id_urusan', $this->request->getVar('urusan_bidang'))
            ->set('urusan_bidang', $urusan['ket'])
            ->set('program_kegiatan', $this->request->getVar('program_kegiatan'))
            ->set('alamat', $this->request->getVar('alamat'))
            ->set('id_kapanewon', $this->request->getVar('kapanewon'))
            ->set('kapanewon', $kalurahan['nm_kapanewon'])
            ->set('id_kalurahan', $this->request->getVar('kalurahan'))
            ->set('kalurahan', $kalurahan['nm_kalurahan'])
            ->set('biaya', $this->request->getVar('biaya'))
            ->set('volume', $this->request->getVar('volume'))
            ->set('satuan', $this->request->getVar('satuan'))
            ->set('opd', $this->request->getVar('opd'))
            ->where('id', $this->request->getVar('id'))
            ->update();

        return redirect()->to(base_url('/kegiatan_upload_all'));
    }

    public function kegiatan_upload_hapus($id)
    {
        $this->db->table('kegiatan_upload')->where('id', $id)->delete();
        return redirect()->to(base_url('/kegiatan_upload_all'));
    }

    public function upload_laporan()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }

        $image = $this->request->getFile('laporan');
        // dd($this->request->getFile('laporan'));
        if (empty($image)) {
            return redirect()->to(base_url('/my_kegiatan_csr'));
        }
        if ($image->isValid() && in_array($image->getClientMIMEType(), ['image/jpg', 'image/jpeg', 'image/png', 'image/gif', 'application/pdf'])) {

            $newName = $image->getRandomName();
            $image->move('laporan', $newName);

            $this->db->table('detail_kegiatan_csr')
                ->set('waktu', date('Y-m-d H:i:s'))
                ->set('file', $newName)
                ->where('id', $this->request->getVar('id'))
                ->update();

            return redirect()->to(base_url('/my_kegiatan_csr'));
        } else {
            return redirect()->to(base_url('/my_kegiatan_csr'));
        }
    }

    public function print_allkegiatan()
    {
        $kegiatan = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();
        $data = [
            'kegiatan' => $kegiatan
        ];
        return view('admin/kegiatan_csr/print_allkegiatan', $data);
    }

    public function print_mykegiatan()
    {
        $kegiatan = $this->db->table('detail_kegiatan_csr')
            ->select('detail_kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, detail_kegiatan_csr.nominal, detail_kegiatan_csr.file')
            ->where('id_user', session('id_user'))
            ->join('kegiatan_csr', 'detail_kegiatan_csr.id_kegiatan_csr=kegiatan_csr.id')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();
        $data = [
            'kegiatan' => $kegiatan
        ];
        return view('admin/kegiatan_csr/print_mykegiatan', $data);
    }

    public function laporan_kegiatan(): string
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }
        $laporan_kegiatan = $this->db->table('detail_kegiatan_csr')
            ->select('detail_kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, detail_kegiatan_csr.nominal, detail_kegiatan_csr.file')
            ->join('user', 'detail_kegiatan_csr.id_user=user.id')
            ->join('perusahaan', 'user.id_user=user.id')
            ->join('kegiatan_csr', 'detail_kegiatan_csr.id_kegiatan_csr=kegiatan_csr.id')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();

        $kegiatan = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();
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
            'laporan_kegiatan' => $laporan_kegiatan,
            'ruang_lingkup' => $ruang_lingkup,
            'urusan_bidang' => $urusan_bidang,
            'kapanewon' => $kapanewon,
        ];
        dd($data);
        return view('admin/kegiatan_csr/kegiatan_csr', $data);
    }
}
