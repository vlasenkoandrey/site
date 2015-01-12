package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResource;

import java.util.Locale;

public interface ResourceResolver {
    public static final String URL_PREFIX_TEXT = "../resources/text/";

	TextGalleryResourceContainer getResourceBean(TextGalleryResource resource, Locale locale);
}
