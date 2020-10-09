<?php

namespace App\Controllers;

use App\Models\BarangModel;
use CodeIgniter\HTTP\Request;
use Config\Validation;

class Home extends BaseController
{
	protected $barangModel;
	public function __construct()
	{
		$this->barangModel = new BarangModel();
	}
	public function index()
	{
		return view('admin/index');
	}

	public function form()
	{

		$data = [
			'title' => 'Barang | List Barang',
			'barang' => $this->barangModel->getBarang()
		];

		return view('admin/form', $data);
	}
	//--------------------------------------------------------------------

}
