<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--
Template Name: Vuexy - Vuejs, HTML & Laravel Admin Dashboard Template
Author: PixInvent
Website: http://www.pixinvent.com/
Contact: hello@pixinvent.com
Follow: www.twitter.com/pixinvents
Like: www.facebook.com/pixinvents
Purchase: https://1.envato.market/vuexy_admin
Renew Support: https://1.envato.market/vuexy_admin
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.

-->
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-ecommerce.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/reelweighbridges/resources/assets/images/Ramky-Logo.png">
    <title>Re Sustainability-Weighbridges</title>
    <!-- Bootstrap Core CSS -->
    <script src="https://accounts.google.com/gsi/client" onload="initClient()" async defer></script>
    <link href="/reelweighbridges/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="/reelweighbridges/resources/assets/plugins/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="/reelweighbridges/resources/assets/plugins/chartist-js/dist/chartist-init.css" rel="stylesheet">
    <link href="/reelweighbridges/resources/assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <link href="/reelweighbridges/resources/assets/plugins/css-chart/css-chart.css" rel="stylesheet">
    <!-- Custom CSS -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link href="/reelweighbridges/resources/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="/reelweighbridges/resources/css/colors/green.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
    (function(i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function() {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o), m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'http://localhost/iwm_weighbridge/App/analytics.js', 'ga');
    ga('create', 'UA-85622565-1', 'auto');
    ga('send', 'pageview');
    </script>
</head>

<body class="fix-header fix-sidebar card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                 <div class="navbar-header">
                   
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                                                     <img src="/reelweighbridges/resources/assets/images/Weighbridges.png" alt="homepage" class="dark-logo" height="60px" width="390px">
                            <!-- Light Logo icon -->
                           
                      
                       
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                        <!-- <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <li class="nav-item"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="icon-arrow-left-circle"></i></a> </li>
                        --> <!-- ============================================================== -->
                        <!-- Comment -->
                        <!-- ============================================================== -->
                       
                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
                      
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
                      
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->
                    
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0" style="
    left: 2rem;
    padding-left: 48rem;
">
                        <li class="nav-item hidden-sm-down">
                          
                         </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="/reelweighbridges/resources/assets/images/users/Ramky-Logo.png" alt="user" class="profile-pic"></a>
                            <div class="dropdown-menu dropdown-menu-right animated flipInY">
                                <ul class="dropdown-user">
                                    <li>
                                        <div class="dw-user-box">
                                           
                                    </div></li><li>
                                     <a class="dropdown-item g_id_signout" href="#" id="signout_button"><i class="fa fa-power-off"></i> Logout</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="flag-icon flag-icon-in"></i></a>
                           
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
      <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-small-cap">PERSONAL</li>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Dashboard </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<%=request.getContextPath() %>/dashboard-wb">MSW Cumulative Dashboard</a></li>
                                <li><a href="<%=request.getContextPath() %>/dashboard-wb-cnd">CND Cumulative Dashboard</a></li>   <li><a href="<%=request.getContextPath() %>/dashboard-wb-bmw">BMW Cumulative Dashboard</a></li>
								<li><a href="<%=request.getContextPath() %>/dashboard-wb-daily">Daily Monitoring</a></li>
								
								 
                                
                            </ul>
                        </li>
                                <!-- <li><a href="wbreport.php">IWM Reports</a></li> -->
                                 <c:if test="${sessionScope.BASE_ROLE eq 'Administrator' }">
                                  <li><a href="<%=request.getContextPath() %>/report/MSW">MSW Reports</a></li>
<li><a href="<%=request.getContextPath() %>/report/CND">C&D Reports</a></li>
								  <li><a href="<%=request.getContextPath() %>/report/BMW">BMW Reports</a></li>  <%-- <li><a href="<%=request.getContextPath() %>/user">Users</a></li> --%> </c:if>
								<li>
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Logs Dashboard</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<%=request.getContextPath() %>/logs/MSW">MSW Logs Dashboard</a></li>
                                <li><a href="<%=request.getContextPath() %>/logs/CND">CND Logs Dashboard</a></li> <li><a href="<%=request.getContextPath() %>/logs/BMW">BMW Logs Dashboard</a></li>
					
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Logs Cumulative Dashboard</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<%=request.getContextPath() %>/report-logs/msw_bilaspur_logs">Bilaspur Logs Report</a></li>
                                <li><a href="<%=request.getContextPath() %>/report-logs/hyd_logs">HYD MSw Logs Report</a></li>
                                <li><a href="<%=request.getContextPath() %>/report-logs/hyd_cnd_logs">HYD CND Logs Report</a></li>
                                <li><a href="<%=request.getContextPath() %>/report-logs/noida_site_log">Noida Logs Report</a></li>
                                <li><a href="<%=request.getContextPath() %>/report-logs/bmw_logs">BMW Logs Report</a></li>
                            </ul>
                        </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
				
				
				
			<!-- 	<marquee attribute_name = "attribute_value"....more attributes>
  Welcome to REEL Weighbridges Monitoring RealTime Transactions
</marquee> -->
    <%--             <div class="row page-titles">
                    <div class="col-md-6 col-8 align-self-center">
				
                        <select id="select2-sbu-container" name="sbu" onchange="changeRecordsOnSBU()">
                        <option value="">Select SBU </option>
                         <c:forEach var="obj" items="${sbuList}">
                        	<option value="${obj.sbu }">${obj.sbu }</option>
                        	</c:forEach>
                        </select>
                       
                    </div>
                   
                </div> --%>
         		<div class="row page-titles">
                    <div class="col-md-6 col-8 align-self-center">
				
                        <h3 class="text-themecolor m-b-0 m-t-0">WeighBridge Dashboard &nbsp;</h3>
                       
                    </div>
                   
                </div>
                
                 
                 
                 
                <div class="row" id="mainDashBoard">
                    <!-- Column -->
                    <c:forEach var="obj" items="${wbList}">
                    <div class="col-lg-3 col-md-6">
                      <div >
                        <div class="card" >
    
                            <div class="card-body">
                                <h4 class="card-title"> 
                               ${obj.project }<span 
                                <c:if test="${obj.sbu eq 'MSW'}">class="badge ms-auto bg-info" </c:if> 
                                      <c:if test="${obj.sbu eq 'CND'}"> class="badge ms-auto bg-warning"</c:if> 
                                       <c:if test="${obj.sbu eq 'BMW'}"> class="badge ms-auto bg-primary"</c:if> 
                               style=" float: right;color: white;
                                
                               ">${obj.sbu }</span>
                               <br> <h6>${obj.project_name }</h6>
                                   <c:if test="${obj.sbu eq 'BMW' }">
                                     <h6>${obj.company }</h6>
								   </c:if>
                               </h4>
                               
                                <div class="text-right">
                                     <h2 class="font-light m-b-0"></h2>
                                     <c:if test="${obj.sbu ne 'BMW' }">
                                      <span class="text-muted">No of WeighBridges&nbsp;:&nbsp; ${obj.no_of_wb }</span><br>
										</span> 
                                     </c:if>
                                   
	                                </div>
	                            </div> 
	                             </div>
                          </div>
                     </div>
                    </c:forEach>
 <!--    <div class="col-lg-3 col-md-6">
                        <div style="background-color: #808080;">
                            <div class="card-body">
                                <h4 class="card-title">HWMP</h4>
                                <div class="text-right"><b>
								  </b>  
				

								
                                
                                      <h2 class="font-light m-b-0"><i class="ti-arrow-up text-danger"></i> </h2>
                                    <span class="text-muted">Sync From&nbsp;:&nbsp; </span><br>

<span class="text-muted">To&nbsp;:&nbsp; </span>

                                </div>
                               
                              
                            </div>
                        </div>
						 </div> -->
					   </div>
				 
				
					 
                <!-- Row -->
                <!-- Row -->
				
					 
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
         <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> , All Rights Reserved | Powered by <a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> .</span></span></p>
    </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
       <script src="/reelweighbridges/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/reelweighbridges/resources/assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="/reelweighbridges/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="/reelweighbridges/resources/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="/reelweighbridges/resources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="/reelweighbridges/resources/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="/reelweighbridges/resources/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="/reelweighbridges/resources/js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <!-- chartist chart -->
    <!-- Chart JS -->
    <!-- Chart JS -->
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="/reelweighbridges/resources/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
   
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
     <form action="<%=request.getContextPath() %>/logout" name="logoutForm" id="logoutForm" method="post">
		<input type="hidden" name="email" id="email"/>
	</form>
     <script src="/reelweighbridges/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
  
    <script>
    
    $(window).on('load',  function(){
    	// $('#date').html($('#dateVal').val());
      })
       const button = document.getElementById("signout_button");
    button.onclick = () => {
      google.accounts.id.disableAutoSelect();
      console.log('User signed out.');
      $("#email").val('');
		$("#logoutForm").submit();
    }
    $(document).ready(function() {
        setInterval(function() {
            location.reload();
        }, 900000); // 900000 milliseconds = 15 minutes
    });
 	document.getElementById("currentYear").innerHTML = new Date().getFullYear();
    	function changeRecordsOnSBU(){
  	        var sbu = $("#select2-sbu-container").val();
  	        if ($.trim(sbu) != "") {
  	        	//$("#select2-sbu-container option:not(:first)").remove();
  	        	$('#mainDashBoard div').remove();
  	        	var myParams = { sbu: sbu};
  	            $.ajax({
  	                url: "<%=request.getContextPath()%>/ajax/getDatawithSBU",
  	                data: myParams, cache: false,async: false,
  	                success: function (data) {
  	                    if (data.length > 0) {
  	                        $.each(data, function (i, val) {
  	                          
  	                        });
  	                    }
  	                },error: function (jqXHR, exception) {
  	                	alert("nooooooo")
  	    	   			      $(".page-loader").hide();
  	       	          	  getErrorMessage(jqXHR, exception);
  	       	     	  }
  	            });
  	        }
    	}
    	
    	 function getErrorMessage(jqXHR, exception) {
 	  	    var msg = '';
 	  	    if (jqXHR.assigned_to_sbu === 0) {
 	  	        msg = 'Not connect.\n Verify Network.';
 	  	    } else if (jqXHR.assigned_to_sbu == 404) {
 	  	        msg = 'Requested page not found. [404]';
 	  	    } else if (jqXHR.assigned_to_sbu == 500) {
 	  	        msg = 'Internal Server Error [500].';
 	  	    } else if (exception === 'parsererror') {
 	  	        msg = 'Requested JSON parse failed.';
 	  	    } else if (exception === 'timeout') {
 	  	        msg = 'Time out error.';
 	  	    } else if (exception === 'abort') {
 	  	        msg = 'Ajax request aborted.';
 	  	    } else {
 	  	        msg = 'Uncaught Error.\n' + jqXHR.responseText;
 	  	    }
 	  	    console.log(msg);
         }
    
    </script>
</body>



</html>