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
    <link href="<%=request.getContextPath()%>/assets/plugins/highcharts/css/highcharts.css" rel="stylesheet" /><!-- 추가 css: highcharts -->
    <!-- /.추가 CSS -->
    <link href="../dist/css/custom.css" rel="stylesheet" /><!-- 항상 CSS 최하단-->
    <!-- ================ /.CSS STYLE ================== -->

    <!-- ================== 필수 JS ===================== -->
	<script src="<%=request.getContextPath()%>/assets/js/app.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/theme/default.js"></script>
    <!-- ================ /.필수 JS ===================== -->

    <!-- ================== 페이지 추가 JS =============== -->
    <!-- highcharts -->
    <script src="<%=request.getContextPath()%>/assets/plugins/highcharts/highcharts.js"></script>
    <!-- 정보 카드 스타일02 영역 스파클린 차트 -->
    <script src="<%=request.getContextPath()%>/assets/plugins/apexcharts/dist/apexcharts.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/demo/dashboard-v3.js"></script>
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
        <div id="content" class="content main">

						<!-- 정보 카드 영역 -->
						<div class="row card-style01">
							<!-- begin col-3 -->
							<div class="col-xl-3 col-md-6">
								<div class="widget widget-stats bg-teal">
									<div class="stats-icon stats-icon-lg"><i class="fa fa-globe fa-fw"></i></div>
									<div class="stats-content">
										<div class="stats-title">TODAY'S VISITS</div>
										<div class="stats-number">7,842,900</div>
										<div class="stats-progress progress">
											<div class="progress-bar" style="width: 70.1%;"></div>
										</div>
										<div class="stats-desc">Better than last week (70.1%)</div>
									</div>
								</div>
							</div>
							<!-- end col-3 -->
							<!-- begin col-3 -->
							<div class="col-xl-3 col-md-6">
								<div class="widget widget-stats bg-blue">
									<div class="stats-icon stats-icon-lg"><i class="fa fa-dollar-sign fa-fw"></i></div>
									<div class="stats-content">
										<div class="stats-title">TODAY'S PROFIT</div>
										<div class="stats-number">180,200</div>
										<div class="stats-progress progress">
											<div class="progress-bar" style="width: 40.5%;"></div>
										</div>
										<div class="stats-desc">Better than last week (40.5%)</div>
									</div>
								</div>
							</div>
							<!-- end col-3 -->
							<!-- begin col-3 -->
							<div class="col-xl-3 col-md-6">
								<div class="widget widget-stats bg-indigo">
									<div class="stats-icon stats-icon-lg"><i class="fa fa-archive fa-fw"></i></div>
									<div class="stats-content">
										<div class="stats-title">NEW ORDERS</div>
										<div class="stats-number">38,900</div>
										<div class="stats-progress progress">
											<div class="progress-bar" style="width: 76.3%;"></div>
										</div>
										<div class="stats-desc">Better than last week (76.3%)</div>
									</div>
								</div>
							</div>
							<!-- end col-3 -->
							<!-- begin col-3 -->
							<div class="col-xl-3 col-md-6">
								<div class="widget widget-stats bg-purple">
									<div class="stats-icon stats-icon-lg"><i class="fa fa-comment-alt fa-fw"></i></div>
									<div class="stats-content">
										<div class="stats-title">NEW COMMENTS</div>
										<div class="stats-number">3,988</div>
										<div class="stats-progress progress">
											<div class="progress-bar" style="width: 54.9%;"></div>
										</div>
										<div class="stats-desc">Better than last week (54.9%)</div>
									</div>
								</div>
							</div>
							<!-- end col-3 -->
						</div>
						<!-- /.정보 카드 영역 -->
						
						<!-- 정보 카드 스타일02 영역 -->
						<div class="row card-style02">
							<!-- begin col-6 -->
							<div class="col-xl-6">
								<!-- begin card -->
								<div class="card border-0 m-b-10 overflow-hidden bg-dark text-white">
									<!-- begin card-body -->
									<div class="card-body">
										<!-- begin row -->
										<div class="row">
											<!-- begin col-7 -->
											<div class="col-xl-7 col-lg-8">
												<!-- begin title -->
												<div class="mb-3 text-grey">
													<b>TOTAL SALES</b>
													<span class="ml-2">
														<i class="fa fa-info-circle" data-toggle="popover" data-trigger="hover" data-title="Total sales"
															data-placement="top"
															data-content="Net sales (gross sales minus discounts and returns) plus taxes and shipping. Includes orders from all sales channels."></i>
													</span>
												</div>
												<!-- end title -->
												<!-- begin total-sales -->
												<div class="d-flex mb-1">
													<h2 class="mb-0">$<span data-animation="number" data-value="64559.25">0.00</span></h2>
													<div class="ml-auto mt-n1 mb-n1">
														<div id="total-sales-sparkline"></div>
													</div>
												</div>
												<!-- end total-sales -->
												<!-- begin percentage -->
												<div class="mb-3 text-grey">
													<i class="fa fa-caret-up"></i> <span data-animation="number" data-value="33.21">0.00</span>% compare to
													last week
												</div>
												<!-- end percentage -->
												<hr class="bg-white-transparent-2" />
												<!-- begin row -->
												<div class="row text-truncate">
													<!-- begin col-6 -->
													<div class="col-6">
														<div class="f-s-12 text-grey">Total sales order</div>
														<div class="f-s-18 m-b-5 f-w-600 p-b-1" data-animation="number" data-value="1568">0</div>
														<div class="progress progress-xs rounded-lg bg-dark-darker m-b-5">
															<div class="progress-bar progress-bar-striped rounded-right bg-teal" data-animation="width"
																data-value="55%" style="width: 0%"></div>
														</div>
													</div>
													<!-- end col-6 -->
													<!-- begin col-6 -->
													<div class="col-6">
														<div class="f-s-12 text-grey">Avg. sales per order</div>
														<div class="f-s-18 m-b-5 f-w-600 p-b-1">$<span data-animation="number" data-value="41.20">0.00</span>
														</div>
														<div class="progress progress-xs rounded-lg bg-dark-darker m-b-5">
															<div class="progress-bar progress-bar-striped rounded-right" data-animation="width" data-value="55%"
																style="width: 0%"></div>
														</div>
													</div>
													<!-- end col-6 -->
												</div>
												<!-- end row -->
											</div>
											<!-- end col-7 -->
											<!-- begin col-5 -->
											<div class="col-xl-5 col-lg-4 align-items-center d-flex justify-content-center">
												<img src="<%=request.getContextPath()%>/assets/images/img-1.svg" height="150px" class="d-none d-lg-block" />
											</div>
											<!-- end col-5 -->
										</div>
										<!-- end row -->
									</div>
									<!-- end card-body -->
								</div>
								<!-- end card -->
							</div>
							<!-- end col-6 -->
							<!-- begin col-6 -->
							<div class="col-xl-6">
								<!-- begin row -->
								<div class="row">
									<!-- begin col-6 -->
									<div class="col-sm-6">
										<!-- begin card -->
										<div class="card border-0 text-truncate m-b-10 bg-dark text-white">
											<!-- begin card-body -->
											<div class="card-body">
												<!-- begin title -->
												<div class="mb-3 text-grey">
													<b class="mb-3">CONVERSION RATE</b>
													<span class="ml-2"><i class="fa fa-info-circle" data-toggle="popover" data-trigger="hover"
															data-title="Conversion Rate" data-placement="top"
															data-content="Percentage of sessions that resulted in orders from total number of sessions."
															data-original-title="" title=""></i></span>
												</div>
												<!-- end title -->
												<!-- begin conversion-rate -->
												<div class="d-flex align-items-center mb-1">
													<h2 class="text-white mb-0"><span data-animation="number" data-value="2.19">0.00</span>%</h2>
													<div class="ml-auto">
														<div id="conversion-rate-sparkline"></div>
													</div>
												</div>
												<!-- end conversion-rate -->
												<!-- begin percentage -->
												<div class="mb-2 text-grey">
													<i class="fa fa-caret-down"></i> <span data-animation="number" data-value="0.50">0.00</span>% compare to
													last week
												</div>
												<!-- end percentage -->
												<!-- begin info-row -->
												<div class="d-flex mb-3">
													<div class="d-flex align-items-center">
														<i class="fa fa-circle text-red f-s-8 mr-2"></i>
														Added to cart
													</div>
													<div class="d-flex align-items-center ml-auto">
														<div class="text-grey f-s-11"><i class="fa fa-caret-up"></i> <span data-animation="number"
																data-value="262">0</span>%</div>
														<div class="width-50 text-right pl-2 f-w-600"><span data-animation="number"
																data-value="3.79">0.00</span>%</div>
													</div>
												</div>
												<!-- end info-row -->
												<!-- begin info-row -->
												<div class="d-flex mb-2">
													<div class="d-flex align-items-center">
														<i class="fa fa-circle text-warning f-s-8 mr-2"></i>
														Reached checkout
													</div>
													<div class="d-flex align-items-center ml-auto">
														<div class="text-grey f-s-11"><i class="fa fa-caret-up"></i> <span data-animation="number"
																data-value="11">0</span>%</div>
														<div class="width-50 text-right pl-2 f-w-600"><span data-animation="number"
																data-value="3.85">0.00</span>%</div>
													</div>
												</div>
												<!-- end info-row -->
												<!-- begin info-row -->
												<div class="d-flex">
													<div class="d-flex align-items-center">
														<i class="fa fa-circle text-lime f-s-8 mr-2"></i>
														Sessions converted
													</div>
													<div class="d-flex align-items-center ml-auto">
														<div class="text-grey f-s-11"><i class="fa fa-caret-up"></i> <span data-animation="number"
																data-value="57">0</span>%</div>
														<div class="width-50 text-right pl-2 f-w-600"><span data-animation="number"
																data-value="2.19">0.00</span>%</div>
													</div>
												</div>
												<!-- end info-row -->
											</div>
											<!-- end card-body -->
										</div>
										<!-- end card -->
									</div>
									<!-- end col-6 -->
									<!-- begin col-6 -->
									<div class="col-sm-6">
										<!-- begin card -->
										<div class="card border-0 text-truncate m-b-10 bg-dark text-white">
											<!-- begin card-body -->
											<div class="card-body">
												<!-- begin title -->
												<div class="mb-3 text-grey">
													<b class="mb-3">STORE SESSIONS</b>
													<span class="ml-2"><i class="fa fa-info-circle" data-toggle="popover" data-trigger="hover"
															data-title="Store Sessions" data-placement="top"
															data-content="Number of sessions on your online store. A session is a period of continuous activity from a visitor."
															data-original-title="" title=""></i></span>
												</div>
												<!-- end title -->
												<!-- begin store-session -->
												<div class="d-flex align-items-center mb-1">
													<h2 class="text-white mb-0"><span data-animation="number" data-value="70719">0</span></h2>
													<div class="ml-auto">
														<div id="store-session-sparkline"></div>
													</div>
												</div>
												<!-- end store-session -->
												<!-- begin percentage -->
												<div class="mb-3 text-grey">
													<i class="fa fa-caret-up"></i> <span data-animation="number" data-value="9.5">0.00</span>% compare to last
													week
												</div>
												<!-- end percentage -->
												<!-- begin info-row -->
												<div class="d-flex mb-2">
													<div class="d-flex align-items-center">
														<i class="fa fa-circle text-teal f-s-8 mr-2"></i>
														Mobile
													</div>
													<div class="d-flex align-items-center ml-auto">
														<div class="text-grey f-s-11"><i class="fa fa-caret-up"></i> <span data-animation="number"
																data-value="25.7">0.00</span>%</div>
														<div class="width-50 text-right pl-2 f-w-600"><span data-animation="number" data-value="53210">0</span>
														</div>
													</div>
												</div>
												<!-- end info-row -->
												<!-- begin info-row -->
												<div class="d-flex mb-2">
													<div class="d-flex align-items-center">
														<i class="fa fa-circle text-blue f-s-8 mr-2"></i>
														Desktop
													</div>
													<div class="d-flex align-items-center ml-auto">
														<div class="text-grey f-s-11"><i class="fa fa-caret-up"></i> <span data-animation="number"
																data-value="16.0">0.00</span>%</div>
														<div class="width-50 text-right pl-2 f-w-600"><span data-animation="number" data-value="11959">0</span>
														</div>
													</div>
												</div>
												<!-- end info-row -->
												<!-- begin info-row -->
												<div class="d-flex">
													<div class="d-flex align-items-center">
														<i class="fa fa-circle text-aqua f-s-8 mr-2"></i>
														Tablet
													</div>
													<div class="d-flex align-items-center ml-auto">
														<div class="text-grey f-s-11"><i class="fa fa-caret-up"></i> <span data-animation="number"
																data-value="7.9">0.00</span>%</div>
														<div class="width-50 text-right pl-2 f-w-600"><span data-animation="number" data-value="5545">0</span>
														</div>
													</div>
												</div>
												<!-- end info-row -->
											</div>
											<!-- end card-body -->
										</div>
										<!-- end card -->
									</div>
									<!-- end col-6 -->
								</div>
								<!-- end row -->
							</div>
							<!-- end col-6 -->
						</div>
						<!-- /.정보 카드 스타일02 영역 -->
						
            <!-- 게시판 요약 영역 -->
            <div class="row">
                <!-- 게시판 기본 -->
                <div class="col-md-6">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="clearfix">
                                <h4 class="pull-left">자료실</h4>
                                <button id="moreBtn01" type="button" class="btn btn-xs btn-theme pull-right" onclick="">
                                    <i class="fa fa fa-plus"></i> 더보기
                                </button>
                            </div>
                            <div class="table-responsive">
                                <table class="tbl_hor" cellspacing="0">
																	<thead>
																		<tr>
																				<th width="1%">No</th>
																				<th class="text-nowrap">제조사</th>
																				<th class="text-nowrap">제목</th>
																				<th class="text-nowrap">첨부파일</th>
																				<th class="text-nowrap">담당자</th>
																				<th class="text-nowrap">등록일</th>
																		</tr>
																</thead>
																<tbody>
																	<c:forEach items="${boardList}" begin="0" end="4" step="1"  var="list">
																		<tr>
																				<td><c:out value="${list.boardId}"/></td>
																				<td><c:out value="${list.company}"/></td>
																				<td><c:out value="${list.title}"/></td>
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
                </div>
                <!-- /.게시판 기본 -->
                <!-- 게시판 기본 -->
                <div class="col-md-6">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="clearfix">
                                <h4 class="pull-left">게시판 타이틀</h4>
                                <button type="button" class="btn btn-xs btn-theme pull-right" onclick="">
                                    <i class="fa fa fa-plus"></i> 더보기
                                </button>
                            </div>
                            <div class="table-responsive">
                                <table class="tbl_hor" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th scope="col" nowrap>No</th>
                                            <th scope="col" nowrap>제목</th>
                                            <th scope="col" nowrap>작성자</th>
                                            <th scope="col" nowrap>등록일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>5</td>
                                            <td class="subject"><a href="javascript:;">제목 들어가는 곳</a></td>
                                            <td>홍길동</td>
                                            <td scope="row" nowrap>2010-01-01</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td class="subject"><a href="javascript:;">제목 들어가는 곳</a></td>
                                            <td>홍길동</td>
                                            <td scope="row" nowrap>2010-01-01</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td class="subject"><a href="javascript:;">제목 들어가는 곳</a></td>
                                            <td>홍길동</td>
                                            <td scope="row" nowrap>2010-01-01</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td class="subject"><a href="javascript:;">제목 들어가는 곳</a></td>
                                            <td>홍길동</td>
                                            <td scope="row" nowrap>2010-01-01</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td class="subject"><a href="javascript:;">제목 들어가는 곳</a></td>
                                            <td>홍길동</td>
                                            <td scope="row" nowrap>2010-01-01</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.게시판 기본 -->
            </div>
            <!-- /.게시판 요약 영역 -->

            <!-- 차트 영역 -->
            <div class="row">
                <!-- 차트 -->
                <div class="col-md-6">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="clearfix">
                                <h4 class="pull-left">차트 타이틀</h4>
                            </div>
                            <div class="chart-area">
                                <figure class="highcharts-figure">
                                    <div id="container2"></div>
                                </figure>
                                <script>
                                    // Create the chart
                                    Highcharts.chart('container2', {
                                    chart: {
                                        type: 'column',
                                        height:200,
                                        BackgroundColor: null
                                    },
                                    credits: {
                                        enabled: false
                                    },
                                    title: {
                                        //text: '통계 제목'
                                        text:null
                                    },
                                    accessibility: {
                                        announceNewData: {
                                        enabled: true
                                        }
                                    },
                                    
                                    yAxis: {
                                        title: {
                                        text: 'Number of Employees'
                                        }
                                    },

                                    xAxis: {
                                        accessibility: {
                                        rangeDescription: 'Range: 2010 to 2017'
                                        }
                                    },

                                    legend: {
                                        enabled: false, //필요시 항목 삭제
                                        layout: 'vertical',
                                        align: 'right',
                                        verticalAlign: 'middle'
                                    },

                                    plotOptions: {
                                        series: {
                                        label: {
                                            connectorAllowed: false
                                        },
                                        pointStart: 2010
                                        }
                                    },

                                    series: [{
                                        name: 'Installation',
                                        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
                                    }, {
                                        name: 'Manufacturing',
                                        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
                                    }, {
                                        name: 'Sales & Distribution',
                                        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
                                    }, {
                                        name: 'Project Development',
                                        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
                                    }, {
                                        name: 'Other',
                                        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
                                    }],

                                    responsive: {
                                        rules: [{
                                        condition: {
                                            maxWidth: 500
                                        },
                                        chartOptions: {
                                            legend: {
                                            layout: 'horizontal',
                                            align: 'center',
                                            verticalAlign: 'bottom'
                                            }
                                        }
                                        }]
                                    }
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.차트 -->
                <!-- 차트 -->
                <div class="col-md-6">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="clearfix">
                                <h4 class="pull-left">차트 타이틀</h4>
                            </div>
                            <div class="chart-area">
                                <figure class="highcharts-figure">
                                    <div id="container3"></div>
                                </figure>
                                <script>
                                    // Create the chart
                                    Highcharts.chart('container3', {
                                    chart: {
                                        height:200,
                                        BackgroundColor: null
                                    },
                                    credits: {
                                        enabled: false
                                    },
                                    title: {
                                        //text: '통계 제목'
                                        text:null
                                    },
                                    accessibility: {
                                        announceNewData: {
                                        enabled: true
                                        }
                                    },
                                    
                                    yAxis: {
                                        title: {
                                        text: 'Number of Employees'
                                        }
                                    },

                                    xAxis: {
                                        accessibility: {
                                        rangeDescription: 'Range: 2010 to 2017'
                                        }
                                    },

                                    legend: {
                                        enabled: false, //필요시 항목 삭제
                                        layout: 'vertical',
                                        align: 'right',
                                        verticalAlign: 'middle'
                                    },

                                    plotOptions: {
                                        series: {
                                        label: {
                                            connectorAllowed: false
                                        },
                                        pointStart: 2010
                                        }
                                    },

                                    series: [{
                                        name: 'Installation',
                                        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
                                    }, {
                                        name: 'Manufacturing',
                                        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
                                    }, {
                                        name: 'Sales & Distribution',
                                        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
                                    }, {
                                        name: 'Project Development',
                                        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
                                    }, {
                                        name: 'Other',
                                        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
                                    }],

                                    responsive: {
                                        rules: [{
                                        condition: {
                                            maxWidth: 500
                                        },
                                        chartOptions: {
                                            legend: {
                                            layout: 'horizontal',
                                            align: 'center',
                                            verticalAlign: 'bottom'
                                            }
                                        }
                                        }]
                                    }
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.차트 -->
            </div>
            <!-- /.차트 영역 -->
            
        </div>
        <!-- end #content -->

        <!-- begin #footer -->
		<div id="footer" class="footer">
			<%@include file="/inc/footer.jsp"%>
		</div>
		<!-- end #footer -->
        
        <!-- begin scroll to top btn -->
        <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
            data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
        <!-- end scroll to top btn -->
    </div>
    <!-- end page container -->


<script>
	$('#moreBtn01').click( function() {
		$(location).attr('href', 'boardList.do');
	});
</script>
</body>
</html>