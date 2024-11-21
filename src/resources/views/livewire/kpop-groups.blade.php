<div class="kpop-container">
    <h1 class="kpop-title">Kpop Groups Management</h1>
    
    <!-- Button to open create group modal -->
    <div class="text-center mb-4">
        <button class="btn btn-primary" wire:click="create()">Create New Group</button>
    </div>

    <!-- List of Kpop groups -->
    <div class="card-group">
        @foreach($groups as $group)
            <div class="card kpop-card">
                <!-- Display cover image or fallback to a sample image if not available -->
                <img src="{{ $group->cover_image ? $group->cover_image : 'https://via.placeholder.com/300x200?text=No+Image' }}" class="card-img-top" alt="Cover Image">
                <div class="card-body">
                    <h5 class="card-title">{{ $group->name }}</h5>
                    <p class="card-text"><strong>Debut Date:</strong> {{ $group->debut_date }}</p>
                    <p class="card-text"><strong>Agency:</strong> {{ $group->agency }}</p>
                    <button wire:click="toggleActive({{ $group->id }})" class="btn btn-{{ $group->active ? 'success' : 'danger' }}">
                        <!-- Unlocked Icon (visible when group is unlocked) -->
                        <i class="fa fa-unlock" aria-hidden="true" style="font-size: 1.5rem; display: {{ $group->active ? 'inline' : 'none' }};"></i>
                        
                        <!-- Locked Icon (visible when group is locked) -->
                        <i class="fa fa-lock" aria-hidden="true" style="font-size: 1.5rem; display: {{ $group->active ? 'none' : 'inline' }};"></i>
                    </button>
                </div>
                <div class="card-footer text-center">
                    <!-- Disable the View and Edit buttons if the group is locked -->
                    <button class="btn btn-info" wire:click="viewDetail({{ $group->id }})" {{ $group->active ? '' : 'disabled' }}>View</button>
                    <button class="btn btn-warning" wire:click="edit({{ $group->id }})" {{ $group->active ? '' : 'disabled' }}>Edit</button>
                </div>
            </div>
        @endforeach
    </div>
    

    <!-- Group Modal (Create/Edit) -->
    @if($isOpen)
    <div class="modal fade show" style="display: block;" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document" style="overflow-y:auto;height:500px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{{ $group_id ? 'Edit Group' : 'Create Group' }}</h5>
                    <button type="button" class="close" wire:click="closeModal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form wire:submit.prevent="save">
                        <!-- Group Name Input -->
                        <div class="form-group">
                            <label for="name" class="form-label">Group Name</label>
                            <input type="text" id="name" wire:model="name" class="form-control" placeholder="Enter group name">
                        </div>
                        
                        <!-- Debut Date Input -->
                        <div class="form-group">
                            <label for="debut_date" class="form-label">Debut Date</label>
                            <input type="date" id="debut_date" wire:model="debut_date" class="form-control">
                        </div>
                        
                        <!-- Agency Input -->
                        <div class="form-group">
                            <label for="agency" class="form-label">Agency</label>
                            <input type="text" id="agency" wire:model="agency" class="form-control" placeholder="Enter agency name">
                        </div>
    
                        <!-- Cover Image Display and Upload -->
                        @if($cover_image)
                            <div class="form-group">
                                <label class="form-label">Existing Cover Image</label>
                                <img src="{{ $cover_image }}" alt="Cover Image" class="img-fluid mb-2" style="max-width: 200px;">
                            </div>
                        @endif
                        <div class="form-group">
                            <label for="cover_image" class="form-label">Cover Image</label>
                            <input type="file" id="cover_image" wire:model="cover_image" class="form-control-file">
                        </div>
                        
                        <!-- Profile Image Display and Upload -->
                        @if($profile_image)
                            <div class="form-group">
                                <label class="form-label">Existing Profile Image</label>
                                <img src="{{ $profile_image }}" alt="Profile Image" class="img-fluid mb-2" style="max-width: 200px;">
                            </div>
                        @endif
                        <div class="form-group">
                            <label for="profile_image" class="form-label">Profile Image</label>
                            <input type="file" id="profile_image" wire:model="profile_image" class="form-control-file">
                        </div>
    
                        <!-- Thumbnails Display and Upload -->
                        @foreach($thumbnails as $thumbnail)
                            <div class="form-group">
                                <label class="form-label">Existing Thumbnail</label>
                                <img src="{{ $thumbnail }}" alt="Thumbnail Image" class="img-fluid mb-2" style="max-width: 100px;">
                            </div>
                        @endforeach
                        <div class="form-group">
                            <label for="thumbnails" class="form-label">Thumbnails</label>
                            <input type="file" id="thumbnails" wire:model="thumbnails" class="form-control-file" multiple>
                        </div>
    
                        <!-- Submit Button -->
                        <div class="form-group text-right">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    @endif

    <!-- Group Details Sidebar (When viewing a group) -->
    @if($isDetailOpen)
        <div class="sidebar" style="display: block;">
            <div class="sidebar-header">
                <h5>{{ $detailGroup->name }} - Details</h5>
                <button class="close" wire:click="closeDetail">&times;</button>
            </div>
            <div class="sidebar-body">
                <p><strong>Debut Date:</strong> {{ $detailGroup->debut_date }}</p>
                <p><strong>Agency:</strong> {{ $detailGroup->agency }}</p>

                <h6>Images:</h6>
                <!-- Display cover image or fallback to a sample image if not available -->
                <img src="{{ $detailGroup->cover_image ? $detailGroup->cover_image : 'https://via.placeholder.com/300x200?text=No+Image' }}" class="img-fluid mb-3" alt="Cover Image">
                <img src="{{ $detailGroup->profile_image ? $detailGroup->profile_image : 'https://via.placeholder.com/300x200?text=No+Image' }}" class="img-fluid mb-3" alt="Profile Image">

                <h6>Thumbnails:</h6>
                <div class="thumbnails">
                    @foreach(json_decode($detailGroup->thumbnails, true) as $thumbnail)
                        <img src="{{ $thumbnail }}" class="img-thumbnail" alt="Thumbnail">
                    @endforeach
                </div>

                <h6>Members:</h6>
                <div class="member-list">
                    @foreach($detailGroup->members as $member)
                        <button class="btn btn-outline-primary" wire:click="openMemberDetail({{ $member->id }})">{{ $member->name }}</button>
                    @endforeach
                </div>
            </div>
        </div>
    @endif
