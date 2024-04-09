<?php

namespace App\Http\Controllers\Livewire\Cloudinary;

use Livewire\Component;
use Livewire\WithFileUploads;

class ModalUpload extends Component
{
    public function render()
    {
        return view('livewire.cloudinary.modal-upload');
    }
}
