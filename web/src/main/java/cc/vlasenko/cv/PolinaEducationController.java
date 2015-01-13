package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PolinaEducationController {
    @RequestMapping("/polina/msu.jsp")
    public String getEducation(ModelMap modelMap) {
        modelMap.addAttribute("text", "../resources/text/story.txt");
        modelMap.addAttribute("exp", "msu");
        modelMap.addAttribute("photo", "polinaMsuPhoto");
        return "andrey/leftExperiencePage";
    }
}
