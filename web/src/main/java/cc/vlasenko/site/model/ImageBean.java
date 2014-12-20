package cc.vlasenko.site.model;

public class ImageBean {
    private String fullSize;
    private String icon;

    public ImageBean(String fullSize, String icon) {
        this.fullSize = fullSize;
        this.icon = icon;
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
