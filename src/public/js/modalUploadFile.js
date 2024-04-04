document.addEventListener("DOMContentLoaded", function() {
    class ModalUpload {
        constructor(openButtonId, modalId) {
            this.openButton = document.getElementById(openButtonId);
            this.modal = document.getElementById(modalId);
            this.closeButton = this.modal.querySelector(".close");
            
            this.setupListeners();
        }
        
        openModal() {
            this.modal.style.display = "block";
        }

        closeModal() {
            this.modal.style.display = "none";
        }

        setupListeners() {
            this.openButton.addEventListener("click", () => {
                this.openModal();
            });

            this.closeButton.addEventListener("click", () => {
                this.closeModal();
            });

            window.addEventListener("click", (event) => {
                if (event.target == this.modal) {
                    this.closeModal();
                }
            });
        }
    }
    const modalUpload = new ModalUpload("openModalButton", "uploadModal");
});
