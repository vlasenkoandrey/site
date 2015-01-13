package cc.vlasenko.cv;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AndreyController {
    @RequestMapping("/andrey/index.jsp")
    public String getLayout() {
        return "andrey/cv_layout";
    }
}
