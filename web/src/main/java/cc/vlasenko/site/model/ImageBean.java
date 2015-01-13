package cc.vlasenko.site.model;

public class ImageBean {
	private String path;
    private String fullSize;
    private String icon;

    public ImageBean(String path, String imgName) {
		this.path = path;
        this.fullSize = path + "fs/" + imgName;
        this.icon = path + "ic/" + imgName;
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
