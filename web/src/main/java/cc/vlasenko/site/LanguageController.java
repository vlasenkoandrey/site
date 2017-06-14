package cc.vlasenko.site;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/lang")
public class LanguageController extends LocalisingController {

	@RequestMapping(value = "/set", method = RequestMethod.POST)
	@ResponseStatus(value = HttpStatus.OK)
	@ResponseBody
	public String setLanguage(ModelMap modelMap, @RequestParam("vlanguage") String vlanguage) {
		if (!StringUtils.isEmpty(vlanguage)) {
			modelMap.addAttribute("vlanguage", vlanguage);
		}
		return  (String) modelMap.get("vlanguage");
	}


	@RequestMapping(value = "/get")
	@ResponseStatus(value = HttpStatus.OK)
	@ResponseBody
	public String getLanguage(ModelMap modelMap) {
		return  (String) modelMap.get("vlanguage");
	}

}
