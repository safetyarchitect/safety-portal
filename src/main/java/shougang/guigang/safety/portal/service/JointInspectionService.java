package shougang.guigang.safety.portal.service;

import java.text.ParseException;
import java.util.Date;

import shougang.guigang.sanzuoyequ.common.pojo.EasyUIDataGridResult;

public interface JointInspectionService {
	String getInspectionItemDetailedList();
	
	EasyUIDataGridResult searchInspectionList(Date StartInspectionDate , Date endInspectionDate 
			, String inspectionSet , String inspectionResult 
			, String inspectionDuty) throws ParseException;
}
