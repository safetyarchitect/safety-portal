package shougang.guigang.safety.portal.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shougang.guigang.safety.pojo.TbBasicpersonnelinformation;

public interface UserService {

	TbBasicpersonnelinformation getUserByToken(HttpServletRequest request, HttpServletResponse response);
}
