introPageLoaded = false;
storyDivLoaded = false;
travelDivLoaded = false;
albumsSetLoaded = false;
galleryAstrahanLoaded = false;
galleryGreeceLoaded = false;
galleryAndorraLoaded = false;
galleryMinskLoaded = false;
galleryBalisingLoaded = false;
galleryPhuketLoaded = false;
galleryVeyzonaLoaded = false;
gallerySpainLoaded = false;
galleryIstambulLoaded = false;
jobDivLoaded = false;

$(document).ready(function() {

    $('#sectionWeAre').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !introPageLoaded) {
            $('#introPage').load("intro.jsp");
            $(window).resize();
            introPageLoaded = true;
        }
    });

    $('#sectionTheStory').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !storyDivLoaded) {
            $('#storyDiv').load("tgstory.jsp");
            $(window).resize();
            storyDivLoaded = true;
        }
    });

    $('#sectionTravelling').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !travelDivLoaded) {
            $('#travelDiv').load("travel.jsp");
            $(window).resize();
            travelDivLoaded = true;
        }
    });

    $('#slideAlbums').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !albumsSetLoaded) {
            $('#albumsSet').load("albums_set.jsp");
            $(window).resize();
            albumsSetLoaded = true;
        }
    });

    $('#slideAstrahan').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryAstrahanLoaded) {
            $('#galleryAstrahan').load("tgastrahan.jsp");
            $(window).resize();
            galleryAstrahanLoaded = true;
        }
    });

    $('#slideGreece').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryGreeceLoaded) {
            $('#galleryGreece').load("tggreece.jsp");
            $(window).resize();
            galleryGreeceLoaded = true;
        }
    });

    $('#slideAndorra').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryAndorraLoaded) {
            $('#galleryAndorra').load("tgandorra.jsp");
            $(window).resize();
            galleryAndorraLoaded = true;
        }
    });

    $('#slideMinsk').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryMinskLoaded) {
            $('#galleryMinsk').load("tgminsk.jsp");
            $(window).resize();
            galleryMinskLoaded = true;
        }
    });

    $('#slideBalising').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryBalisingLoaded) {
            $('#galleryBalising').load("tgbalising.jsp");
            $(window).resize();
            galleryBalisingLoaded = true;
        }
    });

    $('#slidePhuket').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryPhuketLoaded) {
            $('#galleryPhuket').load("tgphuket.jsp");
            $(window).resize();
            galleryPhuketLoaded = true;
        }
    });

    $('#slideVeyzona').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryVeyzonaLoaded) {
            $('#galleryVeyzona').load("tgveyzona.jsp");
            $(window).resize();
            galleryVeyzonaLoaded = true;
        }
    });

    $('#slideSpain').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !gallerySpainLoaded) {
            $('#gallerySpain').load("tgspain.jsp");
            $(window).resize();
            gallerySpainLoaded = true;
        }
    });

    $('#slideIstambul').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !galleryIstambulLoaded) {
            $('#galleryIstambul').load("tgIstambul.jsp");
            $(window).resize();
            galleryIstambulLoaded = true;
        }
    });

    $('#sectionJob').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !jobDivLoaded) {
            $('#jobDiv').load("job.jsp");
            $(window).resize();
            jobDivLoaded = true;
        }
    });
});


