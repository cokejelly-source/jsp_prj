package kr.co.sist.util;

import java.net.URLDecoder;
import java.net.URLEncoder;

public class HanGulUtil {
	public static String decode(String hangul) {
		if(hangul ==null || "".equals(hangul)) {
			return "";
		}//end if
		String decode="";
		try {
			decode=URLDecoder.decode(URLEncoder.encode(hangul,"8859_1"), "UTF-8");
		}catch () {
		}
	}
}
