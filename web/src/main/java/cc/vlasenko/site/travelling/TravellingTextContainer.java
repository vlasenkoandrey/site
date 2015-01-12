package cc.vlasenko.site.travelling;


import java.util.Map;

public class TravellingTextContainer {
	private final Map<String, String> travellingTextMap;

	public TravellingTextContainer(Map<String, String> travellingTextMap) {
		this.travellingTextMap = travellingTextMap;
	}


	public String get(String language) {
		return travellingTextMap.get(language);
	}
}
