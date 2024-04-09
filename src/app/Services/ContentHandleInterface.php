<?php
namespace App\Services;

use Illuminate\Http\Request;

interface ContentHandlerInterface{
    public function list();
    public function detail($id);
}