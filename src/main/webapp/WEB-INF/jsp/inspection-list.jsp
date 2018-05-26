<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>三作业区联合检查信息汇总</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/jquery-easyui-1.5.2/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/jquery-easyui-1.5.2/themes/icon.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/safety.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-easyui-1.5.2/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/datagrid-filter.js"></script>
<style type="text/css">
.content {
	padding: 10px 10px 10px 10px;
}
</style>
</head>
<body class="easyui-layout">
	<table class="easyui-datagrid" id="inspectionList" title="检查项目信息"
		data-options="singleSelect:true,collapsible:true,pagination:true,pageSize:20,data:data"
		toolbar="#tb_InspectionList">
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
					data-options="field:'inspectionReviewperson',width:50,align:'center'">复查人</th>
				<th
					data-options="field:'insepctionReviewresult',width:60,align:'center'">复查结果</th>
			</tr>
		</thead>
	</table>

	<div id="inspectionSearchWindow" class="easyui-window" title="查询问题信息"
		data-options="modal:true,closed:true,iconCls:'icon-save',href:'${pageContext.request.contextPath}/inspection-search.html'"
		style="width:80%;height:100%;padding:10px;"></div>
	<div style="padding:5px">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="quitForm()">退出</a>
	</div>
	</div>
	<script type="text/javascript">
		var data = ${data};
		$(function() {
			var dg = $("#inspectionList").datagrid();
			dg.datagrid('enableFilter', [{
                field:'inspectionDate',
                type:'datebox',
                options:{precision:1},
                op:['equal','notequal','less','greater']
            },{
                field:'inspectionSet',
                type:'combobox',
                options:{
                    panelHeight:'auto',
                    data:[{value:'',text:'全部'},{value:'DCL',text:'DCL'},{value:'RAF',text:'RAF'},{value:'FCL',text:'FCL'}],
                    onChange:function(value){
                        if (value == ''){
                            dg.datagrid('removeFilterRule', 'inspectionSet');
                        } else {
                            dg.datagrid('addFilterRule', {
                                field: 'inspectionSet',
                                op: 'equal',
                                value: value
                            });
                        }
                        dg.datagrid('doFilter');
                    }
                }
            },{
                field:'inspectionEnddate',
                type:'datebox',
                options:{precision:1},
                op:['equal','notequal','less','greater']
            },{
                field:'inspectionResult',
                type:'combobox',
                options:{
                    panelHeight:'auto',
                    data:[{value:'',text:'全部'},{value:'完成',text:'完成'},{value:'未完成',text:'未完成'}],
                    onChange:function(value){
                        if (value == ''){
                            dg.datagrid('removeFilterRule', 'inspectionResult');
                        } else {
                            dg.datagrid('addFilterRule', {
                                field: 'inspectionResult',
                                op: 'equal',
                                value: value
                            });
                        }
                        dg.datagrid('doFilter');
                    }
                }
            },{
                field:'insepctionReviewresult',
                type:'combobox',
                options:{
                    panelHeight:'auto',
                    data:[{value:'',text:'全部'},{value:'合格',text:'合格'},{value:'不合格',text:'不合格'}],
                    onChange:function(value){
                        if (value == ''){
                            dg.datagrid('removeFilterRule', 'insepctionReviewresult');
                        } else {
                            dg.datagrid('addFilterRule', {
                                field: 'insepctionReviewresult',
                                op: 'equal',
                                value: value
                            });
                        }
                        dg.datagrid('doFilter');
                    }
                }
            }]);
		});
		
		function quitForm() {
			$.messager.alert('提示', '确定退出吗？', 'info', function() {
				window.location.replace("${pageContext.request.contextPath}");
			});
		}
	</script>
</body>
</html>