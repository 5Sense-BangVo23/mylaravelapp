<!-- resources/views/livewire/table.blade.php -->
<style>

    /* DataTables */
#tableWrapper {
    max-width: 1200px;
    margin: 20px auto;
    overflow-x: auto;
    max-height: 500px;
}

#dataTable {
    border-collapse: collapse;
    width: 100%;
}

#dataTable th,
#dataTable td {
    border: 1px solid #ddd;
    padding: 12px;
}

#dataTable th {
    position: sticky;
    top: 0;
    left: 0; /* Stick the first column to the left */
    background-color: #d1cccc;
    color: #333131;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
    z-index: 2; /* Ensure the header is above the first column */
}



#dataTable td:last-child ,#dataTable th:last-child {
    position: sticky;
    right: 0; /* Stick the last column to the right */
    background-color: #d1cccc; /* Match the background color of the header */
    max-width: 300px; /* Limit the maximum width of the last column */
    /* Ensure the last column is above other cells */
}

#dataTable td:first-child {
    position: sticky;
    left: 0; /* Stick the first column to the left */
    max-width: 30px;
    background-color: #efefef; /* Match the background color of the header */
    z-index: 1; /* Ensure the first column is below the header */
}

/* #dataTable td:nth-child(1),
#dataTable th:nth-child(1) {
    left: 0;
    max-width: 100px;
} */

/* Reset z-index for other columns */
/* Reset z-index for other columns */
#dataTable td:not(:first-child):not(:last-child),
#dataTable th:not(:first-child):not(:last-child) {
    z-index: 0;
}


#dataTable a {
    color: #333131;
    text-decoration: none;
    transition: color 0.3s ease;
    cursor: pointer;
}

#dataTable a:hover {
    color: #7ea9d6;
}

#dataTable tbody tr:nth-child(even) {
    background-color: #f9f9f9;
}

#dataTable tbody tr:hover {
    background-color: #f0f0f0;
}

/* Overlay */
#overlay {
    display: none;
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background-color: rgba(0, 0, 0, 0.5); /* Một lớp mờ đen */
    z-index: 999; /* Lớp overlay ở trên cùng */
}

/* Modal */
#modal {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    z-index: 1000; /* Lớp modal nằm trên overlay */
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    width: 800px;
    height: 600px;
}

#modal-image{
    max-width: 100%;
    max-height: 100%;
}

/* Close button */
.close {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
}
/* ------------------------------ */
.overlay-delete {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: 9998;
    display: none; /* Ẩn overlay ban đầu */
}

.popup-delete {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    z-index: 9999;
    display: none; /* Ẩn popup ban đầu */
    animation: fadeInUp 0.3s ease forwards; /* Hiệu ứng hiển thị */
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translate(-50%, -60%);
    }
    to {
        opacity: 1;
        transform: translate(-50%, -50%);
    }
}

.popup-delete button {
    margin-right: 10px;
    padding: 10px 20px;
    cursor: pointer;
    border: none;
    border-radius: 3px;
    font-size: 16px;
    transition: background-color 0.3s ease;
}

.popup-delete button:hover {
    background-color: #f0f0f0;
}

.popup-delete button.yes {
    background-color: #dc3545;
    color: #fff;
}

.popup-delete button.no {
    background-color: #007bff;
    color: #fff;
}

.popup-delete h2 {
    margin-top: 0;
    color: #333;
    font-size: 24px;
}

.popup-delete p {
    margin-bottom: 15px;
    color: #555;
    font-size: 18px;
}

.popup-delete i {
    font-size: 36px; 
    margin-bottom: 20px; 
    color: #dc3545;
    display: block; 
    margin-left: auto; 
    margin-right: auto;
}

#noDataAvailableRow {
    display: none;
}
.delete {
    background-color: transparent;
    border: none;
    cursor: pointer;
    padding: 0;
}

