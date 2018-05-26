package shougang.guigang.safety.portal.service.impl;

import java.text.ParseException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import shougang.guigang.safety.portal.service.JointInspectionService;
import shougang.guigang.sanzuoyequ.common.pojo.EasyUIDataGridResult;
import shougang.guigang.sanzuoyequ.common.utils.HttpClientUtil;
import shougang.guigang.sanzuoyequ.common.utils.JsonUtils;

/**
 * joint inpsection detailed item list service
 * @author admin
 *
 */
@Service
public class JointInspectionServiceImpl implements JointInspectionService {

	@Value("${REST_BASE_URL}")
	private String REST_BASE_URL;
	
	@Value("${REST_INSPECTION_URL}")
	private String REST_INSPECTION_URL;
	
	@Value("${REST_INSPECTION_LIST_URL}")
	private String REST_INSPECTION_LIST_URL;
	
	@Value("${REST_INSPECTION_SEARCH_URL}")
	private String REST_INSPECTION_SEARCH_URL;
	
	@Override
	public String getInspectionItemDetailedList() {
		String url = REST_BASE_URL + REST_INSPECTION_URL + REST_INSPECTION_LIST_URL;
		String json = HttpClientUtil.doGet(url);
		return json;
	}
	
	@Override
	public EasyUIDataGridResult searchInspectionList(Date StartInspectionDate, Date endInspectionDate,
			String inspectionSet, String inspectionResult, String inspectionDuty) throws ParseException {
		String url = REST_BASE_URL + REST_INSPECTION_URL + REST_INSPECTION_SEARCH_URL;
		String json = HttpClientUtil.doGet(url);
		EasyUIDataGridResult result = JsonUtils.jsonToPojo(json, EasyUIDataGridResult.class);
		return result;
	}

}