</div>

<style>
/* General Input Field Styling */
input[type="text"], input[type="date"], input[type="file"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1rem;
    background-color: #f9f9f9;
    transition: border-color 0.3s ease;
}

/* Focused Input Fields */
input[type="text"]:focus, input[type="date"]:focus, input[type="file"]:focus {
    border-color: #007bff;
    outline: none;
}

/* Style for the labels */
label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    font-size: 1.1rem;
    color: #333;
}

/* File Input Specific Styling */
input[type="file"] {
    padding: 5px 10px;
    background-color: #fff;
    border: 1px solid #ddd;
}

input[type="file"]:hover {
    border-color: #007bff;
}


/* Input Wrapper for Better Layout */
input[type="text"], input[type="date"], input[type="file"], label {
    width: 100%;
    box-sizing: border-box;
    margin-bottom: 15px;
}

/* Specific Styling for File Input (Images, Thumbnails, etc.) */
input[type="file"] {
    background-color: #fafafa;
    border: 2px solid #ddd;
    padding: 10px;
    border-radius: 5px;
}

input[type="file"]:focus {
    border-color: #28a745;
}

/* Improve label spacing and text alignment */
label {
    font-size: 1rem;
    margin-bottom: 10px;
}

.kpop-container {
    padding: 20px;
}

.kpop-title {
    font-size: 2rem;
    text-align: center;
    margin-bottom: 20px;
}

