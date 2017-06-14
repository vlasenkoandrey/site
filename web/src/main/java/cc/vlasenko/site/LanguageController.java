package cc.vlasenko.site;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

@Controller
public class LanguageController extends LocalisingController {

	@RequestMapping(value = "/language/set")
	@ResponseStatus(value = HttpStatus.OK)
	public void setLanguage(ModelMap modelMap//, @RequestParam("vlanguage") String vlanguage
							 ) {
		String vlanguage = null;
		if (!StringUtils.isEmpty(vlanguage)) {
			modelMap.addAttribute("vlanguage", vlanguage);
		}
	}

	@RequestMapping(value = "/language/get")
	@ResponseStatus(value = HttpStatus.OK)
	@ResponseBody
	public String getLanguage(ModelMap modelMap) {
		return  (String) modelMap.get("vlanguage");
	}

}
