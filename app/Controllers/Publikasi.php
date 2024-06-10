<?php


namespace App\Controllers;

// use Config\Services;


class Publikasi extends BaseController
{
    public function index_admin()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }

        $query = $this->db->table('publikasi')
            ->select('publikasi.*')
            ->join('user', 'publikasi.id_user=user.id');
        if (session('id_user') > 0) {
            $query->where('id_user', session('id_user'));
        }
        // ->where('level >', 0)
        $publikasi = $query->get()
            ->getResultArray();
        $data = [
            'publikasi' => $publikasi
        ];
        // dd($data);
        return view('admin/publikasi/index_admin', $data);
    }

    public function publikasi_simpan()
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }

        $image = $this->request->getFile('foto');
        // dd($image);
        if ($image->isValid() && in_array($image->getClientMIMEType(), ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'])) {

            $encrypted = random_string('alnum', 20);
            $newName = $image->getRandomName();
            $image->move('publikasi', $newName);

            $this->db->table('publikasi')
                ->set('tgl', date('Y-m-d H:i:s'))
                ->set('judul', $this->request->getVar('judul'))
                ->set('slug', $encrypted)
                ->set('foto', $newName)
                ->set('deskripsi', $this->request->getVar('deskripsi'))
                ->set('id_user', session('id_user'))
                ->set('author', $this->request->getVar('author'))
                ->insert();

            return redirect()->to(base_url('/publikasi/admin'));
        } else {
            return redirect()->to(base_url('/publikasi/admin'));
        }
    }

    public function publikasi_edit($id)
    {
        if (!session()->has('username')) {
            // Redirect ke halaman login jika sesi tidak ada
            return redirect()->to('/login');
        }

        $publikasi = $this->db->table('publikasi')
            ->where('id', $id)->get()->getRowArray();

        $data = [
            'd' => $publikasi
        ];
        // dd($data);
        return view('admin/publikasi/publikasi_edit', $data);
    }

    public function publikasi_update()
    {
        $publikasi = $this->db->table('publikasi')
            ->where('id', $this->request->getVar('id'))->get()->getRowArray();
        // dd($this->request->getFile('foto')->getName());

        if ($this->request->getFile('foto')->getName() == '') {

            $encrypted = random_string('alnum', 20);
            $this->db->table('publikasi')
                ->set('judul', $this->request->getVar('judul'))
                ->set('slug', $encrypted)
                ->set('deskripsi', $this->request->getVar('deskripsi'))
                ->set('author', $this->request->getVar('author'))
                ->where('id', $this->request->getVar('id'))
                ->update();

            return redirect()->to(base_url('/publikasi/admin'));
        } elseif ($this->request->getFile('foto')->getName() != '') {
            // dd("gambar ada");

            $image = $this->request->getFile('foto');
            if ($image->isValid() && in_array($image->getClientMIMEType(), ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'])) {

                $folderPath = 'publikasi/'; // Gantilah dengan path folder yang ingin Anda periksa
                $fileToDelete = $publikasi['foto']; // Gantilah dengan nama file yang ingin Anda hapus

                // Periksa apakah folder ada
                if (is_dir($folderPath)) {
                    // Periksa apakah file yang ingin dihapus ada di dalam folder
                    if (file_exists("$folderPath/$fileToDelete")) {
                        // Hapus file
                        if (unlink("$folderPath/$fileToDelete")) {
                            echo "File '$fileToDelete' berhasil dihapus.";
                        } else {
                            echo "Gagal menghapus file '$fileToDelete'.";
                        }
                    } else {
                        echo "File '$fileToDelete' tidak ditemukan di dalam folder '$folderPath'.";
                    }
                } else {
                    echo "Folder '$folderPath' tidak ada atau bukan merupakan folder.";
                }

                $newName = $image->getRandomName();
                $image->move('publikasi', $newName);

                $encrypted = random_string('alnum', 20);
                $this->db->table('publikasi')
                    ->set('judul', $this->request->getVar('judul'))
                    ->set('slug', $encrypted)
                    ->set('foto', $newName)
                    ->set('deskripsi', $this->request->getVar('deskripsi'))
                    ->set('author', $this->request->getVar('author'))
                    ->where('id', $this->request->getVar('id'))
                    ->update();

                return redirect()->to(base_url('/publikasi/admin'));
            } else {
                return redirect()->to(base_url('/publikasi/admin'));
            }
        }
    }

    public function publikasi_hapus($id)
    {
        $publikasi = $this->db->table('publikasi')
            ->where('id', $id)->get()->getRowArray();

        $folderPath = 'publikasi/'; // Gantilah dengan path folder yang ingin Anda periksa
        $fileToDelete = $publikasi['foto']; // Gantilah dengan nama file yang ingin Anda hapus

        // Periksa apakah folder ada
        if (is_dir($folderPath)) {
            // Periksa apakah file yang ingin dihapus ada di dalam folder
            if (file_exists("$folderPath/$fileToDelete")) {
                // Hapus file
                if (unlink("$folderPath/$fileToDelete")) {
                    echo "File '$fileToDelete' berhasil dihapus.";
                } else {
                    echo "Gagal menghapus file '$fileToDelete'.";
                }
            } else {
                echo "File '$fileToDelete' tidak ditemukan di dalam folder '$folderPath'.";
            }
        } else {
            echo "Folder '$folderPath' tidak ada atau bukan merupakan folder.";
        }

        $this->db->table('publikasi')->where('id', $id)->delete();
        return redirect()->to(base_url('/publikasi/admin'));
    }

    public function publikasi_view($id)
    {
        $cek = $this->db->table('publikasi')->where('slug', $id)->get()->getRowArray();
        // dd($cek);
        if ($cek['status'] == 1) {
            $ganti_status = 0;
        } else {
            $ganti_status = 1;
        }
        $this->db->table('publikasi')
            ->set('status', $ganti_status)
            ->where('slug', $id)
            ->update();

        return redirect()->to(base_url('/publikasi/admin'));
    }

    public function publikasi_detail($id)
    {
        $publikasi = $this->db->table('publikasi')
            ->where('slug', $id)->get()->getRowArray();

        $query = $this->db->table('publikasi')
            ->select('publikasi.*')
            ->join('user', 'publikasi.id_user=user.id')
            ->where('status', 1)
            ->orderBy('id', 'desc')->limit(5);
        // ->where('level >', 0)
        $publikasi_new = $query->get()
            ->getResultArray();

        $data = [
            'd' => $publikasi,
            'd_new' => $publikasi_new
        ];
        // dd($data);
        return view('depan/publikasi_detail', $data);
    }
}
