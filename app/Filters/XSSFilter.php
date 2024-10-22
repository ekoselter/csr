<?php

namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

class XSSFilter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        // Bersihkan input dari XSS
        $request->setGlobal('post', $this->cleanInput($request->getPost()));
        $request->setGlobal('get', $this->cleanInput($request->getGet()));
        $request->setGlobal('request', $this->cleanInput($request->getRawInput()));
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Tidak ada aksi setelah respons
    }

    private function cleanInput($input)
    {
        if (is_array($input)) {
            return array_map([$this, 'cleanInput'], $input);
        }
        return htmlspecialchars($input, ENT_QUOTES, 'UTF-8');
    }
}
