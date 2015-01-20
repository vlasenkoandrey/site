package cc.vlasenko.site.model;

public class TextGalleryResourceBean {
    private ImageBean[] images = new ImageBean[0];
    private String[] videos = new String[0];
    private String text;

    public ImageBean[] getImages() {
        return images;
    }

    public void setImages(ImageBean[] images) {
        this.images = images;
    }

    public String[] getVideos() {
        return videos;
    }

    public void setVideos(String[] videos) {
        this.videos = videos;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
