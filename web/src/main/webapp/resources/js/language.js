function setLanguage() {
    var languageSelect = document.getElementById('selectedLanguage').value;
    $.post('lang/set', {vlanguage: languageSelect });
    location.reload();
}

function loadLanguage(changeSelect) {
    var boxValue = null;
    $.get('lang/get', function (result) {
                boxValue = result;
                if (boxValue != 'en' && boxValue != 'ru') {
                    boxValue = 'en';
                    var userLang = navigator.language || navigator.userLanguage;
                    if (userLang != null && userLang.match(/.*en.*/)) {
                        boxValue = 'en';
                    } else if (userLang != null && userLang.match(/.*ru.*/)) {
                        boxValue = 'ru'
                    }
                    $.post('lang/set', {vlanguage: languageSelect });
                }
                if(changeSelect){
                    changeSelectField(boxValue);
                }
     })
}

function changeSelectField(boxValue) {
        var curValue = $("select#selectedLanguage").val();
        if(boxValue && boxValue != curValue ) {
            $("select#selectedLanguage").val(boxValue);
        }
}