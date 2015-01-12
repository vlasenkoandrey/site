package cc.vlasenko.site;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("language")
@Controller
public class LocalisingController {

	@ModelAttribute("language")
	public String language(){
		return "fr";
	}

	protected String getLanguage(ModelMap modelMap){
		return (String) modelMap.getOrDefault("language", "en");
	}

}
