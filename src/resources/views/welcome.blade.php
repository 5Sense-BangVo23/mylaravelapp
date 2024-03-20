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
    <main id="master-root">
        <section class="banner-section">
            <div class="banner-container">
                <div class="banner-left">
                    <div id="clock"></div>
                    <h1 class="title banner-title">PROJECT</h1>
                    <h2 class="banner-text">Lorum</h2>
                    <div class="banner-btn">
                        <button class="prev-button"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></button>
                        <button class="next-button"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                    </div>
                    <div class="number-grid">
                        <span class="number">01</span>
                        <span class="separator"></span>
                        <span class="number">02</span>
                    </div>
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
                    <div class="banner-link">
                        <a href="#"> <button class="btn-banner-link">View Project <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button></a>
                    </div>
                </div>
            </div>  
        </section>
        <!-- Content Component -->
        <section class="content-about">
            <div class="image-contentAbout">
                <div class="column">
                    <img src="{{ config('app.asset_function')('images/about1.svg') }}" alt="About">
                    <img src="{{ config('app.asset_function')('images/about3.svg') }}" alt="About">
                </div>
                <div class="column">
                    <img src="{{ config('app.asset_function')('images/about2.svg') }}" alt="About">
                  
                </div>
            </div>
            <div class="column paragraph-contentAbout">
                <h1 class="title">About</h1>
                <p class="text-contentAbout">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Congue eu consequat ac felis donec et odio. Luctus accumsan tortor posuere ac ut consequat. Nibh tellus molestie nunc non. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Fringilla est ullamcorper eget nulla facilisi. Auctor neque vitae tempus quam pellentesque. Tellus cras adipiscing enim eu turpis egestas pretium. Pellentesque habitant morbi tristique senectus. Consequat mauris nunc congue nisi vitae suscipit. Mauris cursus mattis molestie a iaculis at.</p>
                <a class="read-more" href="">Read more <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
            </div>
        </section>
        
        
        <section class="content-statement">
            <h1 class="title statement-title">Main Focus/Mission Statement</h1>
        </section>
        <section class="content-outProject">
            
        </section>
        <section class="content-contactUs">
            
        </section>
     </main>
     
    
  </x-master-layout>
