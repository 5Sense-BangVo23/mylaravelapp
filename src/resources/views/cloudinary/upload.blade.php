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
    @auth('admin')
        <div>
            <p>Logged in as:</p>
            <ul>
                <li>Name: {{ Auth::guard('admin')->user()->name }}</li>
                <li>Username: {{ Auth::guard('admin')->user()->username }}</li>
            </ul>
        </div>
    @endauth
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
    
    <table id="dataTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Medially Type</th>
                <th>Medially ID</th>
                <th>File URL</th>
                <th>File Name</th>
                <th>File Type</th>
                <th>Size</th>
                <th>Created At</th>
                <th>Updated At</th>
            </tr>
        </thead>
        <tbody>
           
        </tbody>
    </table>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var tableBody = document.querySelector('#dataTable tbody');
            var xhr = new XMLHttpRequest();
            xhr.open('GET', '{{ route("getData") }}', true);
            xhr.onload = function () {
                if (xhr.status >= 200 && xhr.status < 300) {
                    var data = JSON.parse(xhr.responseText);

                    data.forEach(function (row) {
                        var tr = document.createElement('tr');
                        tr.innerHTML = `
                            <td>${row.id}</td>
                            <td>${row.medially_type}</td>
                            <td>${row.medially_id}</td>
                            <td>${row.file_url}</td>
                            <td>${row.file_name}</td>
                            <td>${row.file_type}</td>
                            <td>${row.size}</td>
                            <td>${row.created_at}</td>
                            <td>${row.updated_at}</td>
                        `;
                        tableBody.appendChild(tr);
                    });
                } else {
                    console.error(xhr.statusText);
                }
            };
            xhr.onerror = function () {
                console.error(xhr.statusText);
            };
            xhr.send();
        });
    </script>
 
</x-guest-layout>
