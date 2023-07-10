<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta name="keywords" content="페이지메인키워드">
	<meta name="description" content="디스크립션">
	<meta name="author" content="작성자정보">

	<meta property="og:site_name" content="사이트명으로 웹문서의 제목과는 별개" />
	<meta property="og:url" content="http://www.aaa.co.kr/" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="웹문서의 제목 현재 페이지(콘텐츠)의 제목" />
	<meta property="og:description" content="현재 페이지(콘텐츠)에 대한 설명" />
	<meta property="og:image" content="../assets/images/opengraph.png" />

	<!-- ================== CSS STYLE ================== -->
	<link rel="shortcut icon" href="../assets/images/favicon.png" />
	<link href="../assets/css/default/app.min.css" rel="stylesheet" />
	<link href="../dist/css/custom.css" rel="stylesheet" /><!-- 항상 CSS 최하단-->
	<!-- ================ /.CSS STYLE ================== -->

	<!-- ================ /.필수 JS ===================== -->
	<script src="../assets/js/app.min.js"></script>
	<script src="../assets/js/theme/default.js"></script>
	<!-- ================ /.필수 JS ===================== -->

	<!-- ================== 페이지 추가 JS : smarteditor2 ================== -->
	<script type="text/javascript" src="../assets/plugins/smarteditor2-2.10.0/js/service/HuskyEZCreator.js"
		charset="utf-8"></script>
	<!-- ================ /.페이지 추가 JS =============== -->


	<title>Victor Admin</title>
</head>

<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container" class="page-container fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar-default bg-theme">
			<!-- ※※※ html Include 처리 부분 ※※※ -->
		</div>
		<!-- end #header -->

		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<!-- ※※※ html Include 처리 부분 ※※※ -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->

		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin page-header -->
			<h1 class="page-header">자료실-등록/수정</h1>
			<!-- end page-header -->

			<!-- View 테이블 -->
			<div class="panel panel-inverse">
				<div class="panel-body">

					<div class="table-responsive">
						<table class="tbl_ver" cellspacing="0">
							<colgroup>
								<col width="120">
								<col>
								<col width="120">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<tr>
										<th>제조사</th>
										<td colspan="3"><input class="form-control form-control-sm" type="text" /></td>
									</tr>
									<th>제목</th>
									<td colspan="3"><input class="form-control form-control-sm" type="text" /></td>
								</tr>
								<tr>
									<th>작성자</th>
									<td>홍길동</td>
									<th>작성일</th>
									<td>2020-00-00</td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan="3">
										<div class="tbl-cnt">
											<!--textarea class="form-control" rows="3"></textarea-->
											<textarea id="CONTENT" name="CONTENT" class="form-control" rows="8"></textarea>
										</div>
									</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td colspan="3">
										<input type="file" name="" />
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btn-area">
						<button type="button" id="modifyBtn" class="btn btn-sm bg-theme"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>수정</button>
						<button type="button" id="listBtn" class="btn btn-sm bg-theme"><i class="fa fa-list" aria-hidden="true"></i>목록</button>
						<button type="button" id="delBtn" class="btn btn-sm btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</button>
					</div>
				</div>
			</div>
			<!-- end panel -->

		</div>
		<!-- end #content -->

		<!-- begin #footer -->
		<div id="footer" class="footer">
			<!-- ※※※ html Include 처리 부분 ※※※ -->
		</div>
		<!-- end #footer -->

		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i
				class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->

	<!-- smarteditor2 -->
	<script type="text/javascript">
		// var oEditors = [];
		// nhn.husky.EZCreator.createInIFrame({
		// 	oAppRef: oEditors,
		// 	elPlaceHolder: "CONTENT",
		// 	sSkinURI: "../assets/plugins/smarteditor2-2.10.0/SmartEditor2Skin.html",
		// 	fCreator: "createSEditor2"
		// });
	</script>

	<!-- html Include 처리 : 실 개발 시 인클루드 재설정 후 제거 -->
	<script type="text/javascript">
		$(document).ready(function () {
			$("#header").load("/inc/front_header.html"),
				$("#sidebar").load("/inc/front_sidebar.html"),
				$("#footer").load("/inc/front_footer.html")
		});

		$('#listBtn').click(function () {
			$(location).attr('href', 'board_list.html');
		});		
	</script>

</body>

</html>