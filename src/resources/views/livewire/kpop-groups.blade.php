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
                            <img src="{{ config('app.asset_function')('uploads/' . $group->cover_image) }}" alt="Cover Image" class="cover-image">
                        @endif
                    </div>
                    <div class="card-body">
                        @if($group->profile_image)
                            <img src="{{ config('app.asset_function')('uploads/' . $group->profile_image) }}" alt="Profile Image" class="profile-image">
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
                                            <img loading="lazy" style="width:100px;height:auto;" src="{{ config('app.asset_function')('uploads/' . $thumbnail) }}" alt="Thumbnail" class="thumbnail-image">
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
                @else
                    <p>No details available.</p>
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
                                        <img style="width:100px;height:auto;" src="{{ config('app.asset_function')('uploads/' . $thumbnail) }}" alt="Thumbnail" class="uploaded-thumbnail" />
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
            display: none; /* Default hidden, controlled by inline style */
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.7); /* Dark semi-transparent background */
            z-index: 1000;
            display: flex; /* Use flexbox to center content */
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            transition: opacity 0.3s ease; /* Smooth opacity transition */
        }
    
        .modal-content {
            background: #fff; /* White background for the modal */
            border-radius: 8px; /* Rounded corners */
            padding: 20px;
            width: 500px; /* Increased width for better layout */
            margin: 100px auto; /* Center the modal */
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            position: relative; /* Positioning for the close button */
            animation: slide-down 0.3s ease; /* Slide down animation */
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

        /* Bố cục tổng thể cho phần hiển thị */
.group-details {
    background-color: #ffffff; /* Màu nền trắng để nổi bật */
    padding: 15px 20px; /* Padding xung quanh, tạo không gian thoáng */
    border-radius: 8px; /* Bo tròn các góc */
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); /* Đổ bóng nhẹ nhàng */
    max-width: 450px; /* Giới hạn chiều rộng vừa phải */
    margin: 20px auto; /* Giữa trang */
    font-family: 'Arial', sans-serif; /* Phông chữ dễ đọc */
}

/* Tiêu đề của nhóm */
.group-title {
    font-size: 20px; /* Kích thước chữ vừa phải */
    font-weight: 600; /* Chữ nửa đậm */
    color: #333333; /* Màu chữ đậm */
    margin-bottom: 10px; /* Khoảng cách dưới tiêu đề */
    text-align: center; /* Căn giữa tiêu đề */
}

/* Căn chỉnh cho từng mục chi tiết */
.detail-item {
    margin-bottom: 10px; /* Khoảng cách dưới mỗi mục */
    display: flex; /* Sử dụng Flexbox */
    align-items: center; /* Căn giữa theo chiều dọc */
    font-size: 11px;
}