.delete i {
    color: #046ca4; 
    font-size: 18px;
}
</style>
<div id="tableWrapper" style="position: relative;">
    <table id="dataTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Medially Type</th>
                <th>Medially ID</th>
                <th>File URL
                    <span style="display: inline-block; margin-left: 10px;">
                        <select id="selectOption" onchange="showContent(this)">
                            <option value="url">URL</option>
                            <option value="image">Image</option>
                        </select>
                    </span>
                </th>

                <th>File Name</th>
                <th>File Type</th>
                <th>Size</th>
                <th>Created At</th>
                <th>Updated At</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            @if(!is_null($data) && count($data) > 0)
            @foreach($data as $row)
                <tr data-id="{{ $row->id }}">
                    <td>{{ $row->id }}</td>
                    <td>{{ $row->medially_type }}</td>
                    <td>{{ $row->medially_id }}</td>
                    <td>
                         <select id="selectOption" onchange="showContent(this)">
                            <option value="url">URL</option>
                                <option value="image">Image</option>
                        </select>
                        <div class="content">
                            <a class="url" href="{{ $row->file_url }}" style="display: none;">{{ $row->file_url }}</a>
                            <img class="image" src="{{ $row->file_url }}" style="max-width: 100px; max-height: 100px; display: none; cursor:pointer;">
                        </div>
                        {{-- <a href="{{ $row->file_url }}">{{ $row->file_url }}</a> --}}
                    </td>
                    <td>{{ $row->file_name }}</td>
                    <td>{{ $row->file_type }}</td>
                    <td>{{ $row->size }}</td>
                    <td>{{ $row->created_at }}</td>
                    <td>{{ $row->updated_at }}</td>
                    <td>
                        <div class="button-container">
                            {{-- <button class="view" id="{{ $row->id }}">View</button> --}}
                            <button class="delete" id="{{ $row->id}}" data-id="{{ $row->id }}">
                                <i class="fa fa-trash"></i>
                            </button>    
                        </div>
                    </td>
                </tr>
            @endforeach
            @else
                <tr id="noDataAvailableRow" style="display: table-row;">
                    <td colspan="10">No data available.</td>
                </tr>
            @endif
        </tbody>
    </table>

    <div id="overlay"></div>
    <div id="modal">
        <span class="close">&times;</span>
        <img id="modal-image" src="" alt="Modal Image">
    </div>

    
</div>

<script>
 
 document.addEventListener("DOMContentLoaded", function() {
    var deleteButtons = document.querySelectorAll('.delete');
    var popup;
    var overlay;
    var isPopupVisible = false;

    deleteButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            var id = this.getAttribute('id');
            var itemId = this.getAttribute('data-id');
            
            overlay = document.createElement('div');
            overlay.className = 'overlay-delete';
            overlay.addEventListener('click', function() {
                if (isPopupVisible) {
                    document.body.removeChild(overlay);
                    document.body.removeChild(popup);
                    isPopupVisible = false;
                }
            });

            popup = document.createElement('div');
            popup.className = 'popup-delete';

            var icon = document.createElement('i');
            icon.className = 'fa fa-trash';
            popup.appendChild(icon);

            var content = document.createElement('p');
            content.innerText = 'Are you sure you want to delete this item?';
            popup.appendChild(content);

            var confirmButton = document.createElement('button');
            confirmButton.innerText = 'Yes';
            confirmButton.className = 'yes'; 
       
            confirmButton.addEventListener('click', function() {
                if (isPopupVisible) {
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

                        updateTableAfterDeletion(id);
                        updateNoDataAvailableRow(); 

                        document.body.removeChild(overlay);
                        document.body.removeChild(popup);
                        isPopupVisible = false;
                    })
                    .catch(error => {
                        document.body.removeChild(overlay);
                        document.body.removeChild(popup);
                        isPopupVisible = false;
                    });
                }
            });


            var cancelButton = document.createElement('button');
            cancelButton.innerText = 'No';
            cancelButton.className = 'no';
            cancelButton.addEventListener('click', function() {
                if (isPopupVisible) {
                    document.body.removeChild(overlay);
                    document.body.removeChild(popup);
                    isPopupVisible = false;
                }
            });

            popup.appendChild(confirmButton);
            popup.appendChild(cancelButton);

            document.body.appendChild(overlay);
            document.body.appendChild(popup);

            overlay.style.display = 'block';
            popup.style.display = 'block';
            isPopupVisible = true;
        });
    });
});

