<!-- Login Form -->
<x-kpop-layout>
    @php
    $title = config('app.site_name');
    $description = 'KPop Idol';
    $urlPath = request()->path();
    $urlFull = request()->fullUrl();
    $image = config('app.asset_function')('images/favicons/favicon-32x32.png');
    @endphp
    <x-slot name="title">
        {{ $title }}
    </x-slot>
    <x-slot name="title">Login</x-slot>

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
            /* CSS cho giao diện đăng nhập với phong cách Kpop */
            body {
                margin: 0;
                padding: 0;
                font-family: 'Arial', sans-serif;
                background-color: #f7f7f7;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                position: relative; /* Thêm position relative vào body */
            }
            .background-container {
                position: absolute;
                top: calc(50% - 275px); /* Điều chỉnh vị trí top cho container */
                left: -35%;
                right: 0;
                text-align: center;
            }
            .background-images {
                display: inline-block;
                position: relative;
            }
            .background-images img {
              width: 200px; /* Chỉnh kích thước hình ảnh */
              height: 200px;
              object-fit: cover; /* Chế độ giữ tỷ lệ khung */
              position: absolute; /* Đặt vị trí tuyệt đối */
              opacity: 0.5; /* Điều chỉnh độ mờ */
              transition: opacity 0.5s ease; /* Tạo hiệu ứng chuyển động */
              left: 50%; /* Đặt vị trí left ở giữa container */
              top: 50%; /* Đặt vị trí top ở giữa container */
              transform: translate(-50%, -50%) rotate(0deg); /* Dịch chuyển hình ảnh vào giữa container */
              box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Thêm shadow */
            }
            .background-images img:nth-child(2) {
                transform: translate(-50%, -50%) rotate(30deg); /* Điều chỉnh vị trí và góc xoay cho hình ảnh */
                z-index: 3; /* Điều chỉnh z-index để xếp hình ảnh lên trên */
            }
            .background-images img:nth-child(3) {
                transform: translate(-50%, -50%) rotate(-30deg); /* Điều chỉnh vị trí và góc xoay cho hình ảnh */
                z-index: 2; /* Điều chỉnh z-index để xếp hình ảnh lên trên */
            }
            .background-images img:nth-child(4) {
                transform: translate(-50%, -50%) rotate(60deg); /* Điều chỉnh vị trí và góc xoay cho hình ảnh */
                z-index: 1; /* Điều chỉnh z-index để xếp hình ảnh lên trên */
            }
            .background-images img {
                width: 200px; /* Chỉnh kích thước hình ảnh */
                height: 200px;
                object-fit: cover; /* Chế độ giữ tỷ lệ khung */
                position: absolute; /* Đặt vị trí tuyệt đối */
                opacity: 0.1; /* Điều chỉnh độ mờ */
                transition: opacity 0.5s ease; /* Tạo hiệu ứng chuyển động */
                left: 50%; /* Đặt vị trí left ở giữa container */
                top: 50%; /* Đặt vị trí top ở giữa container */
                transform: translate(-50%, -50%) rotate(0deg); /* Dịch chuyển hình ảnh vào giữa container */
            }
            .background-images img:nth-child(1) {
                transform: translate(-50%, -50%) rotate(0deg); /* Điều chỉnh vị trí và góc xoay cho hình ảnh */
                z-index: 4; /* Điều chỉnh z-index để xếp hình ảnh lên trên */
            }
            .background-images img:nth-child(2) {
                transform: translate(-50%, -50%) rotate(30deg); /* Điều chỉnh vị trí và góc xoay cho hình ảnh */
                z-index: 3; /* Điều chỉnh z-index để xếp hình ảnh lên trên */
            }
            .background-images img:nth-child(3) {
                transform: translate(-50%, -50%) rotate(-30deg); /* Điều chỉnh vị trí và góc xoay cho hình ảnh */
                z-index: 2; /* Điều chỉnh z-index để xếp hình ảnh lên trên */
            }
            .background-images img:nth-child(4) {
                transform: translate(-50%, -50%) rotate(60deg); /* Điều chỉnh vị trí và góc xoay cho hình ảnh */
                z-index: 1; /* Điều chỉnh z-index để xếp hình ảnh lên trên */
            }


            .background-images img.active {
                opacity: 1; /* Hiển thị hình ảnh hiện tại */
            }
            .login-form {
                background-color: #fff;
                width: 400px; /* Chỉnh lại kích thước form */
                margin: 0 auto;
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
                text-align: center;
            }
            .login-form h2 {
                color: #ff0066;
                font-size: 32px;
                margin-bottom: 20px;
            }
            .login-form .form-group {
                margin-bottom: 20px;
                position: relative;
                text-align: left;
            }
            .login-form .form-group label {
                font-weight: bold;
                color: #333;
                position: absolute;
                top: 50%;
                left: 20px;
                transform: translateY(-50%);
                transition: top 0.3s ease, font-size 0.3s ease, color 0.3s ease;
            }
            .login-form input[type="text"],
            .login-form input[type="password"] {
                width: 100%;
                padding: 15px;
                margin: 5px 0;
                border: none;
                border-radius: 25px;
                background-color: #f0f0f0;
                outline: none;
                position: relative;
            }

            .login-form input[type="text"].filled + label,
            .login-form input[type="password"].filled + label {
                display: none;
            }
           /* Initially hide the border for filled inputs */
            .login-form input[type="text"].filled,
            .login-form input[type="password"].filled {
                border: 1px solid transparent; /* Set border to transparent for filled inputs */
            }

            /* Show the border when input is focused or has content */
            .login-form input[type="text"].filled:focus,
            .login-form input[type="text"].filled:not(:focus),
            .login-form input[type="password"].filled:focus,
            .login-form input[type="password"].filled:not(:focus) {
                border: 1px solid #ff0066; /* Change the border color as needed */
            }

             /* Add hover effect to create border animation */
            .login-form input[type="text"].filled:hover,
            .login-form input[type="password"].filled:hover {
                position: relative;
            }

            .login-form input[type="text"].filled:hover::before,
            .login-form input[type="password"].filled:hover::before {
                content: '';
                position: absolute;
                top: -1px;
                left: -1px;
                right: -1px;
                bottom: -1px;
                border: 2px solid #ff0066; /* Change the border color and thickness as needed */
                border-radius: 25px;
                animation: borderHover 1s infinite alternate; /* Adjust animation duration and timing as needed */
            }

            @keyframes borderHover {
                from {
                    transform: translateX(-100%);
                }
                to {
                    transform: translateX(100%);
                }
            }


            .login-form input[type="text"] + label,
            .login-form input[type="password"] + label {
                color: #999;
                position: absolute;
                top: 50%;
                left: 20px;
                transform: translateY(-50%);
                transition: top 0.3s ease, font-size 0.3s ease, color 0.3s ease;
            }
            .login-form input[type="text"]:focus + label,
            .login-form input[type="password"]:focus + label {
                top: 5px;
                font-size: 12px;
                color: #ff0066;
            }
            .login-form button {
                width: 100%;
                padding: 15px;
                margin: 20px 0;
                border: none;
                border-radius: 25px;
                background-color: #ff0066;
                color: #fff;
                font-size: 18px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                outline: none;
            }
            .login-form button:hover {
                background-color: #ff0044;
            }
            @keyframes slideOutRight {
                0% {
                    transform: translateX(0); /* Không di chuyển ban đầu */
                    opacity: 1; /* Hiển thị ban đầu */
                }
                100% {
                    transform: translateX(100%); /* Di chuyển sang phải */
                    opacity: 0; /* Ẩn đi */
                }
            }

            .hidden {
                opacity: 0;
                height: 0;
                overflow: hidden;
                transition: opacity 0.3s ease, height 0.3s ease;
            }

            /* Define the keyframes for spinning animation */
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Apply styles to the processing span */
        .processing {
            color: #049904;
            font-size: 1.8rem;
        }

        /* Style the circle loader */
        .circle-load {
            display: inline-block;
            width: 1em;
            height: 1em;
            border: 0.15em dotted #049904; /* Circle border color */
            border-top: 0.15em solid transparent; /* Hide the top border to create a circle */
            border-radius: 50%; /* Make it a circle */
            animation: spin 1s linear infinite; /* Apply the spin animation */
        }

        </style>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var images = document.querySelectorAll('.background-images img');
                var currentIndex = 0;
                setInterval(function () {
                    images[currentIndex].classList.remove('active');
                    currentIndex = (currentIndex + 1) % images.length;
                    images[currentIndex].classList.add('active');
                }, 5000); // Thay đổi ảnh sau mỗi 5 giây

                        
                const inputs = document.querySelectorAll('.login-form input');

                inputs.forEach(input => {
                
                    input.addEventListener('input', function () {
                      
                        if (this.value.trim() !== '') {
                                this.classList.add('filled');
                        } else {
                        this.classList.remove('filled');
                        }
                 });
                });

               
                const loginForm = document.querySelector('.login-form');
    const loadingSpinner = document.getElementById('loading-spinner');

    loginForm.addEventListener('submit', function (event) {
        // Prevent the default form submission behavior
        event.preventDefault();

        // Hide the login button immediately
        const loginButton = event.target.querySelector('button[type="submit"]');
        if (loginButton) {
            loginButton.style.display = 'none';
        }

        // Show the loading spinner
        if (loadingSpinner) {
            loadingSpinner.classList.remove('hidden');
        }

        // Simulate a delay using setTimeout
        setTimeout(function () {
            // Redirect to the dashboard page after the timeout
            window.location.href = "{{ route('kpop.dashboard') }}";
        }, 2000); // Adjust the timeout duration as needed
    });

            });
        </script>
    </x-slot>

    <div class="background-container">
      <div class="background-images">
          <img src="{{config('app.asset_function')('images/kpop/blackpink/blackpink-image-1.jpeg')}}" alt="Background Image 1" class="active">
          <img src="{{config('app.asset_function')('images/kpop/blackpink/blackpink-image-2.jpeg')}}" alt="Background Image 2">
          <img src="{{config('app.asset_function')('images/kpop/blackpink/blackpink-image-3.jpeg')}}" alt="Background Image 3">
          <img src="{{config('app.asset_function')('images/kpop/blackpink/blackpink-image-4.jpeg')}}" alt="Background Image 4">
      </div>
    </div>
    <div class="login-form">
        <h2>Login</h2>
        <form method="POST" action="{{ route('kpop.login') }}">
            @csrf
            <div class="form-group">
                <input type="text" id="username_or_email" name="username_or_email" required>
                <label for="username_or_email">Username or Email</label>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" required>
                <label for="password">Password</label>
            </div>
            {{-- @error('username_or_email')
                <span class="text-danger">{{ $message }}</span>
            @enderror
            @error('password')
                <span class="text-danger">{{ $message }}</span>
            @enderror --}}
            <button type="submit">Login</button>
            <div id="loading-spinner" class="hidden">
                <!-- Add your loading spinner or animation here -->
                <span class="processing">Processing <strong class="circle-load"></strong></span>
            </div>
        </form>

        <!-- Your existing register link -->
        <div class="register-link">
            <p>Don't have an account ! <a href="{{ route('kpop.register') }}"> Go</a></p>
        </div>
       
    </div>

</x-kpop-layout>
