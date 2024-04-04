<x-guest-layout>
    @php
        $title = config('app.site_name');
        $description = 'My App';
        $urlPath = request()->path();
        $urlFull = request()->fullUrl();
        $image = config('app.asset_function')('images/favicons/favicon-32x32.png');
    @endphp
    <x-slot name="title">Media Manager</x-slot>
  
    <x-slot name="meta">
        <meta name="description" content="{{ $description }}">
        <meta property="og:description" content="{{ $description }}" />
        <meta property="og:url" content="{{ $urlFull }}" />
        <meta property="og:path" content="{{  $urlPath }}" />
        <meta property="og:image" content="{{ $image }}" />
        <meta name="csrf-token" content="{{ csrf_token() }}">
    </x-slot>
    
    <x-slot name="head">
        <style>
            .logged-in-info {
                background-color: #f9f9f9;
                border-radius: 8px;
                padding: 16px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                display: flex;
                align-items: center;
                font-family: 'Roboto', sans-serif;
            }

            .user-icon {
                margin-right: 16px;
                font-size: 36px;
                color: #007bff;
            }

            .user-details {
                flex-grow: 1;
            }

            .user-details p {
                margin-bottom: 10px;
                font-size: 18px;
                color: #333;
            }

            .user-details ul {
                padding: 0;
                margin: 0;
            }

            .user-details ul li {
                list-style: none;
                margin-bottom: 8px;
            }

            .user-details ul li span {
                font-weight: bold;
                color: #555;
            }

            /* -------- */
                 #hidden-submit {
                    background-color: #4CAF50; 
                    color: white;
                    padding: 10px 20px; 
                    border: none;
                    border-radius: 5px; 
                    cursor: pointer; 
                    font-size: 16px; 
                }

                #hidden-submit:hover {
                    background-color: #45a049; 
                }

                #hidden-submit:active {
                    background-color: #3e8e41; 
                }


        </style>
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/modal-upload.css') }}">
        <script src="{{config('app.asset_function')('js/modalUploadFile.js') }}"></script>
        <script>
            // --------------- Info Cloudinary ---------------
            function toggleVisibility() {
                var elements = document.querySelectorAll('.env-list .collapsed');
                elements.forEach(function(element) {
                    if (element.style.display === 'none') {
                        element.style.display = 'block';
                    } else {
                        element.style.display = 'none';
                    }
                });

                var icon = document.getElementById('toggle-icon');
                if (icon.classList.contains('fa-chevron-down')) {
                    icon.classList.remove('fa-chevron-down');
                    icon.classList.add('fa-chevron-up');
                } else {
                    icon.classList.remove('fa-chevron-up');
                    icon.classList.add('fa-chevron-down');
                }
            }
        </script>
    </x-slot>
    @auth('admin')
        <div class="logged-in-info">
            <div class="user-icon">
                <img style="height: 80px;width:80px;border-radius:50%;" src="{{ Auth::guard('admin')->user()->avatar }}" alt="" />
            </div>
            <div class="user-details">
                <ul>
                    <li><span>Name:</span> {{ Auth::guard('admin')->user()->name }}</li>
                    <li><span>Username:</span> {{ Auth::guard('admin')->user()->username }}</li>
                </ul>
            </div>
            @livewire('cloudinary.cloudinary-info')
        </div>
    @endauth


    
    <main>
        @livewire('cloudinary.modal-upload')
        @livewire('cloudinary.data-table', ['data' => $data ?? [], 'count' => $count ?? 0])

        <div id="myCustomModal" class="custom-modal">
            <div class="modal-content">
                <span class="close-button">&times;</span>
                <div id="custom-image-container"></div>
            </div>
        </div>
    </main>
</x-guest-layout>
