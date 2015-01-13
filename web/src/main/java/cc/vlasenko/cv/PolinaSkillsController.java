package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class PolinaSkillsController {
    @Resource(name = "polinaSkills")
    private List<String> skills;

    public void setSkills(List<String> skills) {
        this.skills = skills;
    }

    @RequestMapping("/polina/skills.jsp")
    public String getSkillsPage(ModelMap modelMap) {
        modelMap.addAttribute("skills", skills);
        return "polina/skills";
    }
}
