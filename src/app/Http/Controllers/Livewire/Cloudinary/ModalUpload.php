<?php

namespace App\Http\Controllers\Livewire\Cloudinary;

use Livewire\Component;
use Livewire\WithFileUploads;

class ModalUpload extends Component
{
    use WithFileUploads;

    public $file;
    protected $rules = [
        'file' => 'file', 
    ];

    public function updatedFile()
    {
        $this->validateOnly('file');
    }

    public function render()
    {
        
        return view('livewire.cloudinary.modal-upload');
    }
}
