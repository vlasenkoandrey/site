package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QiwiLeadController {
    @RequestMapping("/polina/qiwilead.jsp")
    public String getQiwiLead(ModelMap modelMap) {
        modelMap.addAttribute("text", "../resources/text/story.txt");
        modelMap.addAttribute("exp", "qiwilead");
        modelMap.addAttribute("photo", "polinaQiwiLeadPhoto");
        return "andrey/rightExperiencePage";
    }
}
