document.addEventListener("DOMContentLoaded", function() {
    var form = document.querySelector(".register-form");

    if (form) {
        form.addEventListener("submit", function(event) {
            var nameInput = form.querySelector("#name");
            var emailInput = form.querySelector("#email");
            var passwordInput = form.querySelector("#password");
            var confirmPasswordInput = form.querySelector("#password_confirmation");

            if (nameInput.value.trim() === "") {
                alert("Please enter your name.");
                event.preventDefault();
            } else if (emailInput.value.trim() === "") {
                alert("Please enter your email.");
                event.preventDefault();
            } else if (passwordInput.value.trim() === "") {
                alert("Please enter your password.");
                event.preventDefault();
            } else if (passwordInput.value !== confirmPasswordInput.value) {
                alert("Passwords do not match.");
                event.preventDefault();
            }
        });
    }
});
