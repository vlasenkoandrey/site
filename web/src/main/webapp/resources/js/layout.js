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

$('#sectionWeAre').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !introPageLoaded) {
        $('#introPage').load("intro.jsp");
        introPageLoaded = true;
    }
});

$('#sectionTheStory').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !storyDivLoaded) {
        $('#storyDiv').load("tgstory.jsp");
        storyDivLoaded = true;
    }
});

$('#sectionTravelling').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !travelDivLoaded) {
        $('#travelDiv').load("travel.jsp");
        travelDivLoaded = true;
    }
});

$('#slideAlbums').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !albumsSetLoaded) {
        $('#albumsSet').load("albums_set.jsp");
        albumsSetLoaded = true;
    }
});

$('#slideAstrahan').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryAstrahanLoaded) {
        $('#galleryAstrahan').load("tgastrahan.jsp");
        galleryAstrahanLoaded = true;
    }
});

$('#slideGreece').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryGreeceLoaded) {
        $('#galleryGreece').load("tggreece.jsp");
        galleryGreeceLoaded = true;
    }
});

$('#slideAndorra').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryAndorraLoaded) {
        $('#galleryAndorra').load("tgandorra.jsp");
        galleryAndorraLoaded = true;
    }
});

$('#slideMinsk').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryMinskLoaded) {
        $('#galleryMinsk').load("tgminsk.jsp");
        galleryMinskLoaded = true;
    }
});

$('#slideBalising').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryBalisingLoaded) {
        $('#galleryBalising').load("tgbalising.jsp");
        galleryBalisingLoaded = true;
    }
});

$('#slidePhuket').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryPhuketLoaded) {
        $('#galleryPhuket').load("tgphuket.jsp");
        galleryPhuketLoaded = true;
    }
});

$('#slideVeyzona').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryVeyzonaLoaded) {
        $('#galleryVeyzona').load("tgveyzona.jsp");
        galleryVeyzonaLoaded = true;
    }
});

$('#slideSpain').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !gallerySpainLoaded) {
        $('#gallerySpain').load("tgspain.jsp");
        gallerySpainLoaded = true;
    }
});

$('#slideIstambul').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !galleryIstambulLoaded) {
        $('#galleryIstambul').load("tgIstambul.jsp");
        galleryIstambulLoaded = true;
    }
});


