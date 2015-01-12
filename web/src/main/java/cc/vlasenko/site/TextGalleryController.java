package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResourceBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import static cc.vlasenko.site.ResourceResolver.URL_PREFIX_TEXT;
import static cc.vlasenko.site.model.TextGalleryResource.valueOf;

@Controller
public class TextGalleryController extends LocalisingController {

	private ResourceResolver resourceResolver;

	@Autowired
	public TextGalleryController(ResourceResolver resourceResolver) {
		this.resourceResolver = resourceResolver;
	}

	@RequestMapping("/tg{resource}.jsp")
	public String getStory(ModelMap modelMap, @PathVariable String resource) {
		String language = getLanguage(modelMap);
		TextGalleryResourceContainer resourceContainer = resourceResolver.getResourceBean(valueOf(resource.toUpperCase()), language);
		TextGalleryResourceBean resourceBean = resourceContainer.getTextGalleryResourceBean();
		modelMap.addAttribute("text", URL_PREFIX_TEXT + resourceContainer.getResourcePrefix() + resourceContainer.getLocalePrefix() + resourceBean.getText());
		modelMap.addAttribute("videos", resourceBean.getVideos()); //todo тут тоже нужно запихнуть в свои директории
		modelMap.addAttribute("images", resourceBean.getImages());
		modelMap.addAttribute("id", resource);
		return "gallery";
	}
}
