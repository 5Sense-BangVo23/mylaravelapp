function showTab(tabName) {
    const sections = document.querySelectorAll('.media-section');
    sections.forEach(section => {
        section.style.display = 'none';
    });
    document.getElementById(tabName).style.display = 'block';

    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(tab => {
        tab.classList.remove('active');
    });
    document.querySelector(`.tab:contains('${tabName.charAt(0).toUpperCase() + tabName.slice(1)}')`).classList.add('active');
}

function openImageModal() {
    document.getElementById("addImageModal").style.display = "block";
}

function closeImageModal() {
    document.getElementById("addImageModal").style.display = "none";
}

function openVideoModal() {
    document.getElementById("addVideoModal").style.display = "block";
}

function closeVideoModal() {
    document.getElementById("addVideoModal").style.display = "none";
}

// Close the modal when clicking outside of it
window.onclick = function(event) {
    const imageModal = document.getElementById("addImageModal");
    const videoModal = document.getElementById("addVideoModal");
    if (event.target == imageModal) {
        imageModal.style.display = "none";
    }
    if (event.target == videoModal) {
        videoModal.style.display = "none";
    }
}