/* Card Group Styling */
.card-group {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
}

.kpop-card {
    width: 300px;
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card-img-top {
    border-radius: 10px 10px 0 0;
    max-height: 200px;
    object-fit: cover;
}

.card-body {
    padding: 15px;
    text-align: center;
}

.card-footer {
    padding: 10px;
    text-align: center;
    background-color: #f9f9f9;
    border-radius: 0 0 10px 10px;
}

.btn {
    cursor: pointer;
    padding: 8px 16px;
    margin: 5px;
    border-radius: 5px;
    font-size: 1rem;
}

.btn-primary {
    background-color: #007bff;
    color: white;
}

.btn-primary:hover {
    background-color: #0056b3;
}

.btn-info {
    background-color: #17a2b8;
    color: white;
}

.btn-info:hover {
    background-color: #138496;
}

.btn-warning {
    background-color: #ffc107;
    color: white;
}

.btn-warning:hover {
    background-color: #e0a800;
}

.btn-success {
    background-color: #28a745;
    color: white;
}

.btn-success:hover {
    background-color: #218838;
}

.btn-danger {
    background-color: #dc3545;
    color: white;
}

.btn-danger:hover {
    background-color: #c82333;
}

/* Modal Styling */
.modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
}

.modal-dialog {
    margin: 10% auto;
    background-color: white;
    padding: 20px;
    border-radius: 5px;
    width: 80%;
    max-width: 600px;
}

.modal-header .close {
    font-size: 1.5rem;
    position: relative;
    right: -93%;
    transform: translate(100%, -111%);
}

/* Sidebar Styling */
.sidebar {
    position: fixed;
    top: 0;
    right: 0;
    width: 300px;
    height: 100%;
    background-color: white;
    border-left: 2px solid #ddd;
    padding: 20px;
    z-index: 999;
    display: none;
}

.sidebar-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 1.25rem;
}

.sidebar-body {
    margin-top: 20px;
}

/* Image Styling */
.img-fluid {
    max-width: 100%;
    height: auto;
}

.thumbnails {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
}

.img-thumbnail {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 5px;
}

/* Member List Styling */
.member-list button {
    margin: 5px;
}

</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
    // Modal functionality
    const createModal = document.querySelector('.modal');
    const closeModalButton = document.querySelector('.modal .close');
    const openModalButtons = document.querySelectorAll('[wire\\:click="create"]');
    
    // Sidebar functionality
    const sidebar = document.querySelector('.sidebar');
    const closeSidebarButton = document.querySelector('.sidebar .close');
    
    // Open the create/edit group modal
    openModalButtons.forEach(button => {
        button.addEventListener('click', function() {
            createModal.style.display = 'block'; // Show the modal
            document.body.style.overflow = 'hidden'; // Disable scrolling
        });
    });
    
    // Close the modal
    if (closeModalButton) {
        closeModalButton.addEventListener('click', function() {
            createModal.style.display = 'none'; // Hide the modal
            document.body.style.overflow = 'auto'; // Enable scrolling
        });
    }
    
    // Open the sidebar when a group is viewed
    const viewDetailButtons = document.querySelectorAll('[wire\\:click="viewDetail"]');
    viewDetailButtons.forEach(button => {
        button.addEventListener('click', function() {
            sidebar.style.display = 'block'; // Show the sidebar
            document.body.style.overflow = 'hidden'; // Disable scrolling
        });
    });
    
    // Close the sidebar
    if (closeSidebarButton) {
        closeSidebarButton.addEventListener('click', function() {
            sidebar.style.display = 'none'; // Hide the sidebar
            document.body.style.overflow = 'auto'; // Enable scrolling
        });
    }
    
    // Listen for any form submissions if needed (can be extended to handle Livewire)
    const form = document.querySelector('form');
    if (form) {
        form.addEventListener('submit', function(event) {
            event.preventDefault();
            // Handle form submission here, such as with Livewire or custom JS
        });
    }
});

</script>