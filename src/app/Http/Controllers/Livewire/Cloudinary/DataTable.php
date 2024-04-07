<?php

namespace App\Http\Controllers\Livewire\Cloudinary;

use App\Http\Controllers\Api\CloudinaryController as ApiCloudinaryController;
use App\Models\Media;
use Livewire\Component;

use function Laravel\Prompts\confirm;

class DataTable extends Component
{
    public $count = 0;
    public $data;

    public function mount()
    {
        $this->fetchData();
    }

    public function fetchData()
    {
        $controller = new ApiCloudinaryController();
        $response = $controller->getData();

        if ($response->getStatusCode() === 200) {
            $this->data = json_decode($response->getContent()); // Decode JSON content
        } else {
            $this->data = null; // Set data to null if API call fails
        }
    }

    public function render()
    {
        $this->count = is_array($this->data) ? count($this->data) : 0;
        return view('livewire.cloudinary.data-table', [
            'data' => $this->data,
            'count' => $this->count,
        ]);
    }
}
