package cc.vlasenko.site;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class LanguageController extends LocalisingController {

	@RequestMapping("/language/set")
	@ResponseStatus(value = HttpStatus.OK)
	public void setLanguage(ModelMap modelMap, @RequestParam("vlanguage") String vlanguage) {
		if (!StringUtils.isEmpty(vlanguage)) {
			modelMap.addAttribute("vlanguage", vlanguage);
		}
	}

	@RequestMapping("/language/get")
	@ResponseStatus(value = HttpStatus.OK)
	@ResponseBody
	public String getLanguage(ModelMap modelMap) {
		return  (String) modelMap.get("vlanguage");
	}

}
