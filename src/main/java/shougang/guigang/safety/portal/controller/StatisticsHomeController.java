package shougang.guigang.safety.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * home page controller
 * @author admin
 *
 */
@Controller
public class StatisticsHomeController extends TypeConvertorController {

	/** display home page */
	@RequestMapping("/index")
	private String showIndex() {
		return "index";
	}
	
	/** navigator bar page jump */
	@RequestMapping("/{page}")
	private String showPage(@PathVariable String page) {
		return page;
	}
}
