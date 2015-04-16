package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResource;

public interface ResourceResolver {
    public static final String URL_PREFIX_TEXT = "/static/text/";

	TextGalleryResourceContainer getResourceBean(TextGalleryResource resource, String language);
}
