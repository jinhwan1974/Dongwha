<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="keywords"    content="페이지메인키워드">
    <meta name="description" content="디스크립션">
    <meta name="author"      content="작성자정보">

    <meta property="og:site_name" content="사이트명으로 웹문서의 제목과는 별개" />
    <meta property="og:url" content="http://www.aaa.co.kr/"/>
    <meta property="og:type" content="website" />
    <meta property="og:title" content="웹문서의 제목 현재 페이지(콘텐츠)의 제목"/>
    <meta property="og:description" content="현재 페이지(콘텐츠)에 대한 설명"/>
    <meta property="og:image" content="<%=request.getContextPath()%>/assets/images/opengraph.png"/>

    <!-- ================== CSS STYLE ================== -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.png" />
    <link href="<%=request.getContextPath()%>/assets/css/default/app.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/dist/css/custom.css" rel="stylesheet" /><!-- 항상 CSS 최하단-->
    <!-- ================ /.CSS STYLE ================== -->
    
    <!-- ================== 필수 JS ===================== -->
	<script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/theme/default.js"></script>
    <!-- ================ /.필수 JS ===================== -->

    <title><%=HOME_TITLE%></title>
</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->
	
	<!-- begin login-cover -->
	<div class="login-cover">
		<div class="login-cover-image" style="background-image: url(<%=request.getContextPath()%>/assets/images/login-bg.jpg)" data-id="login-cover-image"></div>
		<div class="login-cover-bg"></div>
	</div>
	<!-- end login-cover -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- begin login -->
		<div class="login login-v2" data-pageload-addclass="animated fadeIn">
			<!-- begin brand -->
			<div class="login-header">
				<div class="brand">
					<span class="logo"></span> <b>Victor</b> Admin
				</div>
				<div class="icon">
					<i class="fa fa-lock"></i>
				</div>
			</div>
			<!-- end brand -->
			<!-- begin login-content -->
			<div class="login-content">
				<form action="index.html" method="GET" class="margin-bottom-0">
					<div class="form-group m-b-20">
						<input type="text" class="form-control form-control-lg" placeholder="Email Address" required />
					</div>
					<div class="form-group m-b-20">
						<input type="password" class="form-control form-control-lg" placeholder="Password" required />
					</div>
					<div class="checkbox checkbox-css m-b-20">
						<input type="checkbox" id="remember_checkbox" /> 
						<label for="remember_checkbox">
							Remember Me
						</label>
					</div>
					<div class="login-buttons">
						<button type="submit" class="btn btn-success btn-block btn-lg bg-theme">Sign me in</button>
					</div>
				</form>
			</div>
			<!-- end login-content -->
		</div>
        <!-- end login -->
        
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
</body>
</html>