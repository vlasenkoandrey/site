package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResource;

import java.util.Locale;
import java.util.Map;

public class TextGalleryResourceResolver implements ResourceResolver {
	private final Map<TextGalleryResource, Map<Locale, TextGalleryResourceContainer>> resources;

	public TextGalleryResourceResolver(Map<TextGalleryResource, Map<Locale, TextGalleryResourceContainer>> resources) {
		this.resources = resources;
	}

	@Override
	public TextGalleryResourceContainer getResourceBean(TextGalleryResource resource, Locale locale) {
		Map<Locale, TextGalleryResourceContainer> galleryResourceBeanMap = resources.get(resource);
		TextGalleryResourceContainer resourceValue = galleryResourceBeanMap.get(locale);
		if (resourceValue == null) {
			resourceValue = galleryResourceBeanMap.get(Locale.ENGLISH);
		}
		return resourceValue;
	}
}
