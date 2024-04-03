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

                modal.addEventListener('click', function(event) {
                    if (event.target === modal && !modal.contains(event.target)) {
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
        <header>
            <button type="button" id="openModalButton">Upload</button>
        </header>
        <main>
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
            <div id="tableWrapper">
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
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                       
                    </tbody>
                </table>    
            </div>

            <div id="myCustomModal" class="custom-modal">
                <div class="modal-content">
                    <span class="close-button">&times;</span>
                    <div id="custom-image-container"></div>
                </div>
            </div>
            
        </main>
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
                            <td><a onclick="openInNewTab('${row.file_url}')">${row.file_url}</a></td>
                            <td>${row.file_name}</td>
                            <td>${row.file_type}</td>
                            <td>${row.size}</td>
                            <td>${row.created_at}</td>
                            <td>${row.updated_at}</td>
                            <td>
                                <div class="button-container">
                                    <button class="view" onclick="viewItem(${row.id})">View</button>
                                    <button class="delete" onclick="deleteItem(${row.id})">Delete</button>
                                </div>
                            </td>
                         `;
                        tableBody.appendChild(tr);
                    });
                } else {
                    // console.error(xhr.statusText);
                }
            };
            xhr.onerror = function () {
                // console.error(xhr.statusText);
            };
            xhr.send();
        });

        function viewItem(id) {
            console.log('View item with ID:', id);
            fetch('{{ route("view", ":id") }}'.replace(':id', id))
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Failed to fetch image');
                    }
                    return response.json();
                })
                .then(data => {
                    const imageUrl = data.imageUrl;
                    console.log('Image URL:', imageUrl);
                    const imageElement = document.createElement('img');
                    imageElement.src = imageUrl;
                
                    const modal = document.getElementById('myCustomModal');
                    const imageContainer = document.getElementById('custom-image-container');
                    imageContainer.innerHTML = ''; 
                    imageContainer.appendChild(imageElement);
                    
                    modal.style.display = 'block';

                    const closeButton = modal.querySelector('.close-button');
                    closeButton.addEventListener('click', () => {
                        modal.style.display = 'none';
                    });
                })
                .catch(error => {
                    // console.error(error);
                });
        }

        function deleteItem(id) {
            if (confirm('Are you sure you want to delete this item?')) {
                fetch('{{ route("remove", ":id") }}'.replace(':id', id), {
                    method: 'DELETE',
                    headers: {
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                    }
                })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Failed to delete item');
                    }
                    return response.json();
                })
                .then(data => {
                    refreshDataTable(); 
                })
                .catch(error => {
                    // console.error(error.message);
                });
            }
        }


        function refreshDataTable() {
            var tableBody = document.querySelector('#dataTable tbody');
            tableBody.innerHTML = ''; 

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
                            <td><a href="${row.file_url}">${row.file_url}</a></td>
                            <td>${row.file_name}</td>
                            <td>${row.file_type}</td>
                            <td>${row.size}</td>
                            <td>${row.created_at}</td>
                            <td>${row.updated_at}</td>
                            <td>
                                <div class="button-container">
                                    <button class="view" onclick="viewItem(${row.id})">View</button>
                                    <button class="delete" onclick="deleteItem(${row.id})">Delete</button>
                                </div>
                            </td>
                        `;
                        tableBody.appendChild(tr); 
                    });
                } else {
                    // console.error(xhr.statusText);
                }
            };
            xhr.onerror = function () {
                // console.error(xhr.statusText);
            };
            xhr.send();
        }

        function openInNewTab(url) {
            var win = window.open(url, '_blank');
            win.focus();
        }


  
  
  </script>
 
</x-guest-layout>
