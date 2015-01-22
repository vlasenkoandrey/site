package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QiwiController {
    @RequestMapping("/polina/qiwi.jsp")
    public String getQiwiLead(ModelMap modelMap) {
        modelMap.addAttribute("text", "../resources/text/polina/ru/qiwidev.txt");
        modelMap.addAttribute("exp", "qiwi");
        modelMap.addAttribute("photo", "polinaQiwiPhoto");
        return "andrey/leftExperiencePage";
    }
}
