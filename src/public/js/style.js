$(document).ready(function () {
    // Function to handle menu item click
    function handleMenuItemClick() {
        // Remove active class and pseudo-elements from all menu items
        $('.right .menu-item').removeClass('active');
        $('.right .menu-item::before, .right .menu-item::after').remove();

        // Add active class to the clicked menu item
        $(this).addClass('active');

        // Create and append pseudo-elements to the clicked menu item
        $(this).append('<span class="decoration-before"></span><span class="decoration-after"></span>');
    }

    // Attach click event handler to menu items
    $('.right .menu-item').click(handleMenuItemClick);

    // Trigger a click event on the "MAIN" menu item after the page is ready
    $('.right .menu-item[data-target="section-main"]').click();
});



// ------------ Banner Slides----------

$(document).ready(function () {
    var slideIndex = 0;

    function showSlide(index) {
        var translateValue = -index * 100 + '%';
        $('.banner-slides').css('transform', 'translateX(' + translateValue + ')');
    }

    function changeSlide(direction) {
        slideIndex = (slideIndex + direction + 4) % 4;
        showSlide(slideIndex);
    }

    // Auto slide change every 3 seconds
    // setInterval(function () {
    //     changeSlide(1);
    // }, 3000);

    // Click event for the previous button
    $('.prev-button').on('click', function () {
        changeSlide(-1);
    });

    // Click event for the next button
    $('.next-button').on('click', function () {
        changeSlide(1);
    });
});