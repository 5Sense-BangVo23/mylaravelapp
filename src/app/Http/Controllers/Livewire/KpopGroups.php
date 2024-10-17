<?php

namespace App\Http\Controllers\Livewire;

use Livewire\Component;
use App\Models\KpopGroup;
use Livewire\WithFileUploads;

class KpopGroups extends Component
{
    use WithFileUploads;

    public $groups, $group_id, $name, $debut_date, $cover_image, $profile_image, $agency;
    public $thumbnails = []; // This will store both uploaded and saved thumbnails
    public $isOpen = false;
    public $isDetailOpen = false;
    public $detailGroup;
    public $closeButtonColor = 'text-gray-800';
    public $formSubmitted = false;

    public function mount()
    {
        $groups = KpopGroup::where('active', true)
            ->select('id', 'name')
            ->cursor(); 
    
        $this->groups = [];
        foreach ($groups as $group) {
            $this->groups[] = $group;
        }
    }
    
    
    

    public function rules()
    {
        return [
            'thumbnails.*' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'cover_image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048', 
            'profile_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', 
           
        ];
    }

    public function create()
    {
        $this->resetInput();
        $this->isOpen = true;
    }

    public function edit($id)
    {
        $group = KpopGroup::findOrFail($id);
        $this->group_id = $group->id;
        $this->name = $group->name;
        $this->debut_date = $group->debut_date;
        $this->agency = $group->agency;
    
        // Load stored images
        $this->cover_image = $group->cover_image ? config('app.asset_function')('uploads/' . $group->cover_image) : null;
        $this->profile_image = $group->profile_image ? config('app.asset_function')('uploads/' . $group->profile_image) : null;
    
        // For thumbnails, decode JSON and store the paths (if any)
        $this->thumbnails = json_decode($group->thumbnails, true) ?? [];
    
        $this->isOpen = true;
    }

    public function save()
    {
        $group = $this->group_id ? KpopGroup::findOrFail($this->group_id) : new KpopGroup;

        $group->name = $this->name;
        $group->debut_date = $this->debut_date;
        $group->agency = $this->agency;

        // Chỉ xác thực khi có giá trị từ người dùng
        $rules = [
            'name' => 'required|string',
            'debut_date' => 'required|date',
            'agency' => 'required|string',
            'thumbnails.*' => 'nullable|image',
            // 'cover_image' => 'nullable|image',
            // 'profile_image' => 'nullable|image',
        ];

        // Xác thực profile_image chỉ khi người dùng đã tải lên hình ảnh mới
        if ($this->profile_image instanceof \Illuminate\Http\UploadedFile) {
            $rules['profile_image'] = 'image';
        }

        $this->validate($rules);

        if ($this->cover_image instanceof \Illuminate\Http\UploadedFile) {
            $cover_image_path = $this->cover_image->store('cover','public');
            $group->cover_image = $cover_image_path;
        }

        // Handle profile image upload
        if ($this->profile_image instanceof \Illuminate\Http\UploadedFile) {
            $profile_image_path = $this->profile_image->store('profile_image','public');
            $group->profile_image = $profile_image_path;
        }

        // Save the group before handling thumbnails
        $group->save();

        // Handle thumbnails upload (new ones)
        if (is_array($this->thumbnails)) {
            $thumbnailPaths = $this->uploadThumbnails();

            // Merge new thumbnails with existing ones
            $existingThumbnails = json_decode($group->thumbnails, true) ?? [];
            $group->thumbnails = json_encode(array_merge($existingThumbnails, $thumbnailPaths));

            // Save the group again to store updated thumbnails
            $group->save();
        }

        $this->resetInput();
        $this->closeModal();
        $this->emit('groupUpdated');
        $this->formSubmitted = true;
    }


    public function uploadThumbnails()
    {
        $paths = [];
        foreach ($this->thumbnails as $thumbnail) {
            if ($thumbnail instanceof \Illuminate\Http\UploadedFile) {
                $paths[] = $thumbnail->store('thumbnails', 'public');
            }
        }
        return $paths;
    }

    public function toggleActive($groupId)
    {
        $group = KpopGroup::find($groupId);

        if ($group) {
            $group->active = !$group->active;
            $group->save();
        }
    }


    public function closeModal()
    {
        $this->isOpen = false;
    }

    public function resetInput()
    {
        $this->name = '';
        $this->debut_date = '';
        $this->agency = '';
        $this->cover_image = null;
        $this->profile_image = null;
        $this->thumbnails = []; // Clear out the thumbnails
    }

    public function render()
    {
        $this->groups = KpopGroup::select(
            'id', 
            'active',
            'name', 
            'debut_date', 
            'agency', 
            'cover_image',
            'profile_image',
            'thumbnails'
        )->get();

        return view('livewire.kpop-groups');
    }
}
