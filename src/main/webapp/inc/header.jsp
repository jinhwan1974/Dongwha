<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- begin navbar-header -->
			<div class="navbar-header">
				<a href="<%=request.getContextPath()%>/" class="navbar-brand"><span class="navbar-logo"></span> <b>VictorSoft</b> Admin</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- end navbar-header -->
			<!-- begin header-nav -->
			<ul class="navbar-nav navbar-right">
				<li class="navbar-user">
					<div class="mem-info" href="javascript:;" class="dropdown-toggle">
							<i class="fa fa-user-circle" aria-hidden="true"></i>
							<a href="javascript:;" class="d-md-inline">로그인 ID</a>
							<button type="button" class="btn btn-xs btn-logout btn-inverse">logout</button>
					</div>
				</li>
			</ul>
			<!-- end header-nav -->