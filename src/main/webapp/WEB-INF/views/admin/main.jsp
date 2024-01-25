<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생|관리자 페이지
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
<!--   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" /> -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/main.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
</head>

<body class="">
  <div class="wrapper ">

	<%-- 사이드바 --%>
	<jsp:include page="admin_sidebar.jsp"/>
	
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">공생</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <%-- search,홈페이지이동,채팅 --%>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="now-ui-icons ui-1_zoom-bold"></i>
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons ui-1_calendar-60"></i>
                  <p>
                    <span class="d-lg-none d-md-block">달력</span>
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons ui-2_chat-round"></i>
                  <p>
                    <span class="d-lg-none d-md-block">채팅</span>
                  </p>
                </a>
              </li>
<!--               <li class="nav-item dropdown"> -->
<!--                 <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                   <i class="now-ui-icons ui-1_send"></i> -->
<!--                   <p> -->
<!--                     <span class="d-lg-none d-md-block">Some Actions</span> -->
<!--                   </p> -->
<!--                 </a> -->
<!--                 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink"> -->
<!--                   <a class="dropdown-item" href="#">Action</a> -->
<!--                   <a class="dropdown-item" href="#">Another action</a> -->
<!--                   <a class="dropdown-item" href="#">Something else here</a> -->
<!--                 </div> -->
<!--               </li> -->
              <%-- 공생 메인 홈페이지로 이동 --%>
              <li class="nav-item">
                <a class="nav-link" href="../">
                  <i class="now-ui-icons shopping_shop"></i>
                  <p>
                    <span class="d-lg-none d-md-block">공식 홈</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <!-- 차트 -->
      <div class="panel-header panel-header-lg">

			<!-- 현재 총 결제 금액 -->
		    <div class="now_total">
			    <div class="row row_main">
			    	<div class="col-md-3">
			    		<span class="now_dateTime">2024년 1월 25일 목요일</span>
				   	</div>
				   	<div class="col-md-3">
					    <span class="now_total_pay">현재 총 결제 금액 : </span>&nbsp;&nbsp;
					    <span class="now_total_price"><b style="font-size: 30px;">0 </b>원</span>
				   	</div>
				   	<div class="col-md-3">
					    <span class="now_total_pay">현재 총 예약 건수 : </span>&nbsp;&nbsp;
					    <span class="now_total_price"><b style="font-size: 30px;">0 </b>건</span>
			   	 	</div>
			    </div>
		    </div>
      </div>
<!--       <div class="content"> -->
        
