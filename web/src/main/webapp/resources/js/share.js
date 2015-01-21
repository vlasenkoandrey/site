function shareGoog(url) {
    url = encodeURIComponent(url);
    window.location.href = "https://plus.google.com/share?url=" + url;
}

function shareFb(url, appId, name, caption) {
    url = encodeURIComponent(url);
    var fbShareUrl = "https://www.facebook.com/dialog/feed?app_id=" + appId + "&link=" + url +
        "&name=" + encodeURIComponent(name) + "&caption=" + encodeURIComponent(caption) + "&redirect_uri=" + url;
    window.location.href = fbShareUrl;
}

function tweet(hashtag) {
    window.location.href = "https://twitter.com/share?hashtags=" + hashtag;
}

function shareLinkedin(url, title) {
    url = encodeURIComponent(url);
    var lnShareUrl = "http://www.linkedin.com/shareArticle?url=" + url + "&title=" + title;
    window.location.href = lnShareUrl;
}

function shareVk(url, img) {
    url = encodeURIComponent(url);
    window.location.href = "http://vk.com/share.php?url=" + url + "&image=" + encodeURIComponent(img);
}