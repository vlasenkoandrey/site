function shareGoog() {
    var url = window.location.href;
    window.location.href = "https://plus.google.com/share?url=" + url;
}

function shareFb() {
    var url = window.location.href;
    var fbShareUrl = "https://www.facebook.com/dialog/feed?app_id=1534328526837006&link=" + url +
        "&name=Vlasenko%20Family%20Site&caption=Vlasenko%20Family%20Site@description=Description" + "&redirect_uri=" + url;
    window.location.href = fbShareUrl;
}

function tweet() {
    window.location.href = "https://twitter.com/share?hashtags=familyvlasenko";
}

function shareLinkedin(title) {
    var url = window.location.href;
    var lnShareUrl = "http://www.linkedin.com/shareArticle?url=" + "http://vk.com" + "&title=" + title;
    window.location.href = lnShareUrl;
}

function shareVk() {
    var url = window.location.href;
    window.location.href = "http://vk.com/share.php?url=" + url;
}