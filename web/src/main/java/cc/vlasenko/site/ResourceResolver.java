package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResource;
import cc.vlasenko.site.model.TextGalleryResourceBean;

public interface ResourceResolver {
    TextGalleryResourceBean getResourceBean(TextGalleryResource resource);
}
