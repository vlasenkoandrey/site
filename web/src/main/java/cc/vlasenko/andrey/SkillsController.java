package cc.vlasenko.andrey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class SkillsController {
    @Resource(name = "andreySkills")
    private List<String> skills;

    public void setSkills(List<String> skills) {
        this.skills = skills;
    }

    @RequestMapping("/andrey/skills.jsp")
    public String getSkillsPage(ModelMap modelMap) {
        modelMap.addAttribute("skills", skills);
        return "andrey/skills";
    }
}
