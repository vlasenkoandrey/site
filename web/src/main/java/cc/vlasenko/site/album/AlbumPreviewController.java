package cc.vlasenko.site.album;


import cc.vlasenko.site.model.AlbumPreviewBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;
import java.util.Locale;

@SessionAttributes(types = Locale.class)
@Controller
public class AlbumPreviewController {
	private final AlbumPreviewContainer albumPreviewBeans;

	@Autowired
	public AlbumPreviewController(AlbumPreviewContainer albumPreviewBeans) {
		this.albumPreviewBeans = albumPreviewBeans;
	}

	@RequestMapping("/albums_set.jsp")
	public void getLayout(ModelMap modelMap, Locale locale) {
		List<AlbumPreviewBean> resultList = albumPreviewBeans.get(locale);
		if (resultList == null){
			resultList = albumPreviewBeans.get(Locale.ENGLISH);
		}
		//LocaleContextHolder.getLocale();
		modelMap.addAttribute("albumPreviewSet", resultList);
	}
}
