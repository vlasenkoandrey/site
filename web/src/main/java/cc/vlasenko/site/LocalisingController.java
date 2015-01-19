package cc.vlasenko.site;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("language")
@Controller
public class LocalisingController {

	protected String getLanguageOrDefault(ModelMap modelMap){
		return (String) modelMap.getOrDefault("language", "en");
	}

}
