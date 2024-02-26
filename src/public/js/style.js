$(document).ready(function() {
    var header = $("#stickyHeader");

    $(window).scroll(function() {
        if (window.pageYOffset > 0) {
            header.addClass("sticky");
        } else {
            header.removeClass("sticky");
        }
    });
});
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


// --------- Clock ------------
$(document).ready(function() {
    function updateClock() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();
        var day = now.getDate();
        var month = now.getMonth() + 1; // Months are 0-based
        var year = now.getFullYear();

        // Ensure two digits for hours, minutes, and seconds
        hours = hours < 10 ? '0' + hours : hours;
        minutes = minutes < 10 ? '0' + minutes : minutes;
        seconds = seconds < 10 ? '0' + seconds : seconds;
        day = day < 10 ? '0' + day : day;
        month = month < 10 ? '0' + month : month;

        var currentDate = year + '-' + month + '-' + day;
        var currentTime = hours + ':' + minutes ;//+ ':' + seconds

        $('#clock').html('<div id="date">' + currentDate + '</div><div id="time">' + currentTime + '</div>');

        // Update every second
        setTimeout(updateClock, 1000);
    }

    // Initial call to display the clock
    updateClock();
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