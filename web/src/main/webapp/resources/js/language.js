function language() {
    var languageSelect = document.getElementById('selectedLanguage').value;
    $.post('language/set', {language: languageSelect });

}

languageSelectorLoaded = false;
function detectLanguage() {
    if (!languageSelectorLoaded) {
        var userLang = navigator.language || navigator.userLanguage;
        var boxValue = 'en';
        if (userLang == 'en' || userLang == 'ru') {
            boxValue = userLang;
        }
        $("select#selectedLanguage").val('ru').value = 'true';
        $.post('language/set', {language: userLang});
        languageSelectorLoaded = true;
    }
}