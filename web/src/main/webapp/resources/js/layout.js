$(document).ready(function() {

    $('#sectionWeAre').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#introPage').load("intro.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#sectionTheStory').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#storyDiv').load("tgstory.jsp", function() {
                setTimeout(function(){
                    $(window).resize();
                }, 100);
            });
        }
    });

    $('#sectionTravelling').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#travelDiv').load("travel.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideAlbums').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#albumsSet').load("albums_set.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideAstrahan').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryAstrahan').load("tgastrahan.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideGreece').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryGreece').load("tggreece.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideAndorra').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryAndorra').load("tgandorra.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideMinsk').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryMinsk').load("tgminsk.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideBalising').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryBalising').load("tgbalising.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slidePhuket').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryPhuket').load("tgphuket.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideVeyzona').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryVeyzona').load("tgveyzona.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideSpain').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#gallerySpain').load("tgspain.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideIstambul').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryIstambul').load("tgIstambul.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideItaly').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryItaly').load("tgitaly.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideTenerife').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryTenerife').load("tgtenerife.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideFrance').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryFrance').load("tgfrance.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slidePhilippins').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryPhilippins').load("tgphilippins.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideAmsterdam').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryAmsterdam').load("tgamsterdam.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideItaly2017').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryItaly2017').load("tgitaly2017.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideAustria').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryAustria').load("tgaustria.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#slideMaldives').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#galleryMaldives').load("tgmaldives.jsp", function() {
                $(window).resize();
            });
        }
    });

    $('#sectionJob').one('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView) {
            $('#jobDiv').load("job.jsp", function() {
                $(window).resize();
            });
        }
    });
});


