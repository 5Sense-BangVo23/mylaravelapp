<x-guest-layout>
    @php
        $title = config('app.site_name');
        $description = 'Media Management Dashboard';
        $urlPath = request()->path();
        $urlFull = request()->fullUrl();
        $image = config('app.asset_function')('images/favicons/favicon-32x32.png');
    @endphp
    <x-slot name="title">Media Management</x-slot>
  
    <x-slot name="meta">
        <meta name="description" content="{{ $description }}">
        <meta property="og:description" content="{{ $description }}" />
        <meta property="og:url" content="{{ $urlFull }}" />
        <meta property="og:path" content="{{ $urlPath }}" />
        <meta property="og:image" content="{{ $image }}" />
        <meta name="csrf-token" content="{{ csrf_token() }}">
    </x-slot>
    
    <x-slot name="head">
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/kpop/dashboard.css') }}">
        <script src="{{ config('app.asset_function')('js/kpop/dashboard.js') }}" defer></script>
        
    </x-slot>
   
    <header>
        <h1>Media Management</h1>
        <form method="POST" action="{{ route('kpop.logout') }}">
            @csrf
            <button type="submit" class="logout-button">Logout</button>
        </form>
    </header>
    
    <div class="container">
        <div class="tabs">
            <div class="tab active" onclick="showTab('images')">Images</div>
            <div class="tab" onclick="showTab('videos')">Videos</div>
        </div>

        <div id="images" class="media-section">
            <div class="filter">
                <input type="text" placeholder="Search for images...">
                <button class="custom-upload-button" onclick="openImageModal()">Add Image
                    <input type="file" id="image" name="image" accept="image/*" required style="display:none;">
                </button>
            </div>

            <div class="media-grid">
                <!-- Sample Media Items -->
                <div class="media-item">
                    <img src="http://localhost:8000/images/sample-image1.jpg" alt="Sample Image 1">
                    <div class="media-title">Sample Image 1</div>
                </div>
                <div class="media-item">
                    <img src="http://localhost:8000/images/sample-image2.jpg" alt="Sample Image 2">
                    <div class="media-title">Sample Image 2</div>
                </div>
                <!-- Add more image items as needed -->
            </div>
        </div>

        <div id="videos" class="media-section" style="display: none;">
            <div class="filter">
                <input type="text" placeholder="Search for videos...">
                <button class="custom-upload-button" onclick="openVideoModal()">Add Video
                    <input type="file" id="video" name="video" accept="video/*" required style="display:none;">
                </button>
            </div>

            <div class="media-grid">
                <div class="media-item">
                    <video controls>
                        <source src="http://localhost:8000/videos/sample-video1.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                    <div class="media-title">Sample Video 1</div>
                </div>
                <div class="media-item">
                    <video controls>
                        <source src="http://localhost:8000/videos/sample-video2.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                    <div class="media-title">Sample Video 2</div>
                </div>
                <!-- Add more video items as needed -->
            </div>
        </div>
        
        <div class="footer">
            &copy; {{ date('Y') }} Kpop Management Dashboard. All rights reserved.
        </div>
    </div>

    <!-- Modal for Adding Image -->
    <div id="addImageModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeImageModal()">&times;</span>
            <h2>Add Image</h2>
            <form method="POST" action="" enctype="multipart/form-data">
                @csrf
                <label for="image">Select Image:</label>
                <input type="file" id="imageUpload" name="image" accept="image/*" required>
                <button type="submit" style="background-color: #ff4081; color: white; border: none; padding: 10px 15px; border-radius: 5px;">Upload</button>
            </form>
        </div>
    </div>

    <!-- Modal for Adding Video -->
    <div id="addVideoModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeVideoModal()">&times;</span>
            <h2>Add Video</h2>
            <form method="POST" action="" enctype="multipart/form-data">
                @csrf
                <label for="video">Select Video:</label>
                <input type="file" id="videoUpload" name="video" accept="video/*" required>
                <button type="submit" style="background-color: #ff4081; color: white; border: none; padding: 10px 15px; border-radius: 5px;">Upload</button>
            </form>
        </div>
    </div>
</x-guest-layout>
