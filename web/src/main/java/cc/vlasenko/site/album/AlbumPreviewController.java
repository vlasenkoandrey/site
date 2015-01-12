package cc.vlasenko.site.album;


import cc.vlasenko.site.LocalisingController;
import cc.vlasenko.site.model.AlbumPreviewBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AlbumPreviewController extends LocalisingController {
	private final AlbumPreviewContainer albumPreviewBeans;

	@Autowired
	public AlbumPreviewController(AlbumPreviewContainer albumPreviewBeans) {
		this.albumPreviewBeans = albumPreviewBeans;
	}

	@RequestMapping("/albums_set.jsp")
	public void getLayout(ModelMap modelMap) {
		List<AlbumPreviewBean> resultList = albumPreviewBeans.get(getLanguage(modelMap));
		if (resultList == null){
			resultList = albumPreviewBeans.get("en");
		}
		modelMap.addAttribute("albumPreviewSet", resultList);
	}
}
