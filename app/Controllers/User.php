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

        $recaptchaResponse = $this->request->getPost('g-recaptcha-response');

        // Ambil Secret Key dari file .env
        $secretKey = getenv('RECAPTCHA_SECRET_KEY');

        // Kirim permintaan untuk verifikasi ke Google
        $verifyResponse = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secretKey}&response={$recaptchaResponse}");
        $responseData = json_decode($verifyResponse);

        // Memeriksa hasil verifikasi reCAPTCHA
        if (!$responseData->success) {
            // Jika verifikasi gagal
            return redirect()->back()->with('error', 'Recaptcha verification failed. Please try again.');
        }

        $user = $this->db->table('perusahaan')
            ->select('perusahaan.*,user.username, user.password, user.level')
            ->join('user', 'perusahaan.id_user=user.id')
            ->where('username', $this->request->getVar('username'))->get()->getRowArray();
        if ($user && password_verify($this->request->getVar('password'), $user['password'])) {
            $session = session();
            $session->set($user);
            return redirect()->to(base_url('/dashboard'));
        } else {
            return redirect()->back()->with('error', 'Password atau Username salah !');
        }
    }

    public function logout()
    {
        $session = session();
        $session->destroy();

        return redirect()->to(base_url('/login'));
    }
}
