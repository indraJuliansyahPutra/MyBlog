$(document).ready(function() {
    $(".post-thumb").hover(function() {
        $(this).animate({ opacity: 0.5 }, 300);
    }, function() {
        $(this).animate({ opacity: 1 }, 300);
    });
});