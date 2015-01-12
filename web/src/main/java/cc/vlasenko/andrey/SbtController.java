package cc.vlasenko.andrey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SbtController {
    @RequestMapping("/andrey/sbt.jsp")
    public String getExperiencePage(ModelMap modelMap) {
        modelMap.addAttribute("text", "../resources/text/story.txt");
        modelMap.addAttribute("exp", "sbt");
        modelMap.addAttribute("photo", "andreySbtPhoto");
        return "andrey/leftExperiencePage";
    }
}
