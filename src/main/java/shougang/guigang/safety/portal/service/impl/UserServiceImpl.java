package shougang.guigang.safety.portal.service.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import shougang.guigang.safety.pojo.TbBasicpersonnelinformation;
import shougang.guigang.safety.portal.service.UserService;
import shougang.guigang.sanzuoyequ.common.pojo.SafetyResult;
import shougang.guigang.sanzuoyequ.common.utils.CookieUtils;
import shougang.guigang.sanzuoyequ.common.utils.HttpClientUtil;

/**
 * user management service
 * @author admin
 *
 */
@Service
public class UserServiceImpl implements UserService {

	@Value("${SSO_BASE_URL}")
	private String SSO_BASE_URL;
	
	@Value("${SSO_USER_TOKEN_SERVICE}")
	private String SSO_USER_TOKEN_SERVICE;
	
	@Override
	public TbBasicpersonnelinformation getUserByToken(HttpServletRequest request, HttpServletResponse response) {
		try {
			String token = CookieUtils.getCookieValue(request, "SAN_SAFER");
			if (StringUtils.isBlank(token)) {
				return null;
			}
			String json = HttpClientUtil.doGet(SSO_BASE_URL + SSO_USER_TOKEN_SERVICE + token);
			SafetyResult result = SafetyResult.format(json);
			if(result.getStatus() != 200) {
				return null;
			}
			result = SafetyResult.formatToPojo(json, TbBasicpersonnelinformation.class);
			TbBasicpersonnelinformation basicpersonnelinformation = (TbBasicpersonnelinformation) result.getData();
			return basicpersonnelinformation;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
