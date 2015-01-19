package cc.vlasenko.site.travelling;

import cc.vlasenko.site.LocalisingController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import static cc.vlasenko.site.ResourceResolver.URL_PREFIX_TEXT;

@Controller
public class TravellingController extends LocalisingController{
	private final static String TRAVELLING_URL_PREFIX = "travelling/";
	private final TravellingTextContainer container;

	@Autowired
	public TravellingController(TravellingTextContainer container) {
		this.container = container;
	}

	@RequestMapping("/travel.jsp")
	public String getTravellingLayout(ModelMap modelMap) {
		String path = container.get(getLanguageOrDefault(modelMap));
		if (StringUtils.isEmpty(path)) {
			path = "en";
		}
		modelMap.addAttribute("text", URL_PREFIX_TEXT + TRAVELLING_URL_PREFIX + path + "/story.txt");
		return "travel";
	}

}
