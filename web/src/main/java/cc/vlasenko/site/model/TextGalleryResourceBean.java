package cc.vlasenko.site.model;

import java.util.ArrayList;
import java.util.List;

public class TextGalleryResourceBean {
    private ImageBean[] images = new ImageBean[0];
    private String[] videos = new String[0];
    private String text;
	private String path;
	private int imageCount;

	public ImageBean[] getImages() {
		if (images.length == 0) {
			initImages();
		}
		return images;
	}

	private synchronized void initImages() {
		if (images.length == 0) {
			List<ImageBean> imgList = new ArrayList<ImageBean>();
			for (int i = 1; i <= imageCount; i++) {
				imgList.add(new ImageBean(path, i + ".jpg"));
				images = imgList.toArray(new ImageBean[imgList.size()]);
			}
		}
	}


	public void setPath(String path) {
		this.path = path;
	}

	public void setImageCount(int imageCount) {
		this.imageCount = imageCount;
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
