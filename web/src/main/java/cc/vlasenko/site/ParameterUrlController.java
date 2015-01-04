package cc.vlasenko.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ParameterUrlController {

	@RequestMapping("/go/{url}.jsp")
	public String getLayout(@PathVariable("url") String url) {
		return url;
	}


}
