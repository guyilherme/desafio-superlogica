<?php

namespace App\Http\Controllers;

use App\Services\UsuarioService;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    protected $service;
    
    public function __construct(UsuarioService $usuarioService)
    {
        $this->service = $usuarioService;
    }


    public function store(Request $request)
    {
        $result = $this->service->store($request);
        return response()->json($request);
    }

}