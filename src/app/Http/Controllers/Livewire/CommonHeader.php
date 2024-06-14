<?php

namespace App\Http\Controllers\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Illuminate\View\ComponentSlot;

class CommonHeader extends Component
{
    public string $layout;
    public ?int $guest_id = null;
    protected ?ComponentSlot $title;
   
    public function mount($layout,$title)
    {
        $this->layout = $layout;
        if (Auth::check()) {
            $this->guest_id = Auth::user()->id;       
            session(['guest_id' => $this->guest_id]); 
        }else{
            $this->guest_id = null;
            session(['guest_id' => $this->guest_id]);
        }
        $this->title = $title;

       
    }

    public function render()
    {
        return view('livewire.common-header', array(
            'layout' => $this->layout,
            'guest_id' => $this->guest_id,
            'title' => $this->title,
        ));
    }
}
