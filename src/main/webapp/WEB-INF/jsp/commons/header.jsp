<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/base-v1.js" charset="utf-8"></script>
<!--shortcut start-->
<jsp:include page="shortcut.jsp" />
<!--shortcut end-->

<div id="o-header-2013">
	<div class="w" id="header-2013">
		<div id="logo-2013" class="ld">
			<a href="${pageContext.request.contextPath}/" hidefocus="true"
				clstag="homepage|keycount|home2013|02a"> <b></b> <img
				src="${pageContext.request.contextPath}/images/shougang.png"
				width="270" height="60" alt="安全生产信息平台">
			</a>
		</div>
		<!--logo end-->

		<div id="search-2013">
			<div class="i-search ld">
				<ul id="shelper" class="hide"></ul>
				<div class="form">
					<input type="text" class="text" accesskey="s" id="key"
						autocomplete="off"
						onkeydown="javascript:if(event.keyCode==13) search('key');">
					<input type="button" value="搜索" class="button"
						onclick="search('key');return false;"
						clstag="homepage|keycount|home2013|03a">
				</div>
			</div>
			<div id="hotwords" clstag="homepage|keycount|home2013|03b"></div>
		</div>
		<!--search end-->

		<div id="my360buy-2013">
			<dl>
				<dt class="ld">
					<s></s><a href="<!-- http://192.168.1.166:8082/page/login -->"
						clstag="homepage|keycount|home2012|04a">我的信息</a><b></b>
				</dt>
				<dd>
					<div class="loading-style1">
						<b></b>加载中，请稍候...
					</div>
				</dd>
			</dl>
		</div>
		<!--my360buy end-->

		<div id="settleup-2013" clstag="homepage|keycount|home2013|05a">
			<dl>
				<dt class="ld">
					<s></s><span class="shopping"><span id="shopping-amount"></span></span><a
						href="<%-- ${pageContext.request.contextPath}/cart/cart.html --%>"
						id="settleup-url">功能2</a> <b></b>
				</dt>
				<dd>
					<div class="prompt">
						<div class="loading-style1">
							<b></b>加载中，请稍候...
						</div>
					</div>
				</dd>
			</dl>
		</div>
		<!--settleup end-->
	</div>
	<!--header end-->

	<div class="w">
		<div id="nav-2013">
			<div id="categorys-2013" class="categorys-2014">
				<div class="mt ld">
					<h2>
						<a href="http://www.baidu.com"
							clstag="homepage|keycount|home2013|06a">安全项目<b></b></a>
					</h2>
				</div>
				<div id="_JD_ALLSORT" class="mc">
					<div class="item fore1">
						<span data-split="1"><h3>
								<a href="${pageContext.request.contextPath}/inspection/inspectionList.html">安全检查</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore2">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/74.html --%>">重要通知</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore3">
						<span data-split="1"><h3>
								<a href="<!-- /products/161.html -->">职业健康</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore4">
						<span data-split="1"><h3>
								<a href="<!-- /products/249.html -->">安全教育</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore5">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/290.html --%>">消防器材</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore6">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/296.html --%>">项目1</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore7">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/378.html --%>">项目2</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore8">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/438.html --%>">项目3</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore9">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/495.html --%>">项目4</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore10">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/558.html --%>">项目5</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore11">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/580.html --%>">项目6</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore12">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/633.html --%>">项目7</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore13">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/699.html --%>">项目8</a>
							</h3> <s></s> </span>
					</div>
					<div class="item fore14">
						<span data-split="1"><h3>
								<a
									href="<%-- ${pageContext.request.contextPath}/products/749.html --%>">项目9</a>
							</h3> <s></s> </span>
					</div>
					<div class="extra">
						<a {if=""
							pageconfig.ishome}clstag="homepage|keycount|home2013|0614a"
							{="" if}="" href="<!-- http://www.jd.com/allSort.aspx -->">全部分类</a>
					</div>
				</div>
			</div>
			<div id="treasure" clstag="homepage|keycount|home2013|08a"></div>
			<ul id="navitems-2013">
				<li class="fore1" id="nav-home"
					clstag="homepage|keycount|home2013|07a"><a href="/">首页</a></li>
				<li class="fore2" id="nav-fashion"
					clstag="homepage|keycount|home2013|07b"><a
					href="<!-- http://fashion.jd.com/ -->">建设说明</a></li>
				<li class="fore3" id="nav-chaoshi"
					clstag="homepage|keycount|home2013|07c"><a
					href="<!-- http://channel.jd.com/chaoshi.html -->">系列1</a></li>
				<li class="fore4" id="nav-tuan"
					clstag="homepage|keycount|home2013|07d"><a
					href="<!-- http://tuan.jd.com/ -->" target="_blank">系列2</a></li>
				<li class="fore5" id="nav-auction"
					clstag="homepage|keycount|home2013|07e"><a
					href="<!-- http://auction.jd.com/ -->">系列3</a></li>
				<li class="fore6" id="nav-shan"
					clstag="homepage|keycount|home2013|07f"><a
					href="<!-- http://red.jd.com/ -->" target="_blank">系列4</a></li>
				<li class="fore7" id="nav-jinrong"
					clstag="homepage|keycount|home2013|07g1"><a
					href="<!-- http://jr.jd.com/ -->" target="_blank">注安集训</a></li>
			</ul>
		</div>
	</div>
</div>

<script type="text/javascript">
(function(){if(pageConfig.navId){var object=document.getElementById("nav-"+pageConfig.navId);if(object)object.className+=" curr";}})();
</script>
