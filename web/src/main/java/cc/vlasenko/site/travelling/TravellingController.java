package cc.vlasenko.site.travelling;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.Locale;

import static cc.vlasenko.site.ResourceResolver.URL_PREFIX_TEXT;

@SessionAttributes(types = Locale.class)
@Controller
public class TravellingController {
	private final static String TRAVELLING_URL_PREFIX = "travelling/";
	private final TravellingTextContainer container;

	@Autowired
	public TravellingController(TravellingTextContainer container) {
		this.container = container;
	}

	@RequestMapping("/travel.jsp")
	public String getTravellingLayout(ModelMap modelMap, Locale locale) {
		String path = container.get(locale);
		if (StringUtils.isEmpty(path)) {
			path = "en";
		}
		modelMap.addAttribute("text", URL_PREFIX_TEXT + TRAVELLING_URL_PREFIX + path + "/story.txt");
		return "travel";
	}

}
