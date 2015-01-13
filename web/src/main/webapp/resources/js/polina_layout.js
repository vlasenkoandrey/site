skillsPageLoaded = false;
educationPageLoaded = false;
qiwiLeadPageLoaded = false;

$('#sectionSkills').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView && !skillsPageLoaded) {
        $('#skillsPage').load("skills.jsp");
        skillsPageLoaded = true;
    }
});

//$('#sectionEducation').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
//    if (isInView && !educationPageLoaded) {
//        $('#educationPage').load("msu.jsp");
//        educationPageLoaded = true;
//    }
//});
//
//$('#slideQiwiLead').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
//    if (isInView && !qiwiLeadPageLoaded) {
//        $('#qiwiLeadPage').load("qiwilead.jsp");
//        qiwiLeadPageLoaded = true;
//    }
//});