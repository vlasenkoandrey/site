package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResource;
import cc.vlasenko.site.model.TextGalleryResourceBean;

public interface ResourceResolver {
    public static final String URL_PREFIX_TEXT = "../resources/text/";

    TextGalleryResourceBean getResourceBean(TextGalleryResource resource);
}
