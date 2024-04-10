<x-master-layout>
    @php
    $title = "List " . $content_type->name;
    $description = 'List Post Article';
    $urlPath = request()->path();
    $urlFull = request()->fullUrl();
    $image = config('app.asset_function')('images/favicons/favicon-32x32.png');
    @endphp
    <x-slot name="title">
      {{ $title }}
    </x-slot>
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
            .post-card {
                display: flex;
                flex-direction: column;
                gap: 20px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                background-color: #fff;
            }
            /* Post container */
            .post {
                border: 1px solid #ccc;
                border-radius: 8px;
                padding: 20px;
                margin-bottom: 20px;
                background-color: #fff;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            /* Post info */
            .post-info {
                margin: 0;
                color: #666;
                font-size: 14px;
                margin-bottom: 10px;
            }

            /* Post image */
            .post-image {
                width: 100%;
                border-radius: 8px;
                margin-bottom: 20px;
            }

            /* Post content */
            .post-content {
                margin-bottom: 15px;
            }

            /* Meta section */
            .meta {
                margin-bottom: 10px;
            }

            /* Share buttons */
            .share-buttons {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .share-button {
                background-color: #007bff;
                color: #fff;
                padding: 10px 15px;
                border-radius: 5px;
                text-decoration: none;
            }

            .share-button:hover {
                background-color: #0056b3;
            }

        </style>
    </x-slot>
    <header> 
        <h1>{{ $title }}</h1>
    </header>
    <main>
        @foreach($list as $post)
            {{-- @if($post)
                @dump($post->commonData)
            @endif --}}
            {!! $html !!}
            <div class="post-card">
                <article class="post">
                    <p class="post-info"><strong>Published on:</strong> {{ $post->commonData['publish_started_at']}}</p>
                    <p class="post-info"><strong>Author:</strong> {{ $post->user['name'] }}</p>
                    <p class="post-info"><strong>Category:</strong> Technology</p>
                    <img src="https://via.placeholder.com/800x400" alt="Post Image" class="post-image">
                    <p class="post-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor a nisl scelerisque fringilla nec a libero. Mauris vestibulum fringilla purus, non pharetra lorem tempor vel. Suspendisse potenti. Integer semper aliquam est sit amet posuere. Nam condimentum lobortis ex. Ut nec mauris non velit ultrices congue. Suspendisse mollis pharetra eros, at mattis nisl pharetra non. Aliquam nec justo sed metus pharetra malesuada. Donec interdum vel nulla in lacinia. Proin quis congue libero.</p>
                    <p class="post-content">Nulla facilisi. Sed in ligula auctor, volutpat odio at, malesuada justo. Donec tempus ligula a orci fringilla, id consectetur ante mattis. Fusce et lacus non est convallis maximus eu ut magna. Suspendisse potenti. Vestibulum id felis nunc. Fusce sit amet tincidunt libero. Morbi laoreet lectus in sapien placerat, nec fringilla elit accumsan. Integer ut placerat turpis.</p>
                    <div class="meta">
                        <p><strong>Tags:</strong> Technology, Innovation, Trends</p>
                    </div>
                    <div class="share-buttons">
                        <a href="#" target="_blank" class="share-button">Share on Facebook</a>
                        <a href="#" target="_blank" class="share-button">Share on Twitter</a>
                        <a href="#" target="_blank" class="share-button">Share on LinkedIn</a>
                    </div>
                </article>
            
                @livewire('post.comment',['comments' => $comments ?? []])
            </div>
        @endforeach
        </main>

</x-master-layout>