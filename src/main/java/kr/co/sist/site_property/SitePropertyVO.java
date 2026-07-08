package kr.co.sist.site_property;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@Getter
@ToString
public class SitePropertyVO {
	private String	protocol, serverName,serverPort,
	contextRoot,	uploadDir,	awsKey,siteInfo;
}
