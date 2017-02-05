$(document).ready(function(){
    $("#portfolio-contant-active").mixItUp();

    $("#testimonial-slider").owlCarousel({
        paginationSpeed : 500,
        singleItem:true,
        autoPlay: 3000,
    });

    $("#client-logos").owlCarousel({
        navigation: true,
        items: 10,
        loop: true,
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        margin: 20,
        nav: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 6
            }
        }
    });

    $("#works-logo").owlCarousel({
        autoPlay: 3000,
        items: 5,
        itemsDesktop: [1199,5],
        itemsDesktopSmall: [979,5]
    });

    $('.counter').counterUp({
        delay: 10,
        time: 1000
    });
});