<!--         <div class="row"> -->
<!--           <div class="col-md-6"> -->
<!--             <div class="card  card-tasks"> -->
<!--               <div class="card-header "> -->
<!--                 <h5 class="card-category">Backend development</h5> -->
<!--                 <h4 class="card-title">Tasks</h4> -->
<!--               </div> -->
<!--               <div class="card-body "> -->
<!--                 <div class="table-full-width table-responsive"> -->
<!--                   <table class="table"> -->
<!--                     <tbody> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           <div class="form-check"> -->
<!--                             <label class="form-check-label"> -->
<!--                               <input class="form-check-input" type="checkbox" checked> -->
<!--                               <span class="form-check-sign"></span> -->
<!--                             </label> -->
<!--                           </div> -->
<!--                         </td> -->
<!--                         <td class="text-left">Sign contract for "What are conference organizers afraid of?"</td> -->
<!--                         <td class="td-actions text-right"> -->
<!--                           <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task"> -->
<!--                             <i class="now-ui-icons ui-2_settings-90"></i> -->
<!--                           </button> -->
<!--                           <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove"> -->
<!--                             <i class="now-ui-icons ui-1_simple-remove"></i> -->
<!--                           </button> -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           <div class="form-check"> -->
<!--                             <label class="form-check-label"> -->
<!--                               <input class="form-check-input" type="checkbox"> -->
<!--                               <span class="form-check-sign"></span> -->
<!--                             </label> -->
<!--                           </div> -->
<!--                         </td> -->
<!--                         <td class="text-left">Lines From Great Russian Literature? Or E-mails From My Boss?</td> -->
<!--                         <td class="td-actions text-right"> -->
<!--                           <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task"> -->
<!--                             <i class="now-ui-icons ui-2_settings-90"></i> -->
<!--                           </button> -->
<!--                           <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove"> -->
<!--                             <i class="now-ui-icons ui-1_simple-remove"></i> -->
<!--                           </button> -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           <div class="form-check"> -->
<!--                             <label class="form-check-label"> -->
<!--                               <input class="form-check-input" type="checkbox" checked> -->
<!--                               <span class="form-check-sign"></span> -->
<!--                             </label> -->
<!--                           </div> -->
<!--                         </td> -->
<!--                         <td class="text-left">Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit -->
<!--                         </td> -->
<!--                         <td class="td-actions text-right"> -->
<!--                           <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task"> -->
<!--                             <i class="now-ui-icons ui-2_settings-90"></i> -->
<!--                           </button> -->
<!--                           <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove"> -->
<!--                             <i class="now-ui-icons ui-1_simple-remove"></i> -->
<!--                           </button> -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                     </tbody> -->
<!--                   </table> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="card-footer "> -->
<!--                 <hr> -->
<!--                 <div class="stats"> -->
<!--                   <i class="now-ui-icons loader_refresh spin"></i> Updated 3 minutes ago -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-md-6"> -->
<!--             <div class="card"> -->
<!--               <div class="card-header"> -->
<!--                 <h5 class="card-category">All Persons List</h5> -->
<!--                 <h4 class="card-title"> Employees Stats</h4> -->
<!--               </div> -->
<!--               <div class="card-body"> -->
<!--                 <div class="table-responsive"> -->
<!--                   <table class="table"> -->
<!--                     <thead class=" text-primary"> -->
<!--                       <th> -->
<!--                         Name -->
<!--                       </th> -->
<!--                       <th> -->
<!--                         Country -->
<!--                       </th> -->
<!--                       <th> -->
<!--                         City -->
<!--                       </th> -->
<!--                       <th class="text-right"> -->
<!--                         Salary -->
<!--                       </th> -->
<!--                     </thead> -->
<!--                     <tbody> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           Dakota Rice -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Niger -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Oud-Turnhout -->
<!--                         </td> -->
<!--                         <td class="text-right"> -->
<!--                           $36,738 -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           Minerva Hooper -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Curaçao -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Sinaai-Waas -->
<!--                         </td> -->
<!--                         <td class="text-right"> -->
<!--                           $23,789 -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           Sage Rodriguez -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Netherlands -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Baileux -->
<!--                         </td> -->
<!--                         <td class="text-right"> -->
<!--                           $56,142 -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           Doris Greene -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Malawi -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Feldkirchen in Kärnten -->
<!--                         </td> -->
<!--                         <td class="text-right"> -->
<!--                           $63,542 -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <td> -->
<!--                           Mason Porter -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Chile -->
<!--                         </td> -->
<!--                         <td> -->
<!--                           Gloucester -->
<!--                         </td> -->
<!--                         <td class="text-right"> -->
<!--                           $78,615 -->
<!--                         </td> -->
<!--                       </tr> -->
<!--                     </tbody> -->
<!--                   </table> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="row"> -->
<!--           <div class="col-lg-4"> -->
<!--             <div class="card card-chart"> -->
<!--               <div class="card-header"> -->
<!--                 <h5 class="card-category">Global Sales</h5> -->
<!--                 <h4 class="card-title">Shipped Products</h4> -->
<!--                 <div class="dropdown"> -->
<!--                   <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown"> -->
<!--                     <i class="now-ui-icons loader_gear"></i> -->
<!--                   </button> -->
<!--                   <div class="dropdown-menu dropdown-menu-right"> -->
<!--                     <a class="dropdown-item" href="#">Action</a> -->
<!--                     <a class="dropdown-item" href="#">Another action</a> -->
<!--                     <a class="dropdown-item" href="#">Something else here</a> -->
<!--                     <a class="dropdown-item text-danger" href="#">Remove Data</a> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="card-body"> -->
<!--                 <div class="chart-area"> -->
<%--                   <canvas id="lineChartExample"></canvas> --%>
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="card-footer"> -->
<!--                 <div class="stats"> -->
<!--                   <i class="now-ui-icons arrows-1_refresh-69"></i> Just Updated -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-lg-4 col-md-6"> -->
<!--             <div class="card card-chart"> -->
<!--               <div class="card-header"> -->
<!--                 <h5 class="card-category">2018 Sales</h5> -->
<!--                 <h4 class="card-title">All products</h4> -->
<!--                 <div class="dropdown"> -->
<!--                   <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown"> -->
<!--                     <i class="now-ui-icons loader_gear"></i> -->
<!--                   </button> -->
<!--                   <div class="dropdown-menu dropdown-menu-right"> -->
<!--                     <a class="dropdown-item" href="#">Action</a> -->
<!--                     <a class="dropdown-item" href="#">Another action</a> -->
<!--                     <a class="dropdown-item" href="#">Something else here</a> -->
<!--                     <a class="dropdown-item text-danger" href="#">Remove Data</a> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="card-body"> -->
<!--                 <div class="chart-area"> -->
<%--                   <canvas id="lineChartExampleWithNumbersAndGrid"></canvas> --%>
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="card-footer"> -->
<!--                 <div class="stats"> -->
<!--                   <i class="now-ui-icons arrows-1_refresh-69"></i> Just Updated -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--           <div class="col-lg-4 col-md-6"> -->
<!--             <div class="card card-chart"> -->
<!--               <div class="card-header"> -->
<!--                 <h5 class="card-category">Email Statistics</h5> -->
<!--                 <h4 class="card-title">24 Hours Performance</h4> -->
<!--               </div> -->
<!--               <div class="card-body"> -->
<!--                 <div class="chart-area"> -->
<%--                   <canvas id="barChartSimpleGradientsNumbers"></canvas> --%>
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="card-footer"> -->
<!--                 <div class="stats"> -->
<!--                   <i class="now-ui-icons ui-2_time-alarm"></i> Last 7 days -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->

     <div class="content">
     <div class="row row_main">
		<!-- 왼쪽 섹션 -->
		<div class="col-sm-6">
		    <!-- 오늘의 할일 -->
		    <div class="card">
		        <div class="card-header">오늘의 할일</div>
		        <hr>
		        <div class="card-body todo_count">
		            <p>신규등록클래스 : <b>0</b>건</p>
		            <p>문의 : <b>0</b>건</p>
		            <p>신고 : <b>0</b>건</p>
		        </div>
		    <!-- 일정 -->
		        <div class="card-header">1월 일정</div>
		        <hr>
		        <div class="card-body">
		            <!-- 여기에 일정 표기 -->
		           <table class="table">
		                <tr>
		                    <th>번호</th>
		                    <th>목록</th>
		                    <th>시작일</th>
		                    <th>종료일</th>
		                </tr>
		                <tr>
		                    <td>1</td>
		                    <td>출석체크 이벤트</td>
		                    <td>2024/01/01</td>
		                    <td>2024/01/31</td>
		                </tr>
		            </table>
		        </div>
		    </div>
		</div>
		
		<!-- 오른쪽 섹션 -->
		<div class="col-sm-6">
		    <!-- 통계 표 -->
		    <div class="row row_main">
			    <div class="card">
			        <div class="card-body">
			            <table class="table">
			                <tr>
			                    <th>현재 방문자 수</th>
			                    <th>누적 방문자 수</th>
			                    <th>신규 가입자 수</th>
			                    <th>누적 가입자 수</th>
			                </tr>
			                <tr>
			                    <td>0명</td>
			                    <td>0명</td>
			                    <td>0명</td>
			                    <td>0명</td>
			                </tr>
			            </table>
			        </div>
			    </div>
		    </div>
		    <div class="row">
			    <div class="card">
			        <div class="card-body">
			            <table class="table">
			                <tr>
			                    <th>이번달 예약 건수 </th>
			                    <th>누적 예약 건수</th>
			                    <th>이번달 결제 총 금액</th>
			                    <th>누적 결제 총 금액</th>
			                </tr>
			                <tr>
			                    <td>0건</td>
			                    <td>0건</td>
			                    <td>0원</td>
			                    <td>0원</td>
			                </tr>
			            </table>
			        </div>
			    </div>
		    </div>
		</div>
	</div>
	    <div class="row row_main">
	    	<div style="width: 850px;"></div>
	    	<div style="width: 850px;"></div>
		    <a href="${pageContext.request.contextPath }/admin/dashboard" class="more_dashboard">더보기</a>
		    <div class="col-sm-12">
				    <!-- 그래프 공간 -->
				    <div class="card card-chart">
				    	<div class="card-header">
				    		<h5 class="card-category">1월</h5>
				    		<h4 class="card-title">매출액</h4>
				    	</div>
				        <div class="card-body">
				            <!-- 여기에 그래프를 넣어주세요. -->
		        	        <canvas id="bigDashboardChart"></canvas>
				        </div>
				    </div>
				    
				    
				    
				    <!-- 더보기 링크 -->
			</div>
		</div>
		 <div class="row row_main">
          <div class="col-lg-4">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">Global Sales</h5>
                <h4 class="card-title">Shipped Products</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                    <i class="now-ui-icons loader_gear"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                    <a class="dropdown-item text-danger" href="#">Remove Data</a>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExample"></canvas>
                </div>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons arrows-1_refresh-69"></i> Just Updated
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">2018 Sales</h5>
                <h4 class="card-title">All products</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                    <i class="now-ui-icons loader_gear"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                    <a class="dropdown-item text-danger" href="#">Remove Data</a>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExampleWithNumbersAndGrid"></canvas>
                </div>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons arrows-1_refresh-69"></i> Just Updated
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">Email Statistics</h5>
                <h4 class="card-title">24 Hours Performance</h4>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="barChartSimpleGradientsNumbers"></canvas>
                </div>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <i class="now-ui-icons ui-2_time-alarm"></i> Last 7 days
                </div>
              </div>
            </div>
          </div>
        </div>
<!--       바텀 -->
      <footer class="footer">
<!--         <div class=" container-fluid "> -->
<!--           <nav> -->
<!--             <ul> -->
<!--               <li> -->
<!--                 <a href="https://www.creative-tim.com"> -->
<!--                   Creative Tim -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="http://presentation.creative-tim.com"> -->
<!--                   About Us -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li> -->
<!--                 <a href="http://blog.creative-tim.com"> -->
<!--                   Blog -->
<!--                 </a> -->
<!--               </li> -->
<!--             </ul> -->
<!--           </nav> -->
<!--           <div class="copyright" id="copyright"> -->
<!--             &copy; <script> -->
<!--                document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear())) -->
<!--             </script>, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>. -->
<!--           </div> -->
<!--         </div> -->
      </footer>
    </div>
  </div>
  </div>
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
</body>

</html>