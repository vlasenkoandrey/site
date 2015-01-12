package cc.vlasenko.site;


import cc.vlasenko.site.model.TextGalleryResourceBean;

public class TextGalleryResourceContainer {
	private final TextGalleryResourceBean textGalleryResourceBean;
	private final String localePrefix;
	private final String resourcePrefix;


	public TextGalleryResourceContainer(TextGalleryResourceBean textGalleryResourceBean, String localePrefix, String resourcePrefix) {
		this.textGalleryResourceBean = textGalleryResourceBean;
		this.localePrefix = localePrefix;
		this.resourcePrefix = resourcePrefix;
	}

	public TextGalleryResourceBean getTextGalleryResourceBean() {
		return textGalleryResourceBean;
	}

	public String getLocalePrefix() {
		return localePrefix;
	}

	public String getResourcePrefix() {
		return resourcePrefix;
	}
}
