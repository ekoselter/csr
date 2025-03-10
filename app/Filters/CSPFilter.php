<?php

namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

class CSPFilter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        // Tidak perlu diubah sebelum request
    }

   public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        $csp = implode(' ', [
            "default-src 'self';",
            "script-src 'self' https://maps.googleapis.com https://unpkg.com;",
            "style-src 'self' 'unsafe-inline' https://fonts.googleapis.com https://unpkg.com;",
            "img-src 'self' https://maps.gstatic.com https://maps.googleapis.com https://tile.openstreetmap.org;",
            "font-src 'self' https://fonts.gstatic.com;"
        ]);
        
        $response->setHeader('Content-Security-Policy', $csp);
        
    }
}
