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
    <x-slot name="title">Register</x-slot>
  
    <x-slot name="meta">
          <meta name="description" content="{{ $description }}">
          <meta property="og:description" content="{{ $description }}" />
          <meta property="og:url" content="{{ $urlFull }}" />
          <meta property="og:path" content="{{  $urlPath }}" />
          <meta property="og:image" content="{{ $image }}" />
          <meta name="csrf-token" content="{{ csrf_token() }}">
    </x-slot>
    <x-slot name="head">
            <link rel="stylesheet" href="{{ config('app.asset_function')('css/register.css') }}">
    </x-slot>

    <div class="register-container">
        <div class="register-row justify-content-center">
            <div class="register-column">
                <div class="register-card">
                    <div class="register-card-header">Register</div>
    
                    <div class="register-card-body">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf
    
                            <div class="register-form-group-row">
                                <label for="name" class="register-label visually-hidden">Name</label>
                            
                                <div class="register-input">
                                    <input id="name" type="text" class="register-control @error('name') register-is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Name">
                                    @error('name')
                                        <span class="register-error-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            
                            <div class="register-form-group-row">
                                <label for="email" class="register-label visually-hidden">E-Mail Address</label>
                            
                                <div class="register-input">
                                    <input id="email" type="email" class="register-control @error('email') register-is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="E-Mail Address">
                                    @error('email')
                                        <span class="register-error-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            
                            <div class="register-form-group-row">
                                <label for="password" class="register-label visually-hidden">Password</label>
                            
                                <div class="register-input">
                                    <input id="password" type="password" class="register-control @error('password') register-is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Password">
                                    @error('password')
                                        <span class="register-error-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            
                            <div class="register-form-group-row">
                                <label for="password-confirm" class="register-label visually-hidden">Confirm Password</label>
                            
                                <div class="register-input">
                                    <input id="password-confirm" type="password" class="register-control" name="password_confirmation" required autocomplete="new-password" placeholder="Confirm Password">
                                </div>
                            </div>
                            
    
                            <div class="register-form-group-row mb-0">
                                <div class="register-input">
                                    <button type="submit" class="register-button">
                                        Register
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    

</x-guest-layout>