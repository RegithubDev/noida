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
       <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/forms/wizard/bs-stepper.min.css">
          <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/plugins/forms/form-wizard.min.css">
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
    <style>
    .table-container {
		  height: 400px; /* set a fixed height for the container */
		  overflow: auto; /* enable vertical scrolling */
		  width: 973px; /* set a fixed width for the container */
		  overflow-x: auto; /* enable horizontal scrolling if needed */
		}
		table {
		  width: 100%;
		  table-layout: fixed; /* set the table layout to fixed */
		}
		
		thead th {
		  position: sticky; /* fix the position of the header */
		  top: 0; /* set the top position to 0 */
		  z-index: 1; /* set a higher z-index than the table body */
		     background: #f2f4f8;
		  font-family: "Rubik", sans-serif;
		}
		.bs-stepper .bs-stepper-header .step.active .step-trigger .bs-stepper-label .bs-stepper-title {
			   color: #009efb !important;
		}
		.bs-stepper .bs-stepper-header .step.crossed .step-trigger .bs-stepper-label .bs-stepper-title {
			    color: #B9B9C3;
			}
.bs-stepper .bs-stepper-header .step.active .step-trigger .bs-stepper-box {
    background-color: #009efb;
    color: #FFF;
    box-shadow: 0 3px 6px 0 rgba(115,103,240,.4);
}
.bs-stepper .bs-stepper-header .step.crossed .step-trigger .bs-stepper-box {
    background-color: rgba(115,103,240,.12);
    color: #B9B9C3!important;
}
		.bs-stepper .bs-stepper-header .step .step-trigger .bs-stepper-label .bs-stepper-title {
    display: inherit;
    color: #6E6B7B;
    font-weight: 100!important;
    line-height: 1rem;
    margin-bottom: 0;
}
    </style>
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
				
				
				
		<!-- 		<marquee attribute_name = "attribute_value"....more attributes>
  Welcome to RE Weighbridges Monitoring RealTime Transactions
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
				
                        <h3 class="text-themecolor m-b-0 m-t-0">Weighbridge Daily Transactions Report&nbsp;</h3>
                       
                    </div>
                   
                </div>
                
                 
                 
                 
                <div class="content-body"><!-- Dashboard Analytics Start -->


<!-- Vertical Wizard -->
<section class="vertical-wizard">
  <div class="bs-stepper vertical vertical-wizard-example">
    <div class="bs-stepper-header">
    <c:forEach var="obj" items="${logsList}" varStatus="index">
      <div class="step" data-target="#account-details-vertical${index.count }" role="tab"  id="account-details-vertical-trigger${index.count }">
        <button type="button" class="step-trigger"> <%-- //onclick="getSiteDetails('${index.count }','${obj.project }')" --%>
          <span class="bs-stepper-label">
            <span class="bs-stepper-title">${obj.project }</span>
          </span>
        </button>
      </div>
	</c:forEach>
    </div>
    <div class="bs-stepper-content">
     <c:forEach var="obj" items="${logsList}" varStatus="index">
      <div
        id="account-details-vertical${index.count }"
        class="content"
        role="tabpanel"
        aria-labelledby="account-details-vertical-trigger${index.count }"
      >
        <div class="content-header">
          <h5 class="mb-0">${obj.sbu } - ${obj.curDAte }</h5>
        </div>
        <div class="table-container">
       <table id="datatable-${obj.sbu }" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
       	<thead>
       	<tr>
          
		    <th style="width: 50%">Last Sync on </th>
		    <th style="width: 50%">Last Sync since</th>
			
		  </tr>
       	</thead>
       	<tbody>
       	  <c:forEach var="objjr" items="${obj.transactionsList}" varStatus="index">
       	  <tr>
		
			<td>${objjr.PTCDT1 }</td>
			<td>
			 <c:if test="${objjr.days_diff eq '0' }"> <i class="ti-arrow-up text-success"></i> Today</c:if>
			 <c:if test="${objjr.days_diff ne '0' }"> <i class="ti-arrow-up text-danger"></i> ${objjr.days_diff } Days ago</c:if>
			</td>
     	</tr>
       	  </c:forEach>
       	  <c:if test="${empty obj.transactionsList }">   <tr style="text-align: center;"> <td colspan="9">No Logs found</td></tr></c:if>
       	 
       	</tbody>
       </table>
       </div>
      </div>
	</c:forEach>
      
      
    </div>
  </div>
</section>
<!-- /Vertical Wizard -->
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
          <script src="/reelweighbridges/resources/vendors/js/forms/wizard/bs-stepper.min.js"></script>
         <script src="/reelweighbridges/resources/js/scripts/forms/form-wizard.min.js"></script>
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
	 <form action="<%=request.getContextPath()%>/export-project-data" name="exportListForm" id="exportListForm" target="_blank" method="post">	
     
          <input type="hidden" name="sbu" id="sbu" />
         <input type="hidden" name="SITEID" id="SITEID" />
         <input type="hidden" name="project" id="project" />
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
    function exportProject(count,project,sbu){
    	 var SITEID = $('#wbId'+count).val();
     	 $("#SITEID").val(SITEID);
     	 $("#project").val(project);
     	 $("#sbu").val(sbu);
     	 $("#exportListForm ").submit();
  	}
    </script>
</body>



</html>