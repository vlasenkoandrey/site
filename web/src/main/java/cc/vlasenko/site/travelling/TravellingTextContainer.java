package cc.vlasenko.site.travelling;


import java.util.Locale;
import java.util.Map;

public class TravellingTextContainer {
	private final Map<Locale, String> travellingTextMap;

	public TravellingTextContainer(Map<Locale, String> travellingTextMap) {
		this.travellingTextMap = travellingTextMap;
	}


	public String get(Locale locale) {
		return travellingTextMap.get(locale);
	}
}
