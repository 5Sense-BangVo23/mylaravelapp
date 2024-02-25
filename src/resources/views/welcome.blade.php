<x-master-layout>
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
    <x-slot name="title">My App</x-slot>
  
    <x-slot name="meta">
          <meta name="description" content="{{ $description }}">
          <meta property="og:description" content="{{ $description }}" />
          <meta property="og:url" content="{{ $urlFull }}" />
          <meta property="og:path" content="{{  $urlPath }}" />
          <meta property="og:image" content="{{ $image }}" />
          <meta name="csrf-token" content="{{ csrf_token() }}">
    </x-slot>
    <x-slot name="head">
  
    </x-slot>
    <div id="master-root">
        <section class="banner-section">
            <div class="banner-container">
                <div class="banner-left">
                    <h1 class="banner-title">PROJECT</h1>
                    <h2 class="banner-text">Lorum</h2>
                    <div class="banner-btn">
                        <button class="prev-button"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></button>
                        <button class="next-button"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                    </div>
                    <div><span>01</span><strong>/</strong><span>02</span></div>
                </div>
                <div class="banner-right">
                    <div class="banner-slides">
                            <div class="banner-slide">
                                <img src="{{ config('app.asset_function')('images/banner.svg') }}" alt="Slide 1">
                            </div>
                            <div class="banner-slide">
                                <img src="{{ config('app.asset_function')('images/banner.svg') }}" alt="Slide 2">
                            </div>
                            <div class="banner-slide">
                                <img src="{{ config('app.asset_function')('images/banner.svg') }}" alt="Slide 3">
                            </div>
                            <div class="banner-slide">
                                <img src="{{ config('app.asset_function')('images/banner.svg') }}" alt="Slide 4">
                            </div>
                       
                    </div>
                </div>
            </div>  
        </section>
        <!-- Content Component -->
        <section class="content">
            <h2>Welcome to Our App!</h2>
            <p>This is the main content of the app...</p>
        </section>
     </div>
     
    
  </x-master-layout>
