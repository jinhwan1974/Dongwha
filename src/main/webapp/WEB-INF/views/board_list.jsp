<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/inc/common.jsp"%>

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
    <!-- 추가 CSS -->
    <!-- bootstrap-datepicker -->
    <link href="<%=request.getContextPath()%>/assets/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" />
    <!-- datatables -->
    <link href="<%=request.getContextPath()%>/assets/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <!-- /.추가 CSS -->
    <link href="<%=request.getContextPath()%>/dist/css/custom.css" rel="stylesheet" /><!-- 항상 CSS 최하단-->
    <!-- ================ /.CSS STYLE ================== -->

    <!-- ================== 필수 JS ===================== -->
	<script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/theme/default.js"></script>
    <!-- ================== 필수 JS ===================== -->

    <!-- ================== 페이지 추가 JS =============== -->
    <!-- bootstrap-datepicker -->
    <script src="<%=request.getContextPath()%>/assets/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/bootstrap-datepicker/dist/locales/bootstrap-datepicker.ko.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/demo/form-plugins.demo.js"></script>
    <!-- datatables -->
	<script src="<%=request.getContextPath()%>/assets/plugins/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/demo/table-manage-default.demo.js"></script>
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
        <div id="content" class="content">
            <!-- begin page-header -->
            <h1 class="page-header">자료실-목록</h1>
            <!-- end page-header -->

                
            <!-- 테이블 상단 검색 영역 -->
            <div class="panel panel-inverse search">
                <div class="panel-heading">
                    <h4 class="panel-title"></h4>
                    <div class="panel-heading-btn">
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    </div>
                </div>
                
                <div class="panel-body search-box">

                    <!-- 검색조건-등록일  -->
                    <div class="form-group">
                        <h3 class="col-form-label">등록일</h3>
                        <div class="clearfix">
                            <div class="input-group input-daterange">
                                <input type="text" class="form-control form-control-sm" name="start" placeholder="날짜 시작">
                                <input type="text" class="form-control form-control-sm" name="end" placeholder="날짜 종료">
                            </div>
                        </div>
                    </div>
                    <!-- /.검색조건-등록일 -->

                    <!-- 검색조건 추가시 해당 부분 반복 -->
                    <div class="form-group">
                        <h3 class="col-form-label">제조사</h3>
                        <div class="clearfix">
                            <select class="form-control form-control-sm inline">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </div>
                    </div>

                    <!-- * 검색조건 마지막 칸 -->
                    <div class="form-group flex-grow-1">
                        <h3 class="col-form-label">
                            검색
                        </h3>
                        <div class="clearfix">
                            <select class="form-control form-control-sm inline">
                                <option>전체</option>
                                <option>제목</option>
                                <option>내용</option>
                                <option>작성자</option>
                            </select>
                            <input type="input" class="form-control form-control-sm inline" id="" placeholder="">
                            <button href="javascript:;" class="btn btn-sm btn-search bg-theme"><i class="fa fa-search" aria-hidden="true"></i> 조회</button>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /.테이블 상단 검색 영역 -->

            <!-- 리스트 테이블 -->
            <div class="panel panel-inverse">
                <div class="panel-body">

                    <div class="btn-area">
                        <a type="button" id="insertBtn" class="btn btn-sm bg-theme"><i class="fa fa-pencil" aria-hidden="true"></i> 등록</a>
                    </div>

                    <div class="table-reaponsive">
                        <table id="data-table-default" class="table datatable table-striped table-bordered table-td-valign-middle">
                            <thead>
                                <tr>
                                    <th width="1%">No</th>
                                    <th class="text-nowrap">제조사</th>
                                    <th class="text-nowrap">제목</th>
                                    <th class="text-nowrap">내용</th>
                                    <th class="text-nowrap">첨부파일</th>
                                    <th class="text-nowrap">담당자</th>
                                    <th class="text-nowrap">등록일</th>
                                </tr>
                            </thead>
                            <tbody>
															<c:forEach items="${boardList}" var="list">
																<tr>
																		<td><c:out value="${list.boardId}"/></td>
																		<td><c:out value="${list.company}"/></td>
																		<td><c:out value="${list.title}"/></td>
																		<td><c:out value="${list.content}"/></td>
																		<td><c:out value="${list.orgName}"/></td>
																		<td><c:out value="${list.regId}"/></td>
																		<!-- <td><c:out value="${list.regDate}"/></td> -->
																		<td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regDate}"/></td>
																</tr>
															</c:forEach>
                            </tbody>
                        </table>
                    </div>
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
        <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
        <!-- end scroll to top btn -->
    </div>
    <!-- end page container -->

<script>
    var FormPlugins = function () {
        "use strict";
        return {
            //main function
            init: function () {
                handleDatepicker();
            }
        };
    }();    
    $('.input-daterange').datepicker({
        //todayBtn: "linked",
        todayHighlight:true,
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: false,
        autoclose: true,
        language: 'ko'
    }).datepicker("setDate", new Date())

    $(document).ready(function() {
        $('#data-table-default').DataTable( {
        //"scrollY":        "400px",
        //"scrollCollapse": true,
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering":  false,
        "bInfo": false,
        "entery": false,
        "bDestroy": true, // reinitialise
        } );
    } );

		$('#insertBtn').click(function() {
			$(location).attr('href', 'boardWrite.do');
		} );

		// 게시판 등록 성공 체크
		let result = '<c:out value="${result}"/>';
		checkAlert(result);
    function checkAlert(result){
        if(result === ''){
            return;
        }
        if(result === "addBoardData success"){
            alert("등록이 완료되었습니다.");
        }
    }
</script>

</body>
</html>