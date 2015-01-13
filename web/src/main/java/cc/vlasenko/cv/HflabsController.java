package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HflabsController {
    @RequestMapping("/andrey/hflabs.jsp")
    public String getExperiencePage(ModelMap modelMap) {
        modelMap.addAttribute("text", "../resources/text/story.txt");
        modelMap.addAttribute("exp", "hflabs");
        modelMap.addAttribute("photo", "andreyHflabsPhoto");
        return "andrey/rightExperiencePage";
    }
}
