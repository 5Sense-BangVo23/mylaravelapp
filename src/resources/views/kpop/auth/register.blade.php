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
    <x-slot name="title">Register Member</x-slot>

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
            body {
                margin: 0;
                padding: 0;
                font-family: 'Arial', sans-serif;
                background-color: #f7f7f7;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .register-form {
                background-color: #fff;
                min-width: 600px;
                margin: 0 auto;
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
                text-align: center;
            }

            .register-form h2 {
                color: #ff0066;
                font-size: 32px;
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 20px;
                position: relative;
                text-align: left;
            }

            .form-group input[type="text"],
            .form-group input[type="email"],
            .form-group input[type="password"] {
                width: 100%;
                padding: 15px;
                margin: 5px 0;
                border: none;
                border-radius: 25px;
                background-color: #f0f0f0;
                outline: none;
                position: relative;
                overflow: hidden;
            }

            .form-group input[type="text"] + label,
            .form-group input[type="email"] + label,
            .form-group input[type="password"] + label {
                color: #999;
                position: absolute;
                top: 50%;
                left: 20px;
                transform: translateY(-50%);
                transition: top 0.3s ease, font-size 0.3s ease, color 0.3s ease;
                z-index: 1;
            }

            .form-group input[type="text"]:focus + label,
            .form-group input[type="email"]:focus + label,
            .form-group input[type="password"]:focus + label {
                top: 5px;
                font-size: 12px;
                color: #ff0066;
            }

            .form-group input[type="text"]::before,
            .form-group input[type="email"]::before,
            .form-group input[type="password"]::before {
                content: '';
                position: absolute;
                top: 0;
                left: -100%;
                width: 100%;
                height: 100%;
                background-color: #fff;
                transition: left 0.3s ease;
                z-index: 2;
                mix-blend-mode: multiply;
            }

            .form-group input[type="text"]:focus::before,
            .form-group input[type="email"]:focus::before,
            .form-group input[type="password"]:focus::before {
                left: 0;
            }

            .button {
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

            .button:hover {
                background-color: #ff0044;
            }

            .filled + label {
                display: none;
            }

          /* Animation */
        @keyframes border-top-right {
            0%    {width:0px;   height:0px;}
            25%   {width:200px; height:0px;}
            50%   {width:200px; height:48px;}
            100%  {width:200px; height:48px;}
        }

        .form-group input[type="text"].filled + label::after,
        .form-group input[type="email"].filled + label::after,
        .form-group input[type="password"].filled + label::after {
            content: '';
            position: absolute;
            bottom: -3px; 
            right: 0;
            width: 0;
            height: 0;
            background-color: transparent;
            border-top: 3px solid transparent;
            border-right: 3px solid transparent;
            animation: border-top-right 2s ease infinite;
        }

        </style>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const inputs = document.querySelectorAll('.form-group input');

                inputs.forEach(input => {
                    input.addEventListener('input', function() {
                        if (this.value.trim() !== '') {
                            this.classList.add('filled');
                        } else {
                            this.classList.remove('filled');
                        }
                    });
                });
            });
        </script>
    </x-slot>

    <div class="register-form">
        <h2>Join</h2>
        <form action="{{ route('kpop.register') }}" method="POST">
            @csrf
            <div class="form-group">
                <input type="text" id="name" name="name" required>
                <label for="name">Name</label>
            </div>
            <div class="form-group">
                <input type="email" id="email" name="email" required>
                <label for="email">Email</label>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" required>
                <label for="password">Password</label>
            </div>
            <div class="form-group">
                <input type="password" id="password_confirmation" name="password_confirmation" required>
                <label for="password_confirmation">Confirm Password</label>
            </div>
            <button type="submit" class="button">Register</button>
        </form>
    </div>
</x-kpop-layout>