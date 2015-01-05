package cc.vlasenko.andrey;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SkillsController {
    @RequestMapping("/andrey/skills.jsp")
    public String getSkillsPage() {
        return "andrey/skills";
    }
}
