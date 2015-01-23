package cc.vlasenko.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

    @RequestMapping("/index.jsp")
    public String getLayout() {
        return "layout";
    }

	@RequestMapping("/cake.jsp")
	public String getCake() {
		return "cake";
	}
}
