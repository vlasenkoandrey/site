package cc.vlasenko.site;

import cc.vlasenko.site.model.TextGalleryResource;
import cc.vlasenko.site.model.TextGalleryResourceBean;

import java.util.Map;

public class TextGalleryResourceResolver implements ResourceResolver {
    private Map<TextGalleryResource, TextGalleryResourceBean> resources;

    public TextGalleryResourceResolver(Map<TextGalleryResource, TextGalleryResourceBean> resources) {
        this.resources = resources;
    }

    @Override
    public TextGalleryResourceBean getResourceBean(TextGalleryResource resource) {
        return resources.get(resource);
    }
}
