<?php

namespace App\Controllers;

use PhpOffice\PhpSpreadsheet\IOFactory;
// Include librari PhpSpreadsheet
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Kegiatan_Csr extends BaseController
{
    public function index()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }
    
        $baseQuery = $this->db->table('kegiatan_csr')
            ->select('volume, kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, status')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan');
        
        if (session('level') == 1) {  
            // User hanya melihat yang belum masuk di detail_kegiatan_csr
            $baseQuery->where('status', '0');
        }
        
        $kegiatan = $baseQuery->get()->getResultArray();
    
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

    public function kegiatan_csr_non()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }
    
        $baseQuery = $this->db->table('kegiatan_csr')
            ->select('volume, kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, status, waktu, file, nominal, detail_kegiatan_csr.id as id_detail')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
            ->where('id_user', session('id_user'));
        
        if (session('level') == 1) {  
            // User hanya melihat yang belum masuk di detail_kegiatan_csr
            $baseQuery->where('status', '0');
        }
        
        $kegiatan = $baseQuery->get()->getResultArray();
    
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
        return view('admin/kegiatan_csr/kegiatan_csr_non', $data);
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
            ->set('aktifitas', $this->request->getVar('aktifitas'))
            ->set('alamat', $this->request->getVar('alamat'))
            ->set('kapanewon', $this->request->getVar('kapanewon'))
            ->set('kalurahan', $this->request->getVar('kalurahan'))
            ->set('biaya', $biaya)
            ->set('volume', $this->request->getVar('volume'))
            ->set('satuan', $this->request->getVar('satuan'))
            ->set('opd', $this->request->getVar('opd'))
            ->insert();

        return redirect()->to(base_url('admin/kegiatan_csr'));
    }

    public function kegiatan_save_non()
    {

        $image = $this->request->getFile('laporan');
        // Hapus tanda titik
        $biaya = str_replace('.', '', $this->request->getPost('biaya'));
        $nominal = str_replace('.', '', $this->request->getPost('nominal'));
        // laporan
            // Validasi tipe file
            if (!$image->isValid() || $image->getClientMimeType() !== 'application/pdf') {
                return 'Hanya file PDF yang diperbolehkan.';
            }
            // Validasi ukuran file maksimal 500 KB (500 * 1024 bytes)
            if ($image->getSize() > 500 * 1024) {
                return 'Ukuran file terlalu besar. Maksimal 500 KB.';
            }
            if (empty($image)) {
                return redirect()->to(base_url('admin/kegiatan_csr_non'));
            }
            // dd($this->request->getPost());
        // input kegiatan
        $this->db->table('kegiatan_csr')
            ->set('tahun', $this->request->getPost('tahun'))
            ->set('ruang_lingkup', $this->request->getPost('ruang_lingkup'))
            ->set('urusan_bidang', $this->request->getPost('urusan_bidang'))
            ->set('program_kegiatan', $this->request->getPost('program_kegiatan'))
            ->set('aktifitas', $this->request->getPost('aktifitas'))
            ->set('alamat', $this->request->getPost('alamat'))
            ->set('kapanewon', $this->request->getPost('kapanewon'))
            ->set('kalurahan', $this->request->getPost('kalurahan'))
            ->set('biaya', $biaya)
            ->set('volume', $this->request->getPost('volume'))
            ->set('satuan', $this->request->getPost('satuan'))
            ->set('opd', $this->request->getPost('opd'))
            ->set('status', '1')
            ->insert();

            // input ke pilih kegiatan  
            // ambil ID terakhir yang diinsert
            $waktu_input = $this->request->getPost('tgl_pelaksanaan');
            $waktu_db =  $waktu_input . ' 00:00:00';
            $id_kegiatan_csr = $this->db->insertID();
            if ($image->isValid() && in_array($image->getClientMIMEType(), ['application/pdf'])) {
                $newName = $image->getRandomName();
                $image->move('laporan', $newName);
                $this->db->table('detail_kegiatan_csr')
                    ->set('id_kegiatan_csr', $id_kegiatan_csr)
                    ->set('id_user', session('id_user'))
                    ->set('nominal', $nominal)
                    ->set('waktu', $waktu_db)
                    ->set('file', $newName)
                    ->insert();
            }

        session()->setFlashdata('success', 'Data berhasil disimpan');
        return redirect()->to(base_url('admin/kegiatan_csr_non'));
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

    public function edit_non($id)
    {
        $ruang_lingkup = $this->db->table('ruang_lingkup')->get()->getResultArray();
        $urusan_bidang = $this->db->table('urusan_bidang')->get()->getResultArray();
        $kapanewon = $this->db->table('kalurahan')
            ->select('kalurahan.id_kapanewon, kalurahan.nm_kapanewon')
            ->groupBy('kalurahan.id_kapanewon')
            ->groupBy('kalurahan.nm_kapanewon')
            ->get()
            ->getResultArray();
        $kegiatan = $this->db->table('kegiatan_csr')
        ->select('kegiatan_csr.*, detail_kegiatan_csr.id as id_detail, nominal, waktu, file')
        ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
        ->where('kegiatan_csr.id', $id)->get()->getRowArray();
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
        return view('admin/kegiatan_csr/kegiatan_csr_edit_non', $data);
    }

    public function kegiatan_update()
    {
        // dd($this->request->getVar());

        $this->db->table('kegiatan_csr')
            ->set('tahun', $this->request->getVar('tahun'))
            ->set('ruang_lingkup', $this->request->getVar('ruang_lingkup'))
            ->set('urusan_bidang', $this->request->getVar('urusan_bidang'))
            ->set('program_kegiatan', $this->request->getVar('program_kegiatan'))
            ->set('aktifitas', $this->request->getVar('aktifitas'))
            ->set('alamat', $this->request->getVar('alamat'))
            ->set('kapanewon', $this->request->getVar('kapanewon'))
            ->set('kalurahan', $this->request->getVar('kalurahan'))
            ->set('biaya', $this->request->getVar('biaya'))
            ->set('volume', $this->request->getVar('volume'))
            ->set('satuan', $this->request->getVar('satuan'))
            ->set('opd', $this->request->getVar('opd'))
            ->where('id', $this->request->getVar('id'))
            ->update();

        return redirect()->to(base_url('admin/kegiatan_csr'));
    }

    public function kegiatan_update_non()
    {
        // dd($this->request->getVar());
        
        if ($this->request->getFile('laporan')->getError() === 4) {

            $this->db->table('kegiatan_csr')
                ->set('tahun', $this->request->getPost('tahun'))
                ->set('ruang_lingkup', $this->request->getPost('ruang_lingkup'))
                ->set('urusan_bidang', $this->request->getPost('urusan_bidang'))
                ->set('program_kegiatan', $this->request->getPost('program_kegiatan'))
                ->set('aktifitas', $this->request->getPost('aktifitas'))
                ->set('alamat', $this->request->getPost('alamat'))
                ->set('kapanewon', $this->request->getPost('kapanewon'))
                ->set('kalurahan', $this->request->getPost('kalurahan'))
                ->set('biaya', $this->request->getPost('biaya'))
                ->set('volume', $this->request->getPost('volume'))
                ->set('satuan', $this->request->getPost('satuan'))
                ->set('opd', $this->request->getPost('opd'))
                ->where('id', $this->request->getPost('id'))
                ->update();

            $this->db->table('detail_kegiatan_csr')
                ->set('nominal', $this->request->getPost('nominal'))
                ->set('waktu', $this->request->getPost('tgl_pelaksanaan'))
                ->where('id', $this->request->getPost('id_detail'))
                ->update();
        } else {
            // dd('oke');
            $fileLama = $this->db->table('detail_kegiatan_csr')
                ->where('id', $this->request->getPost('id_detail'))->get()->getRowArray();
            // dd($this->request->getFile('foto')->getName());
            $fileBaru = $this->request->getFile('laporan');

             // Jika ada file baru, hapus file lama
             $fileToDelete = FCPATH . 'laporan/' . $fileLama['file'];
             if (file_exists($fileToDelete)) {
                 unlink($fileToDelete);
             }
               // Upload file baru
            $newName = $fileBaru->getRandomName();
            $fileBaru->move('laporan', $newName);

            $this->db->table('kegiatan_csr')
                ->set('tahun', $this->request->getPost('tahun'))
                ->set('ruang_lingkup', $this->request->getPost('ruang_lingkup'))
                ->set('urusan_bidang', $this->request->getPost('urusan_bidang'))
                ->set('program_kegiatan', $this->request->getPost('program_kegiatan'))
                ->set('aktifitas', $this->request->getPost('aktifitas'))
                ->set('alamat', $this->request->getPost('alamat'))
                ->set('kapanewon', $this->request->getPost('kapanewon'))
                ->set('kalurahan', $this->request->getPost('kalurahan'))
                ->set('biaya', $this->request->getPost('biaya'))
                ->set('volume', $this->request->getPost('volume'))
                ->set('satuan', $this->request->getPost('satuan'))
                ->set('opd', $this->request->getPost('opd'))
                ->where('id', $this->request->getPost('id'))
                ->update();

            $this->db->table('detail_kegiatan_csr')
                ->set('nominal', $this->request->getPost('nominal'))
                ->set('file', $newName)
                ->set('waktu', $this->request->getPost('tgl_pelaksanaan'))
                ->where('id', $this->request->getPost('id_detail'))
                ->update();
        }
        session()->setFlashdata('success', 'Data berhasil disimpan');
        return redirect()->to(base_url('admin/kegiatan_csr_non'));
    }

    public function kegiatan_hapus($id)
    {
        $this->db->table('kegiatan_csr')->where('id', $id)->delete();
        return redirect()->to(base_url('admin/kegiatan_csr'));
    }

    public function kegiatan_hapus_non($id, $id_detail)
    {
        $this->db->table('kegiatan_csr')->where('id', $id)->delete();
        $this->db->table('detail_kegiatan_csr')->where('id', $id_detail)->delete();
        return redirect()->to(base_url('admin/kegiatan_csr_non'))->with('success', 'Data berhasil dihapus');
    }

    public function pilih_kegiatan()
    {
        $cekKegiatan = $this->db->table('kegiatan_csr')->where('id', $this->request->getVar('id_kegiatan_csr'))->get()->getRowArray();
        if ($cekKegiatan['status'] == 1) {
            session()->setFlashdata('error', 'CSR sudah diambil');
            return redirect()->to(base_url('user/kegiatan_csr'));
        } else {
            $nominal = str_replace('.', '', $this->request->getVar('nominal'));
            // dd($nominal);
            $this->db->table('detail_kegiatan_csr')
                ->set('id_kegiatan_csr', $this->request->getVar('id_kegiatan_csr'))
                ->set('id_user', session('id_user'))
                ->set('nominal', $nominal)
                ->insert();

            return redirect()->to(base_url('user/my_kegiatan_csr'));
        }
    }

    public function my_kegiatan_csr()
    {
        $kegiatan = $this->db->table('detail_kegiatan_csr')
            ->select('detail_kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, detail_kegiatan_csr.nominal, detail_kegiatan_csr.file')
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

    public function upload_laporan_admin()
    {
        $kegiatan = $this->db->table('detail_kegiatan_csr')
            ->select('nama_perusahaan, detail_kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, detail_kegiatan_csr.nominal, detail_kegiatan_csr.file')
            ->join('kegiatan_csr', 'detail_kegiatan_csr.id_kegiatan_csr=kegiatan_csr.id')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->join('perusahaan', 'detail_kegiatan_csr.id_user=perusahaan.id_user')
            ->where('file', null)
            ->get()->getResultArray();


        $data = [
            'kegiatan' => $kegiatan,
        ];
        // dd($data);
        return view('admin/kegiatan_csr/upload_laporan_admin', $data);
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
                $aktifitas = $row[5];
                $alamat = $row[6];
                $kalurahan = $row[7];
                $kapanewon = $row[8];
                $harga = $row[9];
                $volume = $row[10];
                $satuan = $row[11];
                $opd = $row[12];

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
                    $data_ruang_lingkup = [
                        'ket' => strtoupper($ruang_lingkup)
                    ];
                    $this->db->table('ruang_lingkup')->insert($data_ruang_lingkup);
                    $ruang = $this->db->table('ruang_lingkup')->like('TRIM(ket)', trim($des_lingkup))->get()->getRowArray();
                    $id_ruang = $ruang['id'];
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

                if (empty($alamat)) {
                    $alamat = '';
                } else {
                    $alamat = $alamat;
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
                    'aktifitas' => $aktifitas,
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
            return redirect()->to(base_url('admin/kegiatan_upload_all'));
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
                'aktifitas' => $k['aktifitas'],
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
        return redirect()->to(base_url('admin/kegiatan_csr'));
    }

    public function kegiatan_upload_kosong()
    {
        $this->db->table('kegiatan_upload')->truncate();
        return redirect()->to(base_url('admin/kegiatan_upload_all'));
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
            ->set('aktifitas', $this->request->getVar('aktifitas'))
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

        return redirect()->to(base_url('admin/kegiatan_upload_all'));
    }

    public function kegiatan_upload_hapus($id)
    {
        $this->db->table('kegiatan_upload')->where('id', $id)->delete();
        return redirect()->to(base_url('admin/kegiatan_upload_all'));
    }

    public function upload_laporan()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }

        $image = $this->request->getFile('laporan');
        // dd($this->request->getFile('laporan'));

        // Validasi tipe file
        if (!$image->isValid() || $image->getClientMimeType() !== 'application/pdf') {
            return 'Hanya file PDF yang diperbolehkan.';
        }

        // Validasi ukuran file maksimal 500 KB (500 * 1024 bytes)
        if ($image->getSize() > 500 * 1024) {
            return 'Ukuran file terlalu besar. Maksimal 500 KB.';
        }

        if (empty($image)) {
            return redirect()->to(base_url('user/my_kegiatan_csr'));
        }
        if ($image->isValid() && in_array($image->getClientMIMEType(), ['application/pdf'])) {
            $waktu_input = $this->request->getPost('tgl_pelaksanaan');
            $waktu_db =  $waktu_input . ' 00:00:00';
            $newName = $image->getRandomName();
            $image->move('laporan', $newName);

            $this->db->table('detail_kegiatan_csr')
                ->set('waktu', $waktu_db)
                ->set('file', $newName)
                ->where('id', $this->request->getPost('id'))
                ->update();

            return redirect()->to(base_url('user/my_kegiatan_csr'));
        } else {
            return redirect()->to(base_url('user/my_kegiatan_csr'));
        }
    }

    public function upload_laporan_simpan()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }

        $image = $this->request->getFile('laporan');
        // dd($this->request->getFile('laporan'));

        // Validasi tipe file
        if (!$image->isValid() || $image->getClientMimeType() !== 'application/pdf') {
            return 'Hanya file PDF yang diperbolehkan.';
        }

        // Validasi ukuran file maksimal 500 KB (500 * 1024 bytes)
        if ($image->getSize() > 500 * 1024) {
            return 'Ukuran file terlalu besar. Maksimal 500 KB.';
        }

        if (empty($image)) {
            return redirect()->to(base_url('admin/upload_laporan_admin'));
        }
        if ($image->isValid() && in_array($image->getClientMIMEType(), ['application/pdf'])) {
            $waktu_input = $this->request->getPost('tgl_pelaksanaan');
            $waktu_db =  $waktu_input . ' 00:00:00';
            $newName = $image->getRandomName();
            $image->move('laporan', $newName);

            $this->db->table('detail_kegiatan_csr')
                ->set('waktu', $waktu_db)
                ->set('file', $newName)
                ->where('id', $this->request->getPost('id'))
                ->update();

            return redirect()->to(base_url('admin/upload_laporan_admin'))->with('success', 'Data berhasil diupload');
        } else {
            return redirect()->to(base_url('admin/upload_laporan_admin'))->with('success', 'Data berhasil diupload');
        }
    }

    public function print_allkegiatan()
    {
        $kegiatan = $this->db->table('kegiatan_csr')
            ->select('kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->get()->getResultArray();
        $data = [
            'kegiatan' => $kegiatan
        ];
        return view('admin/kegiatan_csr/print_allkegiatan', $data);
    }

    public function print_allkegiatan_non()
    {
        $kegiatan = $this->db->table('kegiatan_csr')
            ->select('volume, kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, status, waktu, file, nominal, detail_kegiatan_csr.id as id_detail')
            ->join('ruang_lingkup', 'kegiatan_csr.ruang_lingkup=ruang_lingkup.id')
            ->join('urusan_bidang', 'kegiatan_csr.urusan_bidang=urusan_bidang.id')
            ->join('kalurahan', 'kegiatan_csr.kalurahan=kalurahan.id_kalurahan')
            ->join('detail_kegiatan_csr', 'kegiatan_csr.id=detail_kegiatan_csr.id_kegiatan_csr')
            ->where('id_user', session('id_user'))
            ->get()->getResultArray();
        $data = [
            'kegiatan' => $kegiatan
        ];
        return view('admin/kegiatan_csr/print_allkegiatan_non', $data);
    }

    public function print_mykegiatan()
    {
        $kegiatan = $this->db->table('detail_kegiatan_csr')
            ->select('detail_kegiatan_csr.id, kegiatan_csr.tahun, ruang_lingkup.ket as ruang_lingkup, urusan_bidang.ket as urusan_bidang, kegiatan_csr.program_kegiatan, aktifitas, kegiatan_csr.alamat, kalurahan.nm_kapanewon as kapanewon, kalurahan.nm_kalurahan as kalurahan, kegiatan_csr.biaya, kegiatan_csr.volume, kegiatan_csr.satuan, kegiatan_csr.opd, detail_kegiatan_csr.nominal, detail_kegiatan_csr.file')
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

    public function preview_laporan($nm_file)
    {
        $sub = substr($nm_file,-3);
        $data = [
            'nm_file' => $nm_file
        ];
        if ($sub == 'pdf'){
            return view('admin/kegiatan_csr/preview_upload', $data);
        }else{
            return view('admin/kegiatan_csr/preview_upload_gambar', $data);
        }
    }

    public function format_kegiatan(){
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        // Buat sebuah variabel untuk menampung pengaturan style dari header tabel
        

        // Buat header tabel nya pada baris ke 3
        $sheet->setCellValue('A1', "NO.");  
        $sheet->setCellValue('B1', "TAHUN");
        $sheet->setCellValue('C1', "RUANG LINGKUP TSP"); 
        $sheet->setCellValue('D1', "URUSAN/BIDANG");
        $sheet->setCellValue('E1', "USULAN PROGRAM/KEGIATAN");
        $sheet->setCellValue('F1', "AKTIFITAS");
        $sheet->setCellValue('G1', "ALAMAT");
        $sheet->setCellValue('H1', "KALURAHAN"); 
        $sheet->setCellValue('I1', "KAPANEWON"); 
        $sheet->setCellValue('J1', "PERKIRAAN BIAYA"); 
        $sheet->setCellValue('K1', "VOLUME (RINCIAN)"); 
        $sheet->setCellValue('L1', "SATUAN"); 
        $sheet->setCellValue('M1', "OPD"); 
    
        // Set width kolom
        $sheet->getColumnDimension('A')->setAutoSize(true); // Set width kolom A
        $sheet->getColumnDimension('B')->setAutoSize(true); // Set width kolom B
        $sheet->getColumnDimension('C')->setAutoSize(true); // Set width kolom C
        $sheet->getColumnDimension('D')->setAutoSize(true); // Set width kolom D
        $sheet->getColumnDimension('E')->setAutoSize(true); // Set width kolom E
        $sheet->getColumnDimension('F')->setAutoSize(true);
        $sheet->getColumnDimension('G')->setAutoSize(true);
        $sheet->getColumnDimension('H')->setAutoSize(true);
        $sheet->getColumnDimension('I')->setAutoSize(true);
        $sheet->getColumnDimension('J')->setAutoSize(true);
        $sheet->getColumnDimension('K')->setAutoSize(true);
        $sheet->getColumnDimension('L')->setAutoSize(true);
        $sheet->getColumnDimension('M')->setAutoSize(true);
        
        // Set height semua kolom menjadi auto (mengikuti height isi dari kolommnya, jadi otomatis)
        $sheet->getDefaultRowDimension()->setRowHeight(-1);
        // Set orientasi kertas jadi LANDSCAPE
        $sheet->getPageSetup()->setOrientation(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::ORIENTATION_LANDSCAPE);
        // Set judul file excel nya
        $sheet->setTitle("FORMAT KEGIATAN CSR");
        // Proses file excel
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="format_kegiatan_csr.xlsx"'); // Set nama file excel nya
        header('Cache-Control: max-age=0');
        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
      }
}
