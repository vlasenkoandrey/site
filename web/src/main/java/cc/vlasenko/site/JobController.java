package cc.vlasenko.site;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import static cc.vlasenko.site.ResourceResolver.URL_PREFIX_TEXT;

@Controller
public class JobController {
    @RequestMapping("/job.jsp")
    public String getJobPage(ModelMap modelMap) {
        modelMap.addAttribute("text", URL_PREFIX_TEXT + "story.txt");
        return "job";
    }
}
