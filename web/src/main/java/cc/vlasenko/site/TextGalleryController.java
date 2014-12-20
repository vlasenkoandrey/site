package cc.vlasenko.site;

import cc.vlasenko.site.model.ImageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import static java.util.Arrays.asList;

@Controller
public class TextGalleryController {

    @RequestMapping("/story.jsp")
    public String getStory(ModelMap modelMap) {
        modelMap.addAttribute("text", "BlaBlaBlaBla");
        modelMap.addAttribute("videos", asList("http://www.youtube.com/watch?v=mrzRqDeZ4r8"));
        modelMap.addAttribute("images", asList(
                new ImageBean("../resources/img/4-old-brick-background-sml.jpg", "../resources/img/4-old-brick-background-sml.jpg"),
                new ImageBean("../resources/img/daisy-grass-repeating-background.jpg", "../resources/img/daisy-grass-repeating-background.jpg")
        ));
        return "gallery";
    }
}
