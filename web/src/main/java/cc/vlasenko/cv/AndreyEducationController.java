package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AndreyEducationController {
    @RequestMapping("/andrey/msu.jsp")
    public String getEducation(ModelMap modelMap) {
        modelMap.addAttribute("text", "/static/text/andrey/msu.txt");
        modelMap.addAttribute("exp", "msu");
        modelMap.addAttribute("photo", "andreyMsuPhoto");
        return "andrey/rightExperiencePage";
    }
}
