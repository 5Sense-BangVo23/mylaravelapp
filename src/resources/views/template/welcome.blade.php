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
                        @foreach($banners as $banner)
                            <div class="banner-slide">
                                <img src="{{ $banner->link }}" alt="{{ $banner->title }}">
                            </div>
                        @endforeach
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
                    <img src="{{ $medias[0]->file_url }}" alt="About">
                    <img src="{{ $medias[1]->file_url }}" alt="About">
                </div>
                <div class="column">
                    <img src="{{ $medias[2]->file_url }}" alt="About">
                  
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
            <div class="content-statement-container">
                <div class="content-statement-left">
                    <div class="content-statement-number">
                        <span class="number-item">1</span>
                    </div>
                    <div class="content-statement-text">
                        <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. </p>
                    </div>
                </div>
                <div class="content-statement-right">
                    <div class="content-statement-number">
                        <span class="number-item">2</span>
                    </div>
                    <div class="content-statement-text">
                        <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. </p>
                    </div>
                </div>
            </div>
        </section>
       
        <section class="content-outProject">
            
        </section>
            <h1 class="title our-project-title">Our Projects</h1>
            <article>
                <div class="project-container">
                    <div class="project-card">
                        <img src="{{ config('app.asset_function')('images/project1.svg') }}" alt="Project 1">
                        <h2 class="project-title">Project 1</h2>
                        <a class="view-more" href="">View more <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </div>
                    <div class="project-card">
                        <img src="{{ config('app.asset_function')('images/project2.svg') }}" alt="Project 2">
                        <h2 class="project-title">Project 2</h2>
                    </div>
                    <div class="project-card">
                        <img src="{{ config('app.asset_function')('images/project3.svg') }}" alt="Project 3">
                        <h2 class="project-title">Project 3</h2>
                    </div>
                    <div class="project-card">
                        <img src="{{ config('app.asset_function')('images/project4.svg') }}" alt="Project 2">
                        <h2 class="project-title">Project 4</h2>
                    </div>
                    <div class="project-card">
                        <img src="{{ config('app.asset_function')('images/project5.svg') }}" alt="Project 3">
                        <h2 class="project-title">Project 5</h2>
                    </div>
                </div>
            </article>
        <section class="content-contactUs">
            
        </section>
     </main>
     
    
  </x-master-layout>