/* Định dạng văn bản cho tiêu đề chi tiết */
.detail-item strong {
    color: #555555; /* Màu chữ cho tiêu đề chi tiết */
    font-weight: bold; /* Chữ bình thường */
    flex: 0 0 60px; /* Đặt chiều rộng cố định cho tiêu đề */
    text-align: left; /* Căn trái cho tiêu đề */
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
/* Định dạng văn bản cho nội dung chi tiết */
.detail {
    color: #777777; /* Màu chữ cho nội dung */
    font-weight: 400; /* Chữ thường */
    flex: 1; /* Chiếm phần còn lại của không gian */
    overflow-wrap: break-word; /* Ngăn nội dung quá dài không bị cắt */
    padding-left: 8px; /* Khoảng cách trái cho nội dung */
}

/* Tinh chỉnh cho responsive */
@media (max-width: 600px) {
    .group-details {
        padding: 10px; /* Giảm padding cho thiết bị nhỏ */
        max-width: 90%; /* Giới hạn chiều rộng cho thiết bị nhỏ */
    }
}


        
    
        .modal-title {
            font-size: 1.5rem; /* Title size */
            margin-bottom: 15px; /* Spacing below the title */
            color: #333; /* Dark color for the title */
        }
    
        input[type="text"],
        input[type="date"],
        input[type="file"] {
            width: 100%; /* Full width inputs */
            padding: 10px; /* Padding for comfort */
            margin: 10px 0; /* Space between inputs */
            border: 1px solid #ccc; /* Light border */
            border-radius: 5px; /* Rounded edges for inputs */
            transition: border-color 0.3s; /* Smooth border color transition */
        }
    
        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="file"]:focus {
            border-color: #007bff; /* Highlight border on focus */
            outline: none; /* Remove default outline */
        }
    
        .btn-save {
            width: 100%; /* Full width button */
            padding: 10px; /* Padding for button */
            background: #007bff; /* Blue background */
            color: #fff; /* White text */
            border: none; /* No border */
            border-radius: 5px; /* Rounded button */
            font-size: 1rem; /* Font size */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background 0.3s; /* Smooth background transition */
        }
    
        .btn-save:hover {
            background: #0056b3; /* Darker blue on hover */
        }
    
        .close {
            height: 25px;
            width: 25px;
            content: unset !important;
            font-size: 25px;
            cursor: pointer;
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
            border-bottom: 1px solid #ddd; /* Added border for separation */
        }
    
        .card-body {
            padding: 15px;
            color: #666;
        }
    
        .card-footer {
            padding: 15px;
            text-align: right;
            background-color: #f2f2f2; /* Added background for consistency */
        }
    
        .sidebar {
            display: none; /* Default to hidden, controlled by inline style */
            position: fixed;
            top: 0;
            right: 0;
            width: 400px;
            height: 100%;
            background-color: #ffffff;
            box-shadow: -2px 0 5px rgba(0, 0, 0, 0.5);
            z-index: 1000;
            padding: 20px;
            overflow-y: auto; /* Allow scrolling if content overflows */
            transition: transform 0.3s ease-in-out;
        }
    
        .sidebar-content {
            position: relative;
        }
    
        .sidebar-title {
            font-size: 1.5rem;
            margin-bottom: 20px;
            color: #444;
        }
    
        .detail-info {
            padding: 10px 0;
            border-top: 1px solid #eee;
            margin-top: 10px;
        }
    
        .detail-info p {
            margin: 10px 0;
        }
    
        .detail-info strong {
            color: #555;
        }
    
        .detail-info span {
            color: #333;
            font-weight: normal;
        }
    
        /* Styles for thumbnail, cover, and profile images */
        .image-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 15px; /* Space between image containers */
        }
    
        .cover-image, .thumbnail-image {
            width: 100%; /* Full width for cover and thumbnail images */
            height: auto; /* Maintain aspect ratio */
            border-radius: 8px; /* Rounded corners */
        }
    
        .profile-image {
            width: 80px; /* Set a fixed width for profile images */
            height: 80px; /* Set a fixed height for profile images */
            border-radius: 50%; /* Circular profile image */
            object-fit: cover; /* Maintain aspect ratio */
            margin-bottom: 10px; /* Spacing below profile image */
        }
    
        .upload-label {
            font-weight: bold;
            margin: 10px 0;
            display: block; /* Make label block-level for better spacing */
        }
    
        input[type="file"] {
            border: 1px dashed #ccc; /* Dashed border for file inputs */
            padding: 10px; /* Padding for file inputs */
            margin: 10px 0; /* Space around file inputs */
            background: #f9f9f9; /* Light background for better visibility */
            cursor: pointer; /* Pointer cursor on hover */
        }
    
        .file-upload-container {
            margin: 10px 0; /* Margin for spacing */
            padding: 10px; /* Padding for container */
            border: 1px solid #ccc; /* Border for container */
            border-radius: 5px; /* Rounded corners */
            background-color: #fff; /* Background color for better visibility */
        }
    
        .error {
            color: red; /* Red color for error messages */
            font-size: 0.9rem; /* Smaller font for error messages */
        }

        /* ------------- Slide -------------- */
        .carousel-container {
    position: relative;
    max-width: 100%;
    overflow: hidden;
    margin: auto;
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

/* Bố cục tinh gọn */
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

/* Chỉ báo trạng thái tròn */
.status-indicator {
    width: 12px;
    height: 12px;
    border-radius: 50%;
    transition: background-color 0.3s ease;
}

.active {
    background-color: #4CAF50; /* Màu xanh lá biểu thị trạng thái hoạt động */
}

.inactive {
    background-color: #f44336; /* Màu đỏ biểu thị trạng thái không hoạt động */
}

/* Nút nhỏ gọn với icon */
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
    background-color: green; /* Ví dụ màu khi active */
}

.inactive {
    background-color: red; /* Ví dụ màu khi inactive */
}



    </style>
    <script>
        // Object to store currentIndex for each card
let slideIndexes = {};

// Function to move slide for a specific card
function moveSlide(step, cardId) {
    // Get current index for this specific card or initialize it to 0 if not yet defined
    if (!(cardId in slideIndexes)) {
        slideIndexes[cardId] = 0;
    }

    const slides = document.querySelector(`.carousel-container[data-card-id="${cardId}"] .carousel-thumbnails`);
    const slideWidth = document.querySelector(`.carousel-container[data-card-id="${cardId}"] .thumbnail-slide`).clientWidth + 10; // slide width + margin
    const totalSlides = document.querySelectorAll(`.carousel-container[data-card-id="${cardId}"] .thumbnail-slide`).length;

    // Update the index for this specific card
    slideIndexes[cardId] += step;

    // Ensure index is within bounds
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

    </script>
    
