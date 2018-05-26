package shougang.guigang.safety.portal.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import shougang.guigang.safety.pojo.TbBasicpersonnelinformation;
import shougang.guigang.safety.portal.service.UserService;

/**
 * user logins interceptor
 * @author admin
 *
 */
public class LoginInterceptor implements HandlerInterceptor {

	@Autowired
	private UserService userService;
	
	@Value("${SSO_LOGIN_URL}")
	private String SSO_LOGIN_URL;
	
	/**
	 * before executing handler
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		TbBasicpersonnelinformation basicpersonnelinformation = userService.getUserByToken(request, response);
		if (basicpersonnelinformation == null) {
			response.sendRedirect(SSO_LOGIN_URL + "?redirectURL=" + request.getRequestURL());
			return false;
		}
		return true;
	}

	/**
	 * between after executing handler and returning ModelAndView
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	/**
	 * after returning ModelAndView
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
