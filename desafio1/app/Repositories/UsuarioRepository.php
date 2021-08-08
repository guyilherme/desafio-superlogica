<?php

namespace App\Repositories;

use App\Models\User as Usuario;

class UsuarioRepository extends AbstractRepository
{
    protected $model;

    public function __construct(Usuario $usuarioModel)
    {
        $this->model = $usuarioModel;
    }

    public function store(Array $data)
    {
        return $this->model->create($data);
    }
}