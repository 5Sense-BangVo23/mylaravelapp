    <div class="container">
        <h1 class="title">Kpop Groups Management</h1>

        @if(session()->has('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <button wire:click="create" class="btn btn-create">Add Group</button>

        <div class="card-grid">
            @foreach($groups as $group)
                <div class="card">
                    <div class="card-header">
                        <h2 class="custom-group-name">{{ $group->name }}</h2>
                        <div class="status-container">
                            <div class="status-indicator {{ $group->active ? 'active' : 'inactive' }}"></div>
                            <button class="toggle-btn" wire:click="toggleActive({{ $group->id }})" aria-label="Toggle Status">
                                @if ($group->active)
                                    <!-- Icon mở khóa khi active -->
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="18px" height="18px">
                                        <path d="M12 1C9.243 1 7 3.243 7 6v4H5v11h14V10h-2V6c0-2.757-2.243-5-5-5zm0 2c1.654 0 3 1.346 3 3v4H9V6c0-1.654 1.346-3 3-3zm-5 9h10v9H7v-9z"/>
                                    </svg>
                                @else
                                    <!-- Icon khóa khi inactive -->
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="18px" height="18px">
                                        <path d="M12 1C9.243 1 7 3.243 7 6v4H5v11h14V10h-2V6c0-2.757-2.243-5-5-5zm0 2c1.654 0 3 1.346 3 3v4H9V6c0-1.654 1.346-3 3-3zm5 9H7v9h10v-9z"/>
                                    </svg>
                                @endif
                            </button>
                        </div>

                        @if($group->cover_image)
                            <img src="{{ $group->cover_image }}" alt="Cover Image" class="cover-image">
                        @endif
                    </div>
                    <div class="card-body">
                        
                        @if($group->profile_image)
                            <img src="{{ $group->profile_image }}" alt="Profile Image" class="profile-image">
                        @endif
                        
                        <div class="group-details">
                            <h2 class="group-title">{{ $group->name }}</h2>
                            <div class="detail-item">
                                <strong>Group ID:</strong>
                                <span class="detail">{{ $group->id }}</span>
                            </div>
                            <div class="detail-item">
                                <strong>Debut Date:</strong>
                                <span class="detail">{{ \Carbon\Carbon::parse($group->debut_date)->format('d M Y') }}</span>
                            </div>
                            <div class="detail-item">
                                <strong>Agency:</strong>
                                <span class="detail">{{ $group->agency }}</span>
                            </div>
                        </div>
                        <div class="members-list">
                            <h3>Members:</h3>
                            <button onclick="toggleMembers({{ $group->id }}, this)" class="btn btn-show-members">Show Members</button>
                            <div class="members-container" id="members-container-{{ $group->id }}" style="display: none;">
                                <div class="slider-wrapper">
                                    <button onclick="goToPrev({{ $group->id }})" class="btn btn-prev">Prev</button>
                                    <div class="member-cards" id="auto-slider-{{ $group->id }}">
                                        @foreach($group->members as $member)
                                            <div class="member-card">
                                                <h4 class="member-name">{{ $member->name }}</h4>
                                            </div>
                                        @endforeach
                                    </div>
                                    <button onclick="goToNext({{ $group->id }})" class="btn btn-next">Next</button>
                                </div>
                            </div>
                        </div>
                        
                                                            
                        @if($group->thumbnails)
                            @php
                                // Decode the thumbnails from JSON
                                $thumbnails = json_decode($group->thumbnails, true);
                            @endphp

                            @if(is_array($thumbnails) && count($thumbnails) > 0)
                                <div class="carousel-container" data-card-id="{{ $group->id }}">
                                    <div class="carousel-wrapper">
                                        <div class="carousel-thumbnails">
                                            @foreach($thumbnails as $thumbnail)
                                                <div class="thumbnail-slide">
                                                    <img loading="lazy" style="width:100px;height:auto;" src="{{ $thumbnail }}" alt="Thumbnail" class="thumbnail-image">
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    <!-- Previous/Next controls -->
                                    <button class="prev-slide" onclick="moveSlide(-1, {{ $group->id }})">&#10094;</button>
                                    <button class="next-slide" onclick="moveSlide(1, {{ $group->id }})">&#10095;</button>
                                </div>
                            @endif
                        @endif

                    </div>
                    <div class="card-footer">
                        <button wire:click="edit({{ $group->id }})" class="btn btn-edit">Edit</button>
                        <button wire:click="viewDetail({{ $group->id }})" class="btn btn-detail">Details</button> <!-- Button to show details -->
                    </div>
                </div>
            @endforeach
        </div>

        <!-- Sidebar for Group Details -->
        <div class="sidebar" style="{{ $isDetailOpen ? 'display:block;' : 'display:none;' }}">
            <div class="sidebar-content">
                <span class="close {{ $closeButtonColor }}" wire:click="closeDetail">&times;</span>
                <h2 class="sidebar-title">Group Details</h2>
                
                @if($detailGroup)
                    <div class="detail-info">
                        <p><strong>Group Name:</strong> <span>{{ $detailGroup->name }}</span></p>
                        <p><strong>Group ID:</strong> <span>{{ $detailGroup->id }}</span></p>
                        <p><strong>Debut Date:</strong> <span>{{ \Carbon\Carbon::parse($detailGroup->debut_date)->format('d M Y') }}</span></p>
                        <p><strong>Agency:</strong> <span>{{ $detailGroup->agency }}</span></p>
                    </div>  
                    <div class="member-list">
                        <h3 class="members-title">Members</h3>
                        <div class="member-cards" style="flex-wrap:wrap">
                            @foreach($detailGroup->members as $member)
                                <div class="member-card" wire:click="openMemberDetail({{ $member->id }})" style="position: relative;">
                                    <img src="{{ $member->member_image }}" alt="{{ $member->name }}" class="member-image">
                                    <p class="singer-name">{{ $member->name }}</p>
                                    @if($selectedMember && $selectedMember->id == $member->id)
                                        <div class="member-popup {{ $closePopup ? 'hidden' : '' }}">
                                            <div class="popup-content" wire:click.stop>
                                                <span class="close" wire:click="$set('closePopup', true)" style="cursor: pointer;">&times;</span>
                                                <h3 class="singer-name">{{ $selectedMember->name }}</h3>
                                                <p><strong>Roles:</strong></p>
                                                <ul class="roles-list">
                                                    @foreach ($selectedMember->roles as $role)
                                                        <li class="role-item">{{ $role }}</li>
                                                    @endforeach
                                                </ul>

                                                <p><strong>Sample Text:</strong> Đây là đoạn thông tin mẫu về thành viên này.</p>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    </div>
                @else
                    <p class="no-details">No details available.</p>
                @endif
            </div>
        </div>
        
        <!-- Modal for Add/Edit Group -->
        <div class="modal" style="{{ $isOpen ? 'display:block;' : 'display:none;' }}">
            <div class="modal-content">
                <span class="close" wire:click="closeModal">&times;</span>
                <h2 class="modal-title">{{ $group_id ? 'Edit Group' : 'Add Group' }}</h2>
        
                <form wire:submit.prevent="save">
                    <input type="text" wire:model="name" placeholder="Enter Kpop Group Name" required />
                    <input type="date" wire:model="debut_date" required />
                    <input type="text" wire:model="agency" placeholder="Enter Agency Name" required />
        
                    <div>
                        <!-- Thumbnails Upload -->
                        <div>
                            <label for="thumbnails">Upload Thumbnails:</label>
                            <input type="file" wire:model="thumbnails" id="thumbnails" multiple accept="image/*" />
                            @error('thumbnails.*') <span class="error">{{ $message }}</span> @enderror
                        </div>
        
                        <!-- Show uploaded thumbnails if form is submitted or editing -->
                        @if($formSubmitted || $group_id)
                            <div>
                                <h4>Uploaded Thumbnails:</h4>
                                @foreach($thumbnails as $thumbnail)
                                    <input type="text" value="{{ $thumbnail instanceof \Illuminate\Http\UploadedFile ? $thumbnail->getClientOriginalName() : basename($thumbnail) }}" readonly class="file-name-input" />
                                    @if($thumbnail instanceof \Illuminate\Http\UploadedFile)
                                        <img style="width:100px;height:auto;" src="{{ $thumbnail->temporaryUrl() }}" alt="Thumbnail" class="uploaded-thumbnail" />
                                    @else
                                        <img style="width:100px;height:auto;" src="{{  $thumbnail }}" alt="Thumbnail" class="uploaded-thumbnail" />
                                    @endif
                                @endforeach
                            </div>
                        @endif
        
                        <!-- Cover Image Upload -->
                        <div>
                            <label for="cover_image">Upload Cover Image:</label>
                            <input type="file" wire:model="cover_image" id="cover_image" accept="image/*" />
                            @error('cover_image') <span class="error">{{ $message }}</span> @enderror
                        </div>
        
                        <!-- Show uploaded cover image if form is submitted or editing -->
                        @if($formSubmitted || $group_id)
                            <div>
                                @if($cover_image instanceof \Illuminate\Http\UploadedFile)
                                    <h4>Uploaded Cover Image:</h4>
                                    <img style="width:100px;height:auto;" src="{{ $cover_image->temporaryUrl() }}" alt="Cover Image" class="uploaded-cover-image" />
                                    <input type="text" value="{{ $cover_image->getClientOriginalName() }}" readonly class="file-name-input" />
                                @else
                                    <h4>Uploaded Cover Image:</h4>
                                    <img style="width:100px;height:auto;" src="{{ $cover_image }}" alt="Cover Image" class="uploaded-cover-image" />
                                    <input type="text" value="{{ basename($cover_image) }}" readonly class="file-name-input" />
                                @endif
                            </div>
                        @endif
        
                        <!-- Profile Image Upload -->
                        <div>
                            <label for="profile_image">Upload Profile Image:</label>
                            <input type="file" wire:model="profile_image" id="profile_image" accept="image/*" />
                            @error('profile_image') <span class="error">{{ $message }}</span> @enderror
                        </div>
        
                        <!-- Show uploaded profile image if form is submitted or editing -->
                        @if($formSubmitted || $group_id)
                            <div>
                                @if($profile_image instanceof \Illuminate\Http\UploadedFile)
                                    <h4>Uploaded Profile Image:</h4>
                                    <img style="width:100px;height:auto;" src="{{ $profile_image->temporaryUrl() }}" alt="Profile Image" class="uploaded-profile-image" />
                                    <input type="text" value="{{ $profile_image->getClientOriginalName() }}" readonly class="file-name-input" />
                                @else
                                    <h4>Uploaded Profile Image:</h4>
                                    <img style="width:100px;height:auto;" src="{{ $profile_image }}" alt="Profile Image" class="uploaded-profile-image" />
                                    <input type="text" value="{{ basename($profile_image) }}" readonly class="file-name-input" />
                                @endif
                            </div>
                        @endif
                    </div>
        
                    <button type="submit" class="btn btn-save">{{ $group_id ? 'Update' : 'Add' }} Group</button>
                </form>
            </div>
        </div>
        
        
        
        
        
        
        
        
        
        
    </div>
    <div class="error-container">
        @error('name') <span class="error">{{ $message }}</span> @enderror
        @error('debut_date') <span class="error">{{ $message }}</span> @enderror
        @error('agency') <span class="error">{{ $message }}</span> @enderror
    </div>
    
    <!-- Loading Spinner -->
    <div wire:loading class="spinner">Loading...</div>

    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
    
        .title {
            font-size: 2rem;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .custom-group-name {
            font-size: 2rem; /* Adjust the size as needed */
            font-weight: bold; /* Make it bold */
            color: #333; /* Darker color for better contrast */
            text-align: center; /* Center align the text */
            margin: 20px 0; /* Add some margin for spacing */
            padding: 10px; /* Padding for a more spacious look */
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
            -webkit-background-clip: text; /* Clip the background to text */
            -webkit-text-fill-color: transparent; /* Make text color transparent */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
            border-radius: 8px; /* Rounded corners */
            transition: transform 0.3s ease; /* Smooth scaling transition */
        }

        .custom-group-name:hover {
            transform: scale(1.05); /* Scale up slightly on hover */
        }

        
    
        .btn {
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            color: white;
            margin: 10px 0;
        }
    
        .btn-create {
            background-color: #4CAF50; /* Green */
            display: block;
            margin: 20px auto; /* Added margin for better spacing */
        }
    
        .btn-edit {
            background-color: #FFC107; /* Yellow */
        }
    
        .btn-delete {
            background-color: #F44336; /* Red */
        }
    
        .btn-detail {
            background-color: #2196F3; /* Blue */
        }
    
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.7);
            z-index: 1000;
            display: flex; 
            justify-content: center; 
            align-items: center; 
            transition: opacity 0.3s ease;
        }
    
        .modal-content {
            background: #fff;
            border-radius: 8px;
            padding: 20px;
            width: 500px; 
            margin: 100px auto; 
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1); 
            position: relative; 
            animation: slide-down 0.3s ease; 
            overflow-y: auto;
            height: 500px;
        }
    
        @keyframes slide-down {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .group-details {
            background-color: #ffffff; 
            padding: 15px 20px; 
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); 
            max-width: 450px; 
            margin: 20px auto;
            font-family: 'Arial', sans-serif; 
        }

        .group-title {
            font-size: 20px;
            font-weight: 600;
            color: #333333;
            margin-bottom: 10px;
            text-align: center; 
        }

        .detail-item {
            margin-bottom: 10px; 
            display: flex; 
            align-items: center; 
            font-size: 11px;
        }

        .detail-item strong {
            color: #555555;
            font-weight: bold; 
            flex: 0 0 60px; 
            text-align: left;
        }
        .detail-item span{
            color: #bc4200e9;
            font-weight: bold;
            cursor: pointer;
        }

        .detail-item span:hover{
            color: #0068bc;
            text-decoration: underline;
        }

        .detail {
            color: #777777;
            font-weight: 400;
            flex: 1; 
            overflow-wrap: break-word;
            padding-left: 8px; 
        }


        @media (max-width: 600px) {
            .group-details {
                padding: 10px; 
                max-width: 90%;
            }
        }

        .modal-title {
            font-size: 1.5rem; 
            margin-bottom: 15px; 
            color: #333;
        }
    
        input[type="text"],
        input[type="date"],
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
            transition: border-color 0.3s; 
        }
    
        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="file"]:focus {
            border-color: #007bff; 
            outline: none; 
        }
    
        .btn-save {
            width: 100%; 
            padding: 10px;
            background: #007bff; 
            color: #fff; 
            border: none;
            border-radius: 5px; 
            font-size: 1rem;
            cursor: pointer; 
            transition: background 0.3s;
        }
    
        .btn-save:hover {
            background: #0056b3;
        }
    
        .close {
            height: 25px;
            width: 25px;
            content: unset !important;
            font-size: 25px;
            cursor: pointer;
            z-index: 1000;
        }
    
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
    
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.2s;
        }
    
        .card:hover {
            transform: translateY(-5px);
        }
    
        .card-header {
            padding: 15px;
            background-color: #f2f2f2;
            border-bottom: 1px solid #ddd;
        }
    
        .card-body {
            padding: 15px;
            color: #666;
        }
    
        .card-footer {
            padding: 15px;
            text-align: right;
            background-color: #f2f2f2;
        }

        /* ================ Detail ================ */
        .sidebar {
            display: none; 
            position: fixed;
            top: 0;
            right: 0;
            width: 50%; 
            height: 100%; 
            background-color: #ffffff; 
            box-shadow: -4px 0 15px rgba(0, 0, 0, 0.2);
            z-index: 1000;
            padding: 30px; 
            overflow-y: auto; 
            transition: transform 0.4s ease; 
            border-left: 0px solid #3f3f3f; 
            border-radius: 0 10px 10px 0; 
        }

        .sidebar-content {
            position: relative;
        }

        .sidebar-title {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #333;
            font-weight: 700;
            text-transform: uppercase;
            position: relative;
            padding-bottom: 10px;
            letter-spacing: 1.5px;
            transition: color 0.4s ease, transform 0.4s ease;
        }

        .sidebar-title::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 5px;
            background-color: #007bff;
            transform: scaleX(0);
            transition: transform 0.4s ease;
        }

        .sidebar-title:hover {
            color: #0056b3;
            transform: translateY(-2px);
        }

        .sidebar-title:hover::after {
            transform: scaleX(1);
        }


        .close {
            font-size: 2.5rem;
            cursor: pointer;
            color: #4f4c4c;
            position: absolute;
            top: 0px;
            right: 20px;
            transition: color 0.3s;
        }

        .close:hover {
            color: #2f2c2c;
        }

        .detail-info {
            padding: 20px; 
            margin-top: 20px; 
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s; 
        }

        .detail-info:hover {
            transform: scale(1.02); 
        }

        .detail-info p {
            margin: 10px 0; 
            font-size: 1.1rem; 
            line-height: 1.6; 
            color: #555; 
        }

        .detail-info strong {
            color: #007bff; 
            font-size: 1.1rem;
            text-transform: uppercase;
            letter-spacing: 0.5px; 
        }

        .detail-info span {
            color: #333;
            font-weight: normal; 
            background-color: #e9ecef;
            border-radius: 4px;
            padding: 3px 6px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
        }

        @media (max-width: 600px) {
            .sidebar {
                width: 100%;
                padding: 15px; 
            }

            .sidebar-title {
                font-size: 1.5rem; 
            }
        }

        .member-card {
            width: 120px;
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
            cursor: pointer;
            position: relative; /* Đặt vị trí tương đối để popup có thể xuất hiện ngay trên */
        }

        .member-popup {
            position: absolute;
            bottom: 100%; 
            left: 50%; 
            transform: translateX(-50%); 
            background-color: white; 
            border: 1px solid #ccc;
            padding: 10px; 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            z-index: 1000; 
            border-radius: 5px; 
            width: 200px; 
            max-width: 90vw;
            opacity: 1;
            visibility: visible; 
            transition: opacity 0.3s ease, visibility 0.3s ease; 
        }

        .hidden {
            opacity: 0; 
            visibility: hidden;
            pointer-events: none; 
        }



        .popup-content {
            position: relative;
        }

        .popup-content .close {
            position: absolute;
            top: 5px;
            right: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        .popup-content h3 {
            margin: 0 0 10px;
            font-size: 16px;
        }

        .popup-content p {
            margin: 5px 0;
            font-size: 14px;
        }

        .roles-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .role-item {
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
            border-radius: 4px;
            padding: 5px 10px; 
            margin-bottom: 6px; 
            font-size: 0.9em;
            transition: background-color 0.3s;
        }

        .role-item:hover {
            background-color: #e2e6ea;
        }

        .member-image {
            width: 100%;           
            height: 100px;           
            object-fit: cover;      
            border-radius: 10px;     
            display: block;          
            margin: 0 auto;      
        }

        .singer-name {
            font-size: 1.6em;                  
            font-weight: 500;                  
            color: #333;                       
            text-align: center;                
            margin: 15px 0;                   
            text-transform: capitalize;        
            letter-spacing: 0.3px;            
            font-family: 'Arial', sans-serif;    
            position: relative;                
            transition: color 0.3s ease;     
        }

        .singer-name:hover {
            color: #ff6f61; 
        }

        .singer-name::after {
            content: '';                       
            display: block;                   
            width: 50%;                       
            height: 2px;                      
            background-color: rgba(255, 111, 97, 0.5);  
            margin: 8px auto;                 
            border-radius: 2px;               
            transition: width 0.3s ease, background-color 0.3s ease; 
        }

        .singer-name:hover::after {
            width: 100%;                      
            background-color: #ff6f61;           
        }

        .members-title {
            font-size: 2.2em;                         
            font-weight: 800;                       
            color: #1a1a1a;                         
            text-align: center;                     
            margin: 30px 0;                         
            text-transform: uppercase;               
            letter-spacing: 2px;                    
            font-family: 'Montserrat', sans-serif;     
            position: relative;                      
        }

        .members-title::after {
            content: '';                            
            display: block;                         
            width: 70%;                            
            height: 4px;                           
            background-color: #e67e22;             
            margin: 12px auto;                     
            border-radius: 5px;                    
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);  
            transition: width 0.3s ease, background-color 0.3s ease;  
        }

        .members-title:hover::after {
            width: 100%;                           
            background-color: #d35400;             
        }


    /* ================ Detail ================ */
        .image-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 15px; 
        }
    
        .cover-image, .thumbnail-image {
            width: 100%;
            height: auto; 
            border-radius: 8px;
        }
    
        .profile-image {
            width: 80px; 
            height: 80px; 
            border-radius: 50%;
            object-fit: cover; 
            margin-bottom: 10px; 
        }
    
        .upload-label {
            font-weight: bold;
            margin: 10px 0;
            display: block;
        }
    
        input[type="file"] {
            border: 1px dashed #ccc; 
            padding: 10px; 
            margin: 10px 0;
            background: #f9f9f9; 
            cursor: pointer;
        }
    
        .file-upload-container {
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc; 
            border-radius: 5px;
            background-color: #fff; 
        }
    
        .error {
            color: red; 
            font-size: 0.9rem; 
        }

        /* ------------- Slide -------------- */
        .carousel-container {
            position: relative;
            max-width: 100%;
            overflow: hidden;
            margin: 20px auto;
        }

        .carousel-wrapper {
            display: flex;
            align-items: center;
        }

        .carousel-thumbnails {
            display: flex;
            transition: transform 0.5s ease;
            width: 100%;
        }

        .thumbnail-slide {
            flex: 0 0 auto;
            margin-right: 10px;
        }

        .thumbnail-image {
            max-width: 100px;
            height: auto;
        }

        .prev-slide, .next-slide {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
        }

        .prev-slide {
            left: 10px;
        }

        .next-slide {
            right: 10px;
        }

        .prev-slide:hover, .next-slide:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }


        .spinner {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 1.5rem;
            color: #333;
        }

        [wire\:loading] .spinner {
            display: block;
        }

        .status-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 8px 12px;
            border-radius: 8px;
            border: 1px solid #e0e0e0;
            background-color: #f9f9f9;
            width: 100%;
            max-width: 250px;
            margin: 8px auto;
        }

        .status-indicator {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            transition: background-color 0.3s ease;
        }

        .active {
            background-color: #4CAF50; 
        }

        .inactive {
            background-color: #f44336; 
        }

        .toggle-btn {
            background-color: transparent;
            border: none;
            cursor: pointer;
            padding: 6px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s ease;
        }

        .toggle-btn:hover {
            background-color: #e0e0e0;
        }

        .toggle-btn svg {
            fill: #333; 
        }

        .active {
            background-color: green; 
        }

        .inactive {
            background-color: red; 
        }

        .members-container {
            margin-top: 10px;
            overflow: hidden; 
            width: 100%;
        }

        .slider-wrapper {
            overflow: hidden; 
            position: relative;
            width: 100%;
        }

        .member-cards {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }

        .member-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 10px;
            margin-right: 10px;
            margin-top: 20px;
            min-width: 150px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .member-name {
            font-size: 1.2em;
            font-weight: bold;
            color: #333;
        }

        </style>
        <script>
            let slideIndexes = {};
            function moveSlide(step, cardId) {
                if (!(cardId in slideIndexes)) {
                    slideIndexes[cardId] = 0;
                }
                const slides = document.querySelector(`.carousel-container[data-card-id="${cardId}"] .carousel-thumbnails`);
                const slideWidth = document.querySelector(`.carousel-container[data-card-id="${cardId}"] .thumbnail-slide`).clientWidth + 10; // slide width + margin
                const totalSlides = document.querySelectorAll(`.carousel-container[data-card-id="${cardId}"] .thumbnail-slide`).length;

                slideIndexes[cardId] += step;

                if (slideIndexes[cardId] < 0) {
                    slideIndexes[cardId] = 0;
                } else if (slideIndexes[cardId] >= totalSlides) {
                    slideIndexes[cardId] = totalSlides - 1;
                }

                slides.style.transform = `translateX(-${slideIndexes[cardId] * slideWidth}px)`;
            }


            document.addEventListener('DOMContentLoaded', function() {
                const cards = document.querySelectorAll('.card');

                cards.forEach(card => {
                    const header = card.querySelector('.card-header');

                    header.addEventListener('click', function() {
                        const body = card.querySelector('.card-body');
                        body.style.display = body.style.display === 'block' ? 'none' : 'block';
                    });
                });


            });


            document.addEventListener('DOMContentLoaded', function() {
                window.toggleMembers = function(groupId, button) {
                    const membersContainer = document.getElementById(`members-container-${groupId}`);
                    if (membersContainer.style.display === "none") {
                        membersContainer.style.display = "block";
                        button.textContent = "Hide Members";
                    } else {
                        membersContainer.style.display = "none";
                        button.textContent = "Show Members";
                    }
                }

                let currentSlideIndex = 0;

                function nextSlide(groupId) {
                    const slider = document.getElementById(`auto-slider-${groupId}`);
                    const memberCards = slider.children;
                    const totalSlides = memberCards.length;
                    currentSlideIndex = (currentSlideIndex + 1) % totalSlides; 
                    updateSlidePosition(slider, currentSlideIndex, totalSlides);
                }

                function prevSlide(groupId) {
                    const slider = document.getElementById(`auto-slider-${groupId}`);
                    const memberCards = slider.children;
                    const totalSlides = memberCards.length;
                    currentSlideIndex = (currentSlideIndex - 1 + totalSlides) % totalSlides; 
                    updateSlidePosition(slider, currentSlideIndex, totalSlides);
                }

                function updateSlidePosition(slider, index, total) {
                    const slideWidth = slider.scrollWidth / total; 
                    slider.style.transform = `translateX(-${slideWidth * index}px)`; 
                }

                window.goToNext = function(groupId) {
                    nextSlide(groupId);
                };

                window.goToPrev = function(groupId) {
                    prevSlide(groupId);
                };
            });

            document.addEventListener('DOMContentLoaded', function () {
                Livewire.on('toggleSidebar', function () {
                    var sidebar = document.querySelector('.sidebar');
                    sidebar.style.display = sidebar.style.display === 'block' ? 'none' : 'block';
                });
            });

            document.addEventListener('DOMContentLoaded', function () {
                const memberPopups = document.querySelectorAll('.member-popup');
                window.addEventListener('click', function(event) {
                    memberPopups.forEach(popup => {
                        if (popup && !popup.contains(event.target)) {
                            popup.classList.add('hidden');
                        }
                    });
                });
            });

            

    </script>
    
