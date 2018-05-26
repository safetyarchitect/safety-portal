<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div style="padding:10px 10px 10px 10px">
	<table class="easyui-datagrid" id="inspectionSearchList" title="检查项目信息"
		data-options="singleSelect:false,collapsible:true,pagination:true,pageSize:20">
		<thead>
			<tr>
				<th data-options="field:'inspectionId',width:150,align:'center'">项目编号</th>
				<th
					data-options="field:'inspectionDate',width:100,align:'center',formatter:SAFETY.formatDate">检查日期</th>
				<th data-options="field:'inspectionSet',width:60,align:'center'">机组</th>
				<th data-options="field:'inspectionIssue',width:360,align:'center'">检查问题</th>
				<th data-options="field:'inspectionDuty',width:50,align:'center'">负责人</th>
				<th
					data-options="field:'inspectionEnddate',width:100,align:'center',formatter:SAFETY.formatDate">整改时限</th>
				<th data-options="field:'inspectionResult',width:60,align:'center'">整改结果</th>
				<th
					data-options="field:'inspectionReviewinspection',width:50,align:'center'">复查人</th>
				<th
					data-options="field:'insepctionReviewresult',width:60,align:'center'">复查结果</th>
			</tr>
		</thead>
	</table>
	<div style="padding:5px">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="quitForm()">退出</a>
	</div>
</div>
<script type="text/javascript">
	function quitForm() {
		$.messager.alert('提示', '确定退出吗？', 'info', function() {
			$("#inspectionSearchWindow").window('close');
		});
	}
</script>
