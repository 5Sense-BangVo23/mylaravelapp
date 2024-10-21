<?php

namespace App\Http\Controllers\Livewire;

use App\Models\KpopGroup;
use App\Services\GoogleDriveService;
use Livewire\Component;
use Livewire\WithFileUploads;
use Exception;

class KpopGroups extends Component
{
    use WithFileUploads;
    const RENDER_DATA_FIELDS = [
        'id',
        'active',
        'name', 
        'debut_date', 
        'agency',
        'cover_image',
        'profile_image',
        'thumbnails'
    ];
    public $groups, $group_id, $name, $debut_date, $cover_image, $profile_image, $agency;
    public $thumbnails = [];
    public $isOpen = false;
    public $formSubmitted = false;
    public $isDetailOpen = false;
    public $detailGroup;
    public $closeButtonColor = 'text-gray-800';
    public $selectedMember;
    public $closePopup = false; 
    protected $googleDriveService;
    
    public function __construct()
    {
        $this->googleDriveService = new GoogleDriveService();
    }

    public function mount()
    {
        $this->groups = KpopGroup::with('googleDriveFiles')->select('id', 'active', 'name', 'debut_date', 'agency')->get();
        $this->isDetailOpen = false; 
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
        $this->cover_image = $group->cover_image;
        $this->profile_image = $group->profile_image;
        $this->thumbnails = json_decode($group->thumbnails, true) ?? [];
        $this->isOpen = true;
    }

    public function viewDetail($id)
    {
        $this->detailGroup = KpopGroup::with('googleDriveFiles')->findOrFail($id);
        $this->isDetailOpen = true;
    }

    public function closeDetail()
    {
        $this->isDetailOpen = false;
    }

    public function save()
    {
        $group = $this->group_id ? KpopGroup::findOrFail($this->group_id) : new KpopGroup;
        $group->name = $this->name;
        $group->debut_date = $this->debut_date;
        $group->agency = $this->agency;

        $this->validate([
            'name' => 'required|string',
            'debut_date' => 'required|date',
            'agency' => 'required|string',
        ]);

        if ($this->cover_image instanceof \Illuminate\Http\UploadedFile) {
            $googleDriveFile_cover = $this->googleDriveService->uploadFile($this->cover_image, $group->id, 'cover_file');
            if ($googleDriveFile_cover) {
                $group->cover_image = $googleDriveFile_cover->google_drive_url;
            }
        }

        if ($this->profile_image instanceof \Illuminate\Http\UploadedFile) {
            $googleDriveFile_profile = $this->googleDriveService->uploadFile($this->profile_image, $group->id, 'profile_file');
            if ($googleDriveFile_profile) {
                $group->profile_image = $googleDriveFile_profile->google_drive_url;
            }
        }

        if (is_array($this->thumbnails)) {
            $thumbnailPaths = $this->uploadThumbnails($group->id);
            $existingThumbnails = json_decode($group->thumbnails, true) ?? [];
            $group->thumbnails = json_encode(array_merge($existingThumbnails, $thumbnailPaths));
        }

        $group->save();
        $this->resetInput();
        $this->closeModal();
        $this->emit('groupUpdated');
        $this->formSubmitted = true;
    }

    public function uploadThumbnails($group_id)
    {
        $paths = [];
        foreach ($this->thumbnails as $thumbnail) {
            if ($thumbnail instanceof \Illuminate\Http\UploadedFile) {
                $googleDriveFile_thumbnail = $this->googleDriveService->uploadFile($thumbnail, $group_id, 'thumbnails_file');
                if ($googleDriveFile_thumbnail) {
                    $paths[] = $googleDriveFile_thumbnail->google_drive_url;
                }
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

    public function toggleDetail()
    {
        $this->isDetailOpen = !$this->isDetailOpen; 
        $this->dispatchBrowserEvent('toggleSidebar');
    }

    public function closeModal()
    {
        $this->isOpen = false;
    }

    public function openMemberDetail($memberId)
    {
        $this->selectedMember = $this->detailGroup->members->find($memberId);
        $this->closePopup = false; 
    }

   


    public function resetInput()
    {
        $this->name = '';
        $this->debut_date = '';
        $this->agency = '';
        $this->cover_image = null;
        $this->profile_image = null;
        $this->thumbnails = [];
    }

    public function render()
    {
        $this->groups = KpopGroup::with('googleDriveFiles')->select(
            self::RENDER_DATA_FIELDS
        )->get();
        return view('livewire.kpop-groups');
    }
}
