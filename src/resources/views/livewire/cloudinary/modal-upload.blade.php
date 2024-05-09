<style>
    /* Modal styles */
    .modal-container {
        display: none;
        position: fixed;
        z-index: 1000;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0,0,0,0.5);
        animation: fadeIn 0.3s ease;
    }

    .modal-content {
        background-color: #fefefe;
        margin: 10% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-width: 600px;
        position: relative;
        border-radius: 5px;
        animation: slideIn 0.3s ease;
    }

    .close {
        position: absolute;
        right: 10px;
        top: 5px;
        color: #aaa;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
    }

.close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }

    .custom-file-upload {
        display: inline-block;
        padding: 10px 15px;
        cursor: pointer;
        background-color: #007bff;
        color: white;
        border-radius: 5px;
        text-align: center;
        transition: background-color 0.3s;
    }

    .custom-file-upload:hover {
        background-color: #0056b3;
    }

    .image-preview-group {
        text-align: center;
        margin-top: 20px;
    }

    #image-preview {
        max-width: 100%;
        height: auto;
    }

    #hidden-submit {
        display: block;
        margin: 20px auto;
        padding: 10px 15px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    #hidden-submit:hover {
        background-color: #45a049;
    }

    .progress-bar-container {
        margin-top: 20px;
    }

    .progress-bar {
        width: 100%;
        height: 20px;
        background-color: #f1f1f1;
        border-radius: 5px;
    }

    /* Define fadeIn animation */
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    /* Define slideOut animation */
    @keyframes slideIn {
        from {
            opacity: 0;
            transform: translateY(-50px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

   .modal-content{
        display: none;
   }

   #openModalButton {
        display: flex;
        padding: 10px 20px;
        background-color: #9a9ea1;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s, transform 0.3s;
        align-items: center;
        justify-content: center;
        align-content: center;
        flex-wrap: nowrap;
        flex-direction: row;
        margin: 20px auto;
    }

    #openModalButton:hover {
        background-color: #656e77; 
        transform: translateY(-2px);
    }
</style>


<button type="button" id="openModalButton">Upload</button>
<div class="modal-container" id="uploadModal">
    <!-- Modal content -->
    <div class="modal-content">
        <!-- Close button -->
        <span class="close">&times;</span>

        <!-- Upload form -->
        <form id="uploadForm" action="{{ route('upload') }}" method="POST" enctype="multipart/form-data">
            @csrf
            {{-- @cloudinaryJS --}}
            <!-- Custom file upload -->
            <div class="file-upload-group">
                <label for="file-upload" class="custom-file-upload">
                    <span>Choose File</span>
                    {{-- <x-cld-upload-button>
                        Upload Files
                    </x-cld-upload-button> --}}
                </label>
                <input id="file-upload" type="file" wire:model="file" name="file" style="display: none;">
                {{-- <x-cld-image public-id="{{ $public_id }}" width="300" height="300"></x-cld-image> --}}

                {{-- <x-cld-video public-id="{{ $public_id }}"></x-cld-video>  --}}
            </div>

            <!-- Image preview -->
            <div class="image-preview-group" style="display: none;">
                <img id="image-preview" src="#" alt="Preview" width="300" height="auto">
                <p id="file-name"></p>
            </div>

            <!-- Hidden submit button -->
            <div class="submit-button-group" style="display: none;">
                <button id="hidden-submit" type="submit">Submit</button>
            </div>
        </form>
        <!-- Progress bar -->
        <div class="progress-bar-container">
            <div class="progress-bar"></div>
        </div>
    </div>
</div>

<script>
   document.addEventListener("DOMContentLoaded", function() {
   
    document.getElementById("openModalButton").addEventListener("click", function() {
        document.querySelector(".modal-container").style.display = "block";
        document.querySelector(".modal-content").style.display = "block";
    });

   
    const fileUpload = document.getElementById("file-upload");
    fileUpload.addEventListener("change", function(event) {
        const fileList = event.target.files;

        if (fileList.length > 0) {
            const selectedFile = fileList[0];
            const imageUrl = URL.createObjectURL(selectedFile);
            const fileName = selectedFile.name;

            
            document.getElementById("image-preview").src = imageUrl;
            
            document.querySelector(".image-preview-group").style.display = "block";
            document.getElementById("file-name").innerText = "Tên tệp gốc: " + fileName;
            document.getElementById("file-name").style.display = "block";
           
            document.querySelector(".submit-button-group").style.display = "block";
        }
    });
});

</script>
