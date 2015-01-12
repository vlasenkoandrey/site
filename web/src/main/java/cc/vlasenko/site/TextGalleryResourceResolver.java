package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResource;

import java.util.Map;

public class TextGalleryResourceResolver implements ResourceResolver {
	private final Map<TextGalleryResource, Map<String, TextGalleryResourceContainer>> resources;

	public TextGalleryResourceResolver(Map<TextGalleryResource, Map<String, TextGalleryResourceContainer>> resources) {
		this.resources = resources;
	}

	@Override
	public TextGalleryResourceContainer getResourceBean(TextGalleryResource resource, String language) {
		Map<String, TextGalleryResourceContainer> galleryResourceBeanMap = resources.get(resource);
		TextGalleryResourceContainer resourceValue = galleryResourceBeanMap.get(language);
		if (resourceValue == null) {
			resourceValue = galleryResourceBeanMap.get(language);
		}
		return resourceValue;
	}
}
