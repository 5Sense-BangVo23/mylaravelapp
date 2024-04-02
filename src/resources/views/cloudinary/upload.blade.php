<x-guest-layout>
    @php
        $title = config('app.site_name');
        $description = 'My App';
        $urlPath = request()->path();
        $urlFull = request()->fullUrl();
        $image = config('app.asset_function')('images/favicons/favicon-32x32.png');
    @endphp
    <x-slot name="title">Media Upload</x-slot>
  
    <x-slot name="meta">
          <meta name="description" content="{{ $description }}">
          <meta property="og:description" content="{{ $description }}" />
          <meta property="og:url" content="{{ $urlFull }}" />
          <meta property="og:path" content="{{  $urlPath }}" />
          <meta property="og:image" content="{{ $image }}" />
          <meta name="csrf-token" content="{{ csrf_token() }}">
    </x-slot>
    <x-slot name="head">
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/upload.css') }}">
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                var openModalButton = document.getElementById('openModalButton');
                var modal = document.getElementById('uploadModal');
                var closeModalSpan = document.querySelector('.close');
                var fileUpload = document.getElementById('file-upload');
                var hiddenSubmit = document.getElementById('hidden-submit');
    
                fileUpload.addEventListener('change', function() {
                    hiddenSubmit.click();
                });
    
                openModalButton.addEventListener('click', function() {
                    modal.style.display = 'block';
                });
    
                closeModalSpan.addEventListener('click', function() {
                    modal.style.display = 'none';
                });
    
                window.addEventListener('click', function(event) {
                    if (event.target == modal) {
                        modal.style.display = 'none';
                    }
                });
    
                fileUpload.addEventListener('change', function() {
                    var fileName = this.files[0].name;
                    var label = this.previousElementSibling;
                    label.querySelector('span').innerText = fileName;
                });
            });
        </script>
    </x-slot>
  
    <div>
         <!-- Button to open modal -->
        <button type="button" id="openModalButton">Open Upload Modal</button>

        <!-- Modal container -->
        <div class="modal-container" id="uploadModal">
            <!-- Modal content -->
            <div class="modal-content">
                <!-- Close button -->
                <span class="close">&times;</span>
                <!-- Modal title -->
                <h2>Upload File</h2>
                <!-- Upload form -->
                <form id="uploadForm" action="{{ route('upload') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <!-- Custom file upload -->
                    <label for="file-upload" class="custom-file-upload">
                        <span>Choose File</span>
                    </label>
                    <input id="file-upload" type="file" name="file" accept="image/*" style="display: none;">
                    <!-- Hidden submit button -->
                    <button id="hidden-submit" type="submit" style="display: none;"></button>
                </form>
            </div>
        </div>

    </div>
 
</x-guest-layout>
