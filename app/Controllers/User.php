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
    $request = \Config\Services::request();
    $session = session();

    // Ambil data reCAPTCHA
    $recaptchaResponse = $request->getPost('g-recaptcha-response');
    $secretKey = getenv('RECAPTCHA_SECRET_KEY');

    // Kirim permintaan untuk verifikasi ke Google
    $verifyResponse = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secretKey}&response={$recaptchaResponse}");
    $responseData = json_decode($verifyResponse);

    if (!$responseData->success) {
        return redirect()->back()->with('error', 'Recaptcha verification failed. Please try again.');
    }

    // Ambil data user berdasarkan username
    $username = $request->getVar('username');
    $password = $request->getVar('password');

    $user = $this->db->table('perusahaan')
        ->select('perusahaan.id AS perusahaan_id, user.id AS user_id, user.username, user.password, user.level')
        ->join('user', 'perusahaan.id_user = user.id')
        ->where('user.username', $username)
        ->get()
        ->getRowArray();

    // Debugging (hapus setelah cek)
    // print_r($user); die;

    if ($user && password_verify($password, $user['password'])) {
        $sessionData = [
            'isLoggedIn' => true,
            'id_user'    => $user['user_id'],
            'username'   => $user['username'],
            'level'      => $user['level'],
            'perusahaan_id' => $user['perusahaan_id']
        ];

        $session->set($sessionData);
        // return redirect()->to('/dashboard');
        if ($user['level'] == 0) {
            return redirect()->to('/admin/dashboard');
        } else {
            return redirect()->to('/user/dashboard');
        }
    } else {
        return redirect()->back()->with('error', 'Password atau Username salah!');
    }
}


    public function logout()
    {
        $session = session();
        $session->destroy();

        return redirect()->to(base_url('/login'));
    }
}
