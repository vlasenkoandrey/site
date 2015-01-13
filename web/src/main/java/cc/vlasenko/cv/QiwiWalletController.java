package cc.vlasenko.cv;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QiwiWalletController {
    @RequestMapping("/andrey/qiwiwallet.jsp")
    public String getExperiencePage(ModelMap modelMap) {
        modelMap.addAttribute("text", "../resources/text/story.txt");
        modelMap.addAttribute("exp", "qw");
        modelMap.addAttribute("photo", "andreyQwPhoto");
        return "andrey/leftExperiencePage";
    }
}
