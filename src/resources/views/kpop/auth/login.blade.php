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
            }
            .login-form input[type="text"] + label,
            .login-form input[type="password"] + label {
                color: #999;
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
        </form>

        <!-- Your existing register link -->
        <div class="register-link">
            <p>Don't have an account ! <a href="{{ route('kpop.register') }}"> Go</a></p>
        </div>
    </div>
  
  </x-kpop-layout>
  