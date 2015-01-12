package cc.vlasenko.site.album;


import cc.vlasenko.site.model.AlbumPreviewBean;

import java.util.List;
import java.util.Map;

public class AlbumPreviewContainer {
	private final Map<String, List<AlbumPreviewBean>> albumPreviewBeans;

	public AlbumPreviewContainer(Map<String, List<AlbumPreviewBean>> albumPreviewBeans) {
		this.albumPreviewBeans = albumPreviewBeans;
	}


	public List<AlbumPreviewBean> get(String language) {
		return albumPreviewBeans.get(language);
	}
}