function updateNoDataAvailableRow() {
    var noDataAvailableRow = document.getElementById('noDataAvailableRow');
    if (document.querySelectorAll('.delete').length === 0) {
        noDataAvailableRow.style.display = 'table-row';
    } else {
        noDataAvailableRow.style.display = 'none';
    }
}

function updateTableAfterDeletion(deletedItemId) {
    const tableRowToDelete = document.querySelector(`#dataTable tbody tr[data-id="${deletedItemId}"]`);
    if (tableRowToDelete) {
        tableRowToDelete.remove(); 
    }
}


function createOverlay() {
    const overlay = document.createElement('div');
    overlay.style.position = 'absolute';
    overlay.style.top = 0;
    overlay.style.left = 0;
    overlay.style.width = '100%';
    overlay.style.height = '100%';
    overlay.style.backgroundColor = 'rgba(0, 0, 0, 0.1)'; 
    overlay.style.zIndex = 1000; 
    overlay.addEventListener('click', function(event) {
        event.stopPropagation();
    });
    return overlay;
}

  document.addEventListener('DOMContentLoaded', function() {
        const selectedOption = localStorage.getItem('selectedOption'); 

        const content = document.querySelector('.content');
        const url = content.querySelector('.url');
        const image = content.querySelector('.image');
        const selectOption = document.querySelector('#selectOption');

        if (selectedOption) {
            selectOption.value = selectedOption; 
        }

        displayContent(selectOption.value); 

        selectOption.addEventListener('change', function() {
            localStorage.setItem('selectedOption', this.value); 
            displayContent(this.value); 
        });

        function displayContent(option) {
            const contents = document.querySelectorAll('.content');
            contents.forEach(content => {
                const url = content.querySelector('.url');
                const image = content.querySelector('.image');

                if (option === 'url') {
                    url.style.display = 'inline';
                    image.style.display = 'none';
                } else if (option === 'image') {
                    url.style.display = 'none';
                    image.style.display = 'inline';
                }
            });

            const selects = document.querySelectorAll('select');
            selects.forEach(select => {
                select.value = option;
            });
        }


    });

    function showContent(select) {
        const option = select.value;
        const content = select.parentElement.querySelector('.content');
        if (!content) {
            return;
        }
        
        const url = content.querySelector('.url');
        const image = content.querySelector('.image');

        if (option === 'url') {
            if (url) url.style.display = 'inline';
            if (image) image.style.display = 'none';
        } else if (option === 'image') {
            if (url) url.style.display = 'none';
            if (image) image.style.display = 'inline';
        }

        if (select.value === select.options[0].value) {
            if (url) url.style.display = 'inline';
            if (image) image.style.display = 'none';
        } else {
            if (url) url.style.display = 'none';
            if (image) image.style.display = 'inline';
        }
    }


    document.addEventListener('DOMContentLoaded', function() {
    const images = document.querySelectorAll('.image');
    const overlay = document.getElementById('overlay');
    const modal = document.getElementById('modal');
    const modalImage = document.getElementById('modal-image');
    const closeBtn = document.querySelector('#modal .close');


    images.forEach(image => {
        image.addEventListener('click', function() {
            const imageUrl = this.getAttribute('src');
            modalImage.src = imageUrl;
            overlay.style.display = 'block';
            modal.style.display = 'block';
        });
    });

    closeBtn.addEventListener('click', closeModal);
    overlay.addEventListener('click', closeModal);

    function closeModal(event) {
        if (event.target === closeBtn) {
            overlay.style.display = 'none';
            modal.style.display = 'none';
        }
    }



});


</script>