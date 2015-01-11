package cc.vlasenko.site;


import cc.vlasenko.site.model.AlbumPreviewBean;

import java.util.List;
import java.util.Locale;
import java.util.Map;

public class AlbumPreviewContainer {
	private final Map<Locale, List<AlbumPreviewBean>> albumPreviewBeans;

	public AlbumPreviewContainer(Map<Locale, List<AlbumPreviewBean>> albumPreviewBeans) {
		this.albumPreviewBeans = albumPreviewBeans;
	}


	public List<AlbumPreviewBean> get(Locale locale) {
		return albumPreviewBeans.get(locale);
	}
}
