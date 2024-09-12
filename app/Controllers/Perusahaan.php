<?php


namespace App\Controllers;

// use Config\Services;

class Perusahaan extends BaseController
{
    public function index(): string
    {
        $perusahaan = $this->db->table('perusahaan')
            ->join('user', 'perusahaan.id_user=user.id')
            ->where('level >', 0)
            ->get()->getResultArray();
        $data = [
            'perusahaan' => $perusahaan
        ];
        // dd($data);
        return view('admin/perusahaan/perusahaan', $data);
    }

    public function perusahaan_save()
    {
        // dd($this->request->getVar());
        $password = $this->request->getVar('password'); // Gantilah dengan password yang ingin Anda hash
        $encrypted = password_hash($password, PASSWORD_BCRYPT);
        // dd($encrypted);

        $add_user = $this->db->table('user')
            ->set('username', $this->request->getVar('username'))
            ->set('password', $encrypted)
            ->set('level', 1)
            ->set('password2', $this->request->getVar('password'))
            ->insert();
        $lastInsertID = $this->db->insertID();
        // dd($lastInsertID);

        $this->db->table('perusahaan')
            ->set('nama_perusahaan', $this->request->getVar('nama_perusahaan'))
            ->set('penanggungjawab', $this->request->getVar('penanggungjawab'))
            ->set('no_hp', $this->request->getVar('no_hp'))
            ->set('id_user', $lastInsertID)
            ->insert();

        return redirect()->to(base_url('/perusahaan'));
    }

    public function edit($id)
    {
        $perusahaan = $this->db->table('perusahaan')
            ->select('perusahaan.*,user.username, user.password, user.password2')
            ->join('user', 'perusahaan.id_user=user.id')
            ->where('perusahaan.id', $id)->get()->getRowArray();

        $data = [
            'd' => $perusahaan
        ];
        // dd($data);
        return view('admin/perusahaan/perusahaan_edit', $data);
    }

    public function perusahaan_update()
    {
        // dd($this->request->getVar());
        $password = $this->request->getVar('password'); // Gantilah dengan password yang ingin Anda hash
        $encrypted = password_hash($password, PASSWORD_BCRYPT);
        // dd($encrypted);

        $add_user = $this->db->table('user')
            ->set('username', $this->request->getVar('username'))
            ->set('password', $encrypted)
            ->set('password2', $this->request->getVar('password'))
            ->where('id', $this->request->getVar('id_user'))
            ->update();

        // dd($lastInsertID);

        $this->db->table('perusahaan')
            ->set('nama_perusahaan', $this->request->getVar('nama_perusahaan'))
            ->set('penanggungjawab', $this->request->getVar('penanggungjawab'))
            ->set('no_hp', $this->request->getVar('no_hp'))
            ->where('id_user', $this->request->getVar('id_user'))
            ->update();

        return redirect()->to(base_url('/perusahaan'));
    }

    public function perusahaan_hapus($id)
    {

        $this->db->table('perusahaan')->where('id', $id)->delete();
        return redirect()->to(base_url('/perusahaan'));
    }

}
