<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/inc/common.jsp"%>

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
	<meta property="og:image" content="<%=request.getContextPath()%>/assets/images/opengraph.png" />

	<!-- ================== CSS STYLE ================== -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.png" />
	<link href="<%=request.getContextPath()%>/assets/css/default/app.min.css" rel="stylesheet" />
	<link href="<%=request.getContextPath()%>/dist/css/custom.css" rel="stylesheet" /><!-- 항상 CSS 최하단-->
	<!-- ================ /.CSS STYLE ================== -->

	<!-- ================ /.필수 JS ===================== -->
	<script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/theme/default.js"></script>
	<!-- ================ /.필수 JS ===================== -->

	<!-- ================== 페이지 추가 JS : smarteditor2 ================== -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/plugins/smarteditor2-2.10.0/js/service/HuskyEZCreator.js"
		charset="utf-8"></script>
	<!-- ================ /.페이지 추가 JS =============== -->


	<title><%=HOME_TITLE%></title>
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
			<%@include file="/inc/header.jsp"%>
		</div>
		<!-- end #header -->

		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<%@include file="/inc/sidebar.jsp"%>
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->

		<!-- begin #content -->
		<div id="contents" class="content">
			<!-- begin page-header -->
			<h1 class="page-header">자료실-수정</h1>
			<!-- end page-header -->

			<!-- View 테이블 -->
			<div class="panel panel-inverse">
				<div class="panel-body">
					<form id="editForm" action="/editBoardData.do" method="post" enctype="multipart/form-data">
						<div class="table-responsive">
							<table class="tbl_ver" cellspacing="0">
								<colgroup>
									<col width="120">
									<col>
								</colgroup>
								<tbody>
										<tr>
											<th>게시판번호</th>
											<td><input id="boardId" name="boardId"  class="form-control form-control-sm" value="${pageInfo.boardId}" ></td>
										</tr>
										<tr>
											<th>작성일</th>
											<td>${pageInfo.regDate}</td>
											<th>제조사</th>
											<td>
												<select id="company" name="company" class="form-control form-control-sm" style="width: auto;">
													<option value="삼성전자" ${pageInfo.company == '삼성전자' ? 'selected="selected"' : ''} >삼성전자</option>
													<option value="엘지전자" ${pageInfo.company == '엘지전자' ? 'selected="selected"' : ''} >엘지전자</option>
													<option value="샤오미"   ${pageInfo.company == '샤오미' ? 'selected="selected"' : ''} >샤오미</option>
												</select>
												<!-- <input id="company" name="company" class="form-control form-control-sm" type="text" /> -->
											</td>
										</tr>
										<tr>
											<th>작성자</th>
											<td>
												<select id="regId" name="regId" class="form-control form-control-sm" style="width: auto;">
													<option value="관리자" ${pageInfo.regId == '관리자' ? 'selected="selected"' : ''} >관리자</option>
													<option value="부점장" ${pageInfo.regId == '부점장' ? 'selected="selected"' : ''} >부점장</option>
												</select>
												<!-- <input id="regId" name="regId" class="form-control form-control-sm" type="text" value="관리자" /> -->
											</td>
											<th>제목</th>
											<td><input id="title" name="title" class="form-control form-control-sm" type="text" value="${pageInfo.title}" /></td>
									</tr>
									<tr>
										<th>내용</th>
										<td colspan="3">
											<div class="tbl-cnt">
												<!--textarea class="form-control" rows="3"></textarea-->
												<textarea id="content" name="content" class="form-control" rows="8">${pageInfo.content}</textarea>
											</div>
										</td>
									</tr>
									<tr>
										<th>첨부파일</th>
										<td colspan="3">
											<p>첨부파일 : <span>${pageInfo.orgName}</span></p>
											<!-- <input type="file" id="boardFile" name="boardFile" accept=".txt, .docx"/> -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div class="btn-area">
							<button type="button" id="listBtn" class="btn btn-sm bg-theme"><i class="fa fa-list" aria-hidden="true"></i>목록으로</button>
							<button type="button" id="editBtn" class="btn btn-sm bg-theme"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>수정 등록</button>
							<button type="button" id="cancleBtn" class="btn btn-sm bg-theme"><i class="fa fa-list" aria-hidden="true"></i>수정 취소</button>
							<button type="button" id="delBtn" class="btn btn-sm btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제</button>
						</div>
					</form>
					<form id="infoForm" action="/boardEdit.do" method="get">
						<input type="hidden" id="boardId" name="boardId" value="${pageInfo.boardId}" >
					</form>
				</div>
			</div>
			<!-- end panel -->

		</div>
		<!-- end #content -->

		<!-- begin #footer -->
		<div id="footer" class="footer">
			<%@include file="/inc/footer.jsp"%>
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
		// 	sSkinURI: "<%=request.getContextPath()%>/assets/plugins/smarteditor2-2.10.0/SmartEditor2Skin.html",
		// 	fCreator: "createSEditor2"
		// });
		let form = $("#infoForm");        // 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
    let mForm = $("#editForm");

		$('#listBtn').click(function() {
			form.find("#boardId").remove();
			form.attr("action", "/boardList.do");
			form.submit();
		});	

		$('#cancleBtn').click(function() {
			form.attr("action", '/boardView.do');
			form.submit();
		});		

		$('#editBtn').click(function() {
				mForm.submit();
		});

		$('#delBtn').click(function() {
			form.attr("action", "/delBoardData.do");
			form.attr("method", "post");
			form.submit();
		});

</script>

</body>

</html>