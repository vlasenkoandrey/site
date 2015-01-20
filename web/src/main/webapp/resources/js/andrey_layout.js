skillsPageLoaded = false;
educationPageLoaded = false;
sbtPageLoaded = false;
hflabsPageLoaded = false;
qiwiWalletPageLoaded = false;

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

    $('#slideSbt').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !sbtPageLoaded) {
            $('#sbtPage').load("sbt.jsp");
            $(window).resize();
            sbtPageLoaded = true;
        }
    });

    $('#slideHflabs').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !hflabsPageLoaded) {
            $('#hflabsPage').load("hflabs.jsp");
            $(window).resize();
            hflabsPageLoaded = true;
        }
    });

    $('#slideQiwiWallet').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
        if (isInView && !qiwiWalletPageLoaded) {
            $('#qiwiWalletPage').load("qiwiwallet.jsp");
            $(window).resize();
            qiwiWalletPageLoaded = true;
        }
    });
});