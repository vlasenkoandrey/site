skillsPageLoaded = false;
educationPageLoaded = false;
sbtPageLoaded = false;

$('#sectionSkills').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !skillsPageLoaded) {
        $('#skillsPage').load("skills.jsp");
        skillsPageLoaded = true;
    }
});

$('#sectionEducation').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !educationPageLoaded) {
        $('#educationPage').load("msu.jsp");
        educationPageLoaded = true;
    }
});

$('#slideSbt').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !sbtPageLoaded) {
        $('#sbtPage').load("sbt.jsp");
        sbtPageLoaded = true;
    }
});