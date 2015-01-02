package cc.vlasenko.site.model;

public class ImageBean {
    public static final String URL_PREFIX = "../resources/img/";
    private String fullSize;
    private String icon;

    public ImageBean(String imgName) {
        this.fullSize = URL_PREFIX + "fs/" + imgName;
        this.icon = URL_PREFIX + "ic/" + imgName;
    }

    public String getFullSize() {
        return fullSize;
    }

    public void setFullSize(String fullSize) {
        this.fullSize = fullSize;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
