package cc.vlasenko.andrey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EducationController {
    @RequestMapping("/andrey/msu.jsp")
    public String getEducation(ModelMap modelMap) {
        modelMap.addAttribute("text", "../resources/text/story.txt");
        modelMap.addAttribute("exp", "msu");
        modelMap.addAttribute("photo", "andreyMsuPhoto");
        return "andrey/rightExperiencePage";
    }
}
