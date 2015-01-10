introPageLoaded = false;
storyDivLoaded = false;
travelDivLoaded = false;
albumsSetLoaded = false;
galleryAstrahanLoaded = false;
galleryGreeceLoaded = false;

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
        $('#albumsSet').load("go/albums_set.jsp");
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
