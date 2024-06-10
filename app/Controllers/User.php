<?php

namespace App\Controllers;

class User extends BaseController
{
    public function login()
    {
        return view('admin/user/login');
    }

    public function verifikasi()
    {
        $user = $this->db->table('perusahaan')
            ->select('perusahaan.*,user.username, user.password, user.level')
            ->join('user', 'perusahaan.id_user=user.id')
            ->where('username', $this->request->getVar('username'))->get()->getRowArray();
        if ($user && password_verify($this->request->getVar('password'), $user['password'])) {
            $session = session();
            $session->set($user);
            return redirect()->to(base_url('/dashboard'));
        } else {
            return redirect()->to(base_url('/login'));
        }
    }

    public function logout()
    {
        $session = session();
        $session->destroy();

        return redirect()->to(base_url('/login'));
    }
}
