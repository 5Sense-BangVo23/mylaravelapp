<x-guest-layout>
    @php
        $title = config('app.site_name');
        $description = 'My App';
        $urlPath = request()->path();
        $urlFull = request()->fullUrl();
        $image = config('app.asset_function')('images/favicons/favicon-32x32.png');
    @endphp
    <x-slot name="title">Media Manager</x-slot>
  
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
            .logged-in-info {
                background-color: #f9f9f9;
                border-radius: 8px;
                padding: 16px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                display: flex;
                align-items: center;
                font-family: 'Roboto', sans-serif;
            }

            .user-icon {
                margin-right: 16px;
                font-size: 36px;
                color: #007bff;
            }

            .user-details {
                flex-grow: 1;
            }

            .user-details p {
                margin-bottom: 10px;
                font-size: 18px;
                color: #333;
            }

            .user-details ul {
                padding: 0;
                margin: 0;
            }

            .user-details ul li {
                list-style: none;
                margin-bottom: 8px;
            }

            .user-details ul li span {
                font-weight: bold;
                color: #555;
            }

            /* -------- */
                 #hidden-submit {
                    background-color: #4CAF50; 
                    color: white;
                    padding: 10px 20px; 
                    border: none;
                    border-radius: 5px; 
                    cursor: pointer; 
                    font-size: 16px; 
                }

                #hidden-submit:hover {
                    background-color: #45a049; 
                }

                #hidden-submit:active {
                    background-color: #3e8e41; 
                }


        </style>
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/upload.css') }}">
        <script>
           
            // FileUpload.js
            class FileUpload {
                constructor() {
                    this.fileUpload = document.getElementById('file-upload');
                    this.hiddenSubmit = document.getElementById('hidden-submit'); // Đảm bảo hidden-submit đã được định nghĩa
                    this.fileUpload.addEventListener('change', () => this.uploadFile());
                    this.progressHandler = null;
                }

                setProgressHandler(handler) {
                    this.progressHandler = handler;
                }

                uploadFile() {
                    if (this.hiddenSubmit) { // Kiểm tra nếu hiddenSubmit đã tồn tại
                        this.hiddenSubmit.click();
                    } else {
                        console.error("Error: 'hidden-submit' element is not defined.");
                    }
                }
            }


            // Modal.js
            class Modal {
                constructor() {
                    this.modal = document.getElementById('uploadModal');
                    this.openModalButton = document.getElementById('openModalButton');
                    this.closeModalSpan = document.querySelector('.close');
                    this.openModalButton.addEventListener('click', () => this.openModal());
                    this.closeModalSpan.addEventListener('click', () => this.closeModal());
                }

                openModal() {
                    this.modal.style.display = 'block';
                }

                closeModal() {
                    this.modal.style.display = 'none';
                }
            }

            // DataTable.js
            class DataTable {
                constructor() {
                    this.tableBody = document.querySelector('#dataTable tbody');
                }

                refresh() {
                    this.tableBody.innerHTML = '';
                    this.fetchData()
                        .then(data => this.renderData(data))
                        .catch(error => console.error(error.message));
                }

                fetchData() {
                    return fetch('{{ route("getData") }}')
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Failed to fetch data');
                            }
                            return response.json();
                        });
                }

                renderData(data) {
                    data.forEach(row => {
                        const tr = document.createElement('tr');
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
                                    <button class="delete" onclick="deleteItemConfirmation(${row.id})">Delete</button>
                                </div>
                            </td>
                        `;
                        this.tableBody.appendChild(tr);
                    });
                }
            }

            // ItemViewer.js
            class ItemViewer {
                constructor() {
                    this.modal = document.getElementById('myCustomModal');
                    this.closeButton = this.modal.querySelector('.close-button');
                    this.imageContainer = document.getElementById('custom-image-container');
                    this.closeButton.addEventListener('click', () => this.closeModal());
                }

                openModal(imageUrl) {
                    const imageElement = document.createElement('img');
                    imageElement.src = imageUrl;
                    this.imageContainer.innerHTML = '';
                    this.imageContainer.appendChild(imageElement);
                    this.modal.style.display = 'block';
                }

                closeModal() {
                    this.modal.style.display = 'none';
                }
            }

            // Main.js
            document.addEventListener('DOMContentLoaded', function() {
                const fileUpload = new FileUpload();
                const modal = new Modal();
                const dataTable = new DataTable();
                const itemViewer = new ItemViewer();
               
                document.getElementById('file-upload').addEventListener('change', function(event) {
                const file = event.target.files[0];
                if (file) {
                    const imageUrl = URL.createObjectURL(file);
                    const imagePreview = document.getElementById('image-preview');
                    if (imagePreview) {
                        imagePreview.onload = function() {
                            URL.revokeObjectURL(imageUrl); // Giải phóng tài nguyên
                        };
                        imagePreview.src = imageUrl;
                        imagePreview.style.display = 'inline-block';
                        imagePreview.style.width = '300px';
                        imagePreview.style.height = '200px';
                    }
                }
            });

                dataTable.refresh();
            });

            function viewItem(id) {
                fetch('{{ route("view", ":id") }}'.replace(':id', id))
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Failed to fetch image');
                        }
                        return response.json();
                    })
                    .then(data => {
                        const itemViewer = new ItemViewer();
                        itemViewer.openModal(data.imageUrl);
                    })
                    .catch(error => {
                        console.error(error);
                    });
            }

            function refreshDataTable() {
                var tableBody = document.querySelector('#dataTable tbody');
                tableBody.innerHTML = ''; 

                fetch('{{ route("getData") }}')
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Failed to fetch data');
                        }
                        return response.json();
                    })
                    .then(data => {
                        data.forEach(row => {
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
                                        <button class="delete" onclick="deleteItemConfirmation(${row.id})">Delete</button>
                                    </div>
                                </td>
                            `;
                            tableBody.appendChild(tr); 
                        });
                    })
                    .catch(error => {
                        console.error(error.message);
                    });
            }

            function deleteItemConfirmation(id) {
                const confirmationMessage = 'Are you sure you want to delete this item?';
                const popup = new Popup(confirmationMessage, (confirmed) => {
                    if (confirmed) {
                        deleteItem(id);
                    }
                });
            }

            function deleteItem(id) {
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
                    refreshDataTable();
                })
                .catch(error => {
                    console.error(error.message);
                });
            }

            class Popup {
                constructor(message, callback) {
                    this.message = message;
                    this.callback = callback;
                    this.show();
                }

                show() {
                    const popupContainer = document.createElement('div');
                    popupContainer.classList.add('popup-container');
                    popupContainer.innerHTML = `
                        <div class="popup">
                            <p>${this.message}</p>
                            <button class="confirm">Yes</button>
                            <button class="cancel">No</button>
                        </div>
                    `;
                    document.body.appendChild(popupContainer);

                    const confirmButton = popupContainer.querySelector('.confirm');
                    const cancelButton = popupContainer.querySelector('.cancel');

                    confirmButton.addEventListener('click', () => {
                        this.callback(true);
                        this.close(popupContainer);
                    });

                    cancelButton.addEventListener('click', () => {
                        this.callback(false);
                        this.close(popupContainer);
                    });
                }

                close(popupContainer) {
                    popupContainer.remove();
                }
            }

            // --------------- Info Cloudinary ---------------
            function toggleVisibility() {
                var elements = document.querySelectorAll('.env-list .collapsed');
                elements.forEach(function(element) {
                    if (element.style.display === 'none') {
                        element.style.display = 'block';
                    } else {
                        element.style.display = 'none';
                    }
                });

                var icon = document.getElementById('toggle-icon');
                if (icon.classList.contains('fa-chevron-down')) {
                    icon.classList.remove('fa-chevron-down');
                    icon.classList.add('fa-chevron-up');
                } else {
                    icon.classList.remove('fa-chevron-up');
                    icon.classList.add('fa-chevron-down');
                }
            }
        </script>
    </x-slot>
    @auth('admin')
        <div class="logged-in-info">
            <div class="user-icon">
                <img style="height: 80px;width:80px;border-radius:50%;" src="{{ Auth::guard('admin')->user()->avatar }}" alt="" />
            </div>
            <div class="user-details">
                <ul>
                    <li><span>Name:</span> {{ Auth::guard('admin')->user()->name }}</li>
                    <li><span>Username:</span> {{ Auth::guard('admin')->user()->username }}</li>
                </ul>
            </div>
            <div class="info-cloudinary">
                <ul class="env-list">
                    <li>
                        <span class="env-key">CLOUDINARY_URL:</span>
                        <span class="env-value">{{ env('CLOUDINARY_URL') }}</span>
                    </li>
                    <li>
                        <span class="env-key">CLOUDINARY_CLOUD_NAME:</span>
                        <span class="env-value">{{ env('CLOUDINARY_CLOUD_NAME') }}</span>
                    </li>
                    <li class="collapsed">
                        <span class="env-key">CLOUDINARY_API_KEY:</span>
                        <span class="env-value">{{ env('CLOUDINARY_API_KEY') }}</span>
                    </li>
                    <!-- Add class 'collapsed' to hide these elements initially -->
                    <li class="collapsed">
                        <span class="env-key">CLOUDINARY_API_SECRET:</span>
                        <span class="env-value">{{ env('CLOUDINARY_API_SECRET') }}</span>
                    </li>
                    <li class="collapsed">
                        <span class="env-key">CLOUDINARY_SECURE:</span>
                        <span class="env-value">{{ env('CLOUDINARY_SECURE') }}</span>
                    </li>
                    <li class="collapsed">
                        <span class="env-key">CLOUDINARY_EMAIL:</span>
                        <span class="env-value">{{ env('CLOUDINARY_EMAIL') }}</span>
                    </li>
                    <!-- Add a button to toggle the visibility of hidden elements -->
                    <li>
                        <button id="toggle-button" onclick="toggleVisibility()">
                            <i id="toggle-icon" class="fa fa-chevron-down"></i>
                        </button>                                               
                    </li>
                </ul>
            </div>
            
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
    
                <!-- Upload form -->
                <form id="uploadForm" action="{{ route('upload') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <!-- Custom file upload -->
                    <label for="file-upload" class="custom-file-upload">
                        <span>Choose File</span>
                    </label>
                    <input id="file-upload" type="file" name="file" accept="image/*" style="display: none;">
                    <img id="image-preview" src="#" alt="Preview" style="display: none;">
                    <!-- Hidden submit button -->
                    <button id="hidden-submit" type="submit">Submit</button>
                    
                </form>
                 <!-- Progress bar -->
                <div class="progress-bar-container">
                    <div class="progress-bar"></div>
                </div>
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
</x-guest-layout>
