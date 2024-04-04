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

                /* -----------------  Noti ------------ */
                /* CSS cho phần thông báo */
#notification {
    position: fixed;
    top: 20px;
    right: 20px;
    z-index: 9999;
    opacity: 0; /* Bắt đầu ẩn */
    transition: opacity 0.5s ease-in-out; /* Thêm hiệu ứng fade */
}

#notification.show {
    opacity: 1; /* Hiển thị thông báo khi có class 'show' */
}

.alert {
    padding: 15px;
    border-radius: 5px;
    margin-bottom: 20px;
}

.alert-success {
    background-color: #d4edda;
    border-color: #c3e6cb;
    color: #155724;
}

.alert-danger {
    background-color: #f8d7da;
    border-color: #f5c6cb;
    color: #721c24;
}

.close {
    background-color: transparent;
    border: none;
    padding: 0;
    font-size: 24px;
    color: #aaa;
    transition: color 0.3s;
    cursor: pointer;
}

.close:hover {
    color: #333;
}

.close:focus {
    outline: none;
}




/* CSS cho phần tiến trình */
.progressNoti {
    height: 5px;
    background-color: #f0f0f0;
    margin-top: 5px;
    overflow: hidden; /* Ẩn phần tiến trình khi không hiển thị */
    border-radius: 5px;
}

/* CSS cho phần tiến trình bên trong */
#progressBarNotiInner {
    height: 100%;
    background-color: #4CAF50;
    width: 0;
    transition: width 0.5s ease-in-out; /* Thêm hiệu ứng mở rộng */
}

/* CSS cho phần thông báo */
@keyframes slideInRight {
    from {
        transform: translateX(100%);
    }
    to {
        transform: translateX(0);
    }
}

#notification.show {
    animation: slideInRight 0.5s forwards; /* Sử dụng keyframe animation để tạo hiệu ứng slide vào từ bên phải */
}

/* CSS cho phần tiến trình */
@keyframes progressWidth {
    from {
        width: 0;
    }
    to {
        width: 100%;
    }
}

#progressBarNotiInner {
    height: 100%;
    background-color: #4CAF50;
    width: 0;
    animation: progressWidth 2s forwards; /* Sử dụng keyframe animation để tạo hiệu ứng mở rộng tiến trình */
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

    @if(session('success') || session('error'))
        <div id="notification" class="alert alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>              
            @if(session('success'))
                <div id="successMessage" class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif

            @if(session('error'))
                <div id="errorMessage" class="alert alert-danger">
                    {{ session('error') }}
                </div>
            @endif

            <div id="progressBarNoti" class="progressNoti" style="display: none;">
                <div id="progressBarNotiInner" class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
        </div>
    @endif

<script>
    
    $(document).ready(function() {
        @if(session('success'))
            $('#notification').addClass('show'); 
            var width = 0;
            var interval = setInterval(function() {
                width += 10;
                $('#progressBarNotiInner').css('width', width + '%').attr('aria-valuenow', width);
                if (width >= 100) {
                    clearInterval(interval);
                    setTimeout(function() {
                        $('#notification').removeClass('show'); 
                    }, 500); 
                }
            }, 500);
        @endif
    });


</script>

</x-guest-layout>
