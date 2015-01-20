skillsPageLoaded = false;
educationPageLoaded = false;
qiwiLeadPageLoaded = false;
qiwiPageLoaded = false;

$(document).ready(function() {
    $('#sectionSkills').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !skillsPageLoaded) {
            $('#skillsPage').load("skills.jsp");
            $(window).resize();
            skillsPageLoaded = true;
        }
    });

    $('#sectionEducation').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !educationPageLoaded) {
            $('#educationPage').load("msu.jsp");
            $(window).resize();
            educationPageLoaded = true;
        }
    });

    $('#slideQiwiLead').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !qiwiLeadPageLoaded) {
            $('#qiwiLeadPage').load("qiwilead.jsp");
            $(window).resize();
            qiwiLeadPageLoaded = true;
        }
    });

    $('#slideQiwi').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !qiwiPageLoaded) {
            $('#qiwiPage').load("qiwi.jsp");
            $(window).resize();
            qiwiPageLoaded = true;
        }
    });
});