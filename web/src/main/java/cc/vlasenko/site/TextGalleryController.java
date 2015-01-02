package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResourceBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import static cc.vlasenko.site.model.TextGalleryResource.valueOf;

@Controller
public class TextGalleryController {

    private ResourceResolver resourceResolver;

    @Autowired
    public TextGalleryController(ResourceResolver resourceResolver) {
        this.resourceResolver = resourceResolver;
    }

    @RequestMapping("/tg{resource}.jsp")
    public String getStory(ModelMap modelMap, @PathVariable String resource) {
        TextGalleryResourceBean resourceBean = resourceResolver.getResourceBean(valueOf(resource.toUpperCase()));
        modelMap.addAttribute("text", resourceBean.getText());
        modelMap.addAttribute("videos", resourceBean.getVideos());
        modelMap.addAttribute("images", resourceBean.getImages());
        return "gallery";
    }
}
