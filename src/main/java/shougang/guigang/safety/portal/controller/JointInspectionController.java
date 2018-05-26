package shougang.guigang.safety.portal.controller;

import java.text.ParseException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import shougang.guigang.safety.portal.service.JointInspectionService;
import shougang.guigang.sanzuoyequ.common.pojo.EasyUIDataGridResult;
/**
 * joint inspection dtailed controller
 * @author liuhonglei
 *
 */
@Controller
@RequestMapping("/inspection")
public class JointInspectionController {
	@Autowired
	private JointInspectionService jointInspectionService;

	@RequestMapping("/inspectionList")
	private String getInspectionItemDetailedList(Model model) {
		String data = jointInspectionService.getInspectionItemDetailedList();
		model.addAttribute("data", data);
		return "inspection-list";
	}
	
	@RequestMapping(value = "/search" , method = RequestMethod.POST)
	@ResponseBody
	private EasyUIDataGridResult searchInspectionList(Date StartInspectionDate 
			, Date endInspectionDate , String inspectionSet , String inspectionResult 
			, String inspectionDuty) throws ParseException {
		EasyUIDataGridResult result = jointInspectionService.searchInspectionList(StartInspectionDate
										, endInspectionDate, inspectionSet, inspectionResult, inspectionDuty);
		return result;
	}
}
