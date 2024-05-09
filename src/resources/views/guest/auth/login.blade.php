<!-- resources/views/auth/login.blade.php -->

<x-guest-layout>
    @php
    $title = config('app.site_name');
    $description = 'My App';
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
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/login.css') }}">
    </x-slot>
    <div class="login-container">
        <div class="login-row justify-content-center">
            <div class="login-column">
                <div class="login-card">
                    <div class="login-card-header">Login</div>
    
                    <div class="login-card-body">
                        <form method="POST" action="{{ route('account.login') }}">
                            @csrf
    
                            <div class="login-form-group-row">
                                <label for="username_or_email" class="login-label visually-hidden">Username or Email Address</label>
                            
                                <div class="login-input">
                                    <input id="username_or_email" type="text" class="login-control @error('username_or_email') login-is-invalid @enderror" name="username_or_email" value="{{ old('username_or_email') }}" required autocomplete="username_or_email" autofocus placeholder="Username or Email Address">
                                    {{-- @error('username_or_email')
                                        <span class="login-error-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror --}}
                                </div>
                            </div>
                            
                            <div class="login-form-group-row">
                                <label for="password" class="login-label visually-hidden">Password</label>
                            
                                <div class="login-input">
                                    <input id="password" type="password" class="login-control @error('password') login-is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
                                    {{-- @error('password')
                                        <span class="login-error-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror --}}
                                </div>
                            </div>
                            
    
                            <div class="login-form-group-row">
                                <div class="login-input">
                                    <input class="login-checkbox" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
    
                                    <label class="login-label" for="remember">
                                        
                                    </label>
                                </div>
                            </div>
    
                            <div class="login-form-group-row mb-0">
                                <div class="login-input">
                                    <button type="submit" class="login-button">
                                        Start
                                    </button>
    
                                    @if (Route::has('password.request'))
                                        <a class="login-link" href="{{ route('password.request') }}">
                                            Forgot Your Password?
                                        </a>
                                    @endif
                                </div>
                            </div>

                            <div class="login-form-group-row mb-0">
                                <div class="login-input">
                                    <p>Don't have an account? <a href="{{ route('account.register') }}" class="login-link">Register here</a></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-guest-layout>