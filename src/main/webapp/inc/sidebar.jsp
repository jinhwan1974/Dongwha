<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- begin sidebar scrollbar -->
<div data-scrollbar="true" data-height="100%">
	<!-- begin sidebar nav ※ 활성화 메뉴 li에 class="active" 처리, sub-menu li 있을경우 같이 처리 -->
	<ul class="nav">
		<li class="nav-header"><i class="fa fa-cubes" aria-hidden="true"></i>Administration Menu</li>
		<li>
			<a href="<%=request.getContextPath()%>/">
				<i class="fa fa-th-large"></i>
				<span>Home</span>
			</a>
		</li>
		<li>
			<a href="<%=request.getContextPath()%>/login.do" target="_blank">
				<i class="fa fa-th-large"></i>
				<span>Login페이지</span>
			</a>
		</li>
		<li class="has-sub">
			<a href="javascript:;">
				<b class="caret"></b>
				<i class="fa fa-align-left"></i>
				<span>게시판</span>
			</a>
			<ul class="sub-menu">
				<li><a href="<%=request.getContextPath()%>/boardList.do">자료실</a></li>
			</ul>
		</li>
		<!-- begin sidebar minify button -->
		<li>
			<a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify">
				<i class="fa fa-angle-double-left"></i>
			</a>
		</li>
		<!-- end sidebar minify button -->
	</ul>
	<!-- end sidebar nav -->
</div>
<!-- end sidebar scrollbar -->

<!-- URL에따른 현재 페이지 메뉴 활성화 스크립트 -->
<script>
	$(function () {
		var url = window.location.pathname,
			urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");
		$('a').each(function () {
			if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
				$(this).parents('li').addClass('active');
			}
		});
	});
</script>