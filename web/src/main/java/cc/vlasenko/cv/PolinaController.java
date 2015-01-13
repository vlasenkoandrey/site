package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PolinaController {
    @RequestMapping("/polina/index.jsp")
    public String getPolinaLayout() {
        return "polina/cv_layout";
    }
}
