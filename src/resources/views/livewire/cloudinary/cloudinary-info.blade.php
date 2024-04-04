<style>
    /* Apply styles to the list items */
.info-cloudinary ul.env-list {
    list-style: none;
    padding: 0;
}

.info-cloudinary ul.env-list li {
    margin-bottom: 10px; /* Add some spacing between list items */
}

/* Apply styles to the key-value pairs */
.env-key {
    font-weight: bold; /* Make keys bold */
    margin-right: 5px; /* Add some space between key and value */
}

/* Initially hide the collapsed list items */
.collapsed {
    display: none;
}

/* Style the toggle button */
#toggle-button {
    background: none;
    border: none;
    cursor: pointer;
}

/* Style the toggle icon */
#toggle-icon {
    transition: transform 0.3s ease; /* Add a smooth transition for the icon rotation */
}

/* Rotate the toggle icon when the list is expanded */
.expanded #toggle-icon {
    transform: rotate(180deg);
}
</style>
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