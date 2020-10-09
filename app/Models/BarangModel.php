<?php

namespace App\Models;

use CodeIgniter\Model;

class BarangModel extends Model
{
    protected $table = 'barang';
    protected $useTimestamps = true;
    //protected $allowedFields = ['judul', 'slug', 'penulis', 'penerbit', 'sampul'];

    public function getBarang($id = false)
    {
        if ($id == false) {
            return $this->findAll();
        }

        return $this->where(['idBarang' => $id])->first();
    }
}
