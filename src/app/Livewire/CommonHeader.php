<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\View\ComponentSlot;

class CommonHeader extends Component
{
    protected ?ComponentSlot $title;

    public function mount($title)
    {
        $this->title = $title;
    }

    public function render()
    {
        return view('livewire.common-header');
    }
}
