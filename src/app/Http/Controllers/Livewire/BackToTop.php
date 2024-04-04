<?php

namespace App\Http\Controllers\Livewire;

use Livewire\Component;

class BackToTop extends Component
{
    public $isVisible = false;

    public function render()
    {
        return view('livewire.back-to-top');
    }

    public function setIsVisible($isVisible)
    {
        $this->isVisible = $isVisible;
    }

    public function scrollToTop()
    {
        $this->emit('scrollToTop');
    }
}
