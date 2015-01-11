package cc.vlasenko.site.model;


public class AlbumPreviewBean {
	private String name;
	private String imageSrc;
	private String textSrc;
	private String href;

	public AlbumPreviewBean(String name, String imageSrc, String textSrc, String href) {
		this.name = name;
		this.imageSrc = imageSrc;
		this.textSrc = textSrc;
		this.href = href;
	}

	public String getImageSrc() {
		return imageSrc;
	}

	public String getTextSrc() {
		return textSrc;
	}

	public String getName() {
		return name;
	}

	public String getHref() {
		return href;
	}
}
