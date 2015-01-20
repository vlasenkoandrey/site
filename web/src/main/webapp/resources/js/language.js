function setLanguage() {
    var languageSelect = document.getElementById('selectedLanguage').value;
    $.post('language/set', {vlanguage: languageSelect });
    location.reload();

}

languageSelectorLoaded = false;
function detectLanguage() {
    if (!languageSelectorLoaded) {
        var boxValue = null;
        $.post('language/get', function (result) {
            boxValue = result;
            if (boxValue != 'en' && boxValue != 'ru') {
                //first load
                boxValue = 'en';
                var userLang = navigator.language || navigator.userLanguage;
                if (userLang != null && userLang.match(/.*en.*/)) {
                    boxValue = 'en';
                } else if (userLang != null && userLang.match(/.*ru.*/)) {
                    boxValue = 'ru'
                }
                $.post('language/set', {vlanguage: boxValue});
                if (boxValue =='ru') {
                    //по умолчанию английский, поэтому перезагружаем
//                    location.reload();
                }
            }
            $("select#selectedLanguage").val(boxValue);
            languageSelectorLoaded = true;
        });
    }
}