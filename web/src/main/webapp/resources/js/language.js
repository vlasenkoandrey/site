function setLanguage() {
    var languageSelect = document.getElementById('selectedLanguage').value;
 //   $.post('language/set', {vlanguage: languageSelect });
   // location.reload();
}

function detectLanguage() {
    var boxValue = null;
    $.get('language/get', function (result) {
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
                    $.post('language/set');
                }
     })

     return boxValue;

}

function loadLanguage() {
        var boxValue = detectLanguage();
        var curValue = $("select#selectedLanguage").val();
        if(boxValue && boxValue != curValue ) {
            $("select#selectedLanguage").val(boxValue);
            location.reload();
        }
}