package cc.vlasenko.site;

import cc.vlasenko.site.model.ImageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import static java.util.Arrays.asList;

@Controller
public class TextGalleryController {

    @RequestMapping("/story.jsp")
    public String getStory(ModelMap modelMap) throws IOException {
        modelMap.addAttribute("text", "../resources/text/story.txt");
        modelMap.addAttribute("videos", asList("http://www.youtube.com/watch?v=mrzRqDeZ4r8"));
        modelMap.addAttribute("images", asList(
                new ImageBean("../resources/img/1.jpg", "../resources/img/1.jpg"),
                new ImageBean("../resources/img/2.jpg", "../resources/img/2.jpg"),
                new ImageBean("../resources/img/3.jpg", "../resources/img/3.jpg")
        ));
        return "gallery";
    }
}
