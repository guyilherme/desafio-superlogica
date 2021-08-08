<?php

namespace App\Services;

use Illuminate\Http\Request;
use App\Repositories\UsuarioRepository;
use App\Models\User as Usuario;

class UsuarioService
{
    protected $model;
    protected $repository;

    public function __construct(UsuarioRepository $usuarioRepository)
    {
        $this->repository = $usuarioRepository;
        $this->model = new Usuario();
    }

    public function store(Request $request)
    {
        $data = $request->all();
        $validated = $request->validate($this->model->getRules, $this->model->getMessages);
        if ($validated) {
            return $this->repository->store($data);
        }
    }
}