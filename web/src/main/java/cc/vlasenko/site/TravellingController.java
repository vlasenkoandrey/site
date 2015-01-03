package cc.vlasenko.site;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import static cc.vlasenko.site.ResourceResolver.URL_PREFIX_TEXT;

@Controller
public class TravellingController {

    @RequestMapping("/travel.jsp")
    public String getTravellingLayout(ModelMap modelMap) {
        modelMap.addAttribute("text", URL_PREFIX_TEXT + "story.txt");
        return "travel";
    }

}
