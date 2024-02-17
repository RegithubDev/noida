<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--
Template Name: Safety - Vuejs, HTML & Laravel Admin Dashboard Template
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
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/table-datatable-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:16 GMT -->
<head>
   

 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 IRM with unlimited possibilities.">
    <meta name="keywords" content="admin template,IRM, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>MSW Reports</title>
    <script src="/reelweighbridges/resources/js/jQuery-v.3.5.min.js"  ></script>
    <link rel="icon" type="image/png" sizes="16x16" href="/reelweighbridges/resources/assets/images/Ramky-Logo.png">
   <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/pickers/pickadate/pickadate.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
        <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/plugins/extensions/ext-component-toastr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
    <!-- BEGIN: Theme CSS-->
     <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/extensions/sweetalert2.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/plugins/extensions/ext-component-sweet-alerts.min.css"/>">
    
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
       <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/forms/wizard/bs-stepper.min.css">
          <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/plugins/forms/form-wizard.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/core/menu/menu-types/horizontal-menu.min.css">
        <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/plugins/forms/pickers/form-pickadate.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/style.css">
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
    <!-- BEGIN: Custom CSS-->
    <!-- END: Custom CSS-->

<style>
.form-check {
    padding-left: 0.785rem !important;
}
.mdl-grid{
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
} 
.dt-table{
height: 100%;
}
.modal-content {
 width: 85% !important;
}
.modal {
    width: 100% !important;
}
.required{
	color:red;
}
.my-error-class {
 	 color:red;
}
.my-valid-class {
 	 color:green;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
     left: -25% !important;
    margin-top: 1p% !important;
}
body {
    font-family: var(--bs-body-font-family) !important;
}
.dark-layout h1, .dark-layout h2, .dark-layout h3, .dark-layout h4, .dark-layout h5, .dark-layout h6, .dark-layout span  {
    color: #D0D2D6;
}
html body .p-0 {
    padding: 0px;
    top: 2%;
    margin-top: 2.5rem!important;
}
.select2-container--classic .select2-selection--single .select2-selection__arrow b, .select2-container--default .select2-selection--single .select2-selection__arrow b {
    background-image: url(data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23d8d6de\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-chevron-down\'%3E%3Cpolyline points=\'6 9 12 15 18 9\'%3E%3C/polyline%3E%3C/svg%3E);
    background-size: 18px 14px,18px 14px !important;
    background-repeat: no-repeat !important;
    height: 1rem !important;
    padding-right: 1.5rem !important;
    margin-left: 0 !important;
    margin-top: 0 !important;
    left: -8px !important;
    border-style: none !important;
}
/* td {
    border: 1px solid #000;
} */

tr td:last-child {
    width: 1%;
    white-space: nowrap;
}
.page-loader{
		    background: #332e2ec2!important;
		    position: fixed;
		    width: 100%;
		    height: 100%;
		    top: 0;
		    left: 0;
		    z-index: 1000;
		}
::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: black;
  opacity: 1; /* Firefox */
}
.table-container {
  height: 400px; /* set a fixed height for the container */
  overflow: auto; /* enable vertical scrolling */
  width: 1111px; /* set a fixed width for the container */
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
  background-color: #fff; /* set the background color of the header */
}
th {
  font-weight: bold;
}
.horizontal-layout.navbar-floating:not(.blank-page) .app-content {
        padding: calc(0rem + 0.45rem* 2 + 1.3rem) 2rem 0!important;

}
</style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                 <div class="navbar-header">
                                                     <img src="/reelweighbridges/resources/assets/images/Weighbridges.png" alt="homepage" class="dark-logo" height = '60px' width = '390px' />
                       
                </div>
                <div class="navbar-collapse">
             
                    </ul>
                    <ul class="navbar-nav my-lg-0" style="
    left: 2rem;
    padding-left: 48rem;
">
                        <li class="nav-item hidden-sm-down">
                          
                         </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="/reelweighbridges/resources/assets/images/users/Ramky-Logo.png" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated flipInY">
                                <ul class="dropdown-user">
                                    <li>
                                        <div class="dw-user-box">
                                           
                                    <li> <a class="dropdown-item g_id_signout" href="#"  id="signout_button" ><i class="fa fa-power-off"></i> Logout</a></li>
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

    <!-- END: Header-->
    <!-- BEGIN: Main Menu-->
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
                               <!--  <li><a href="wbreport.php">IWM Reports</a></li> -->
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
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div> 
      <div class=""></div>
      <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
           <div class="content-header-left col-md-8 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">MSW</h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                  <%--    <c:if test="${sessionScope.BASE_ROLE ne 'User' }">   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li></c:if> --%>

                    <li class="breadcrumb-item active">MSW - Report DashBoard
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          
           <div class="content-header-right col-md-4 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
       <!--   <button class="btn col-md-12" data-bs-toggle="tooltip" data-bs-original-title="Download Incidents Details"   style="margin-top: 17px; width: 42%;
            background-color: #14e014 !important;color: white !important;"  onclick="exportIRM();"><i class="fa fa-download" aria-hidden="true"></i> Download</button> -->
     
              </div>
            </div>
          </div>
          
          
        </div>
        <div class="content-body"><!-- Dashboard Analytics Start -->


<!-- Vertical Wizard -->
<section class="vertical-wizard">
  <div class="bs-stepper vertical vertical-wizard-example">
    <div class="bs-stepper-header">
    <c:forEach var="obj" items="${projectsList}" varStatus="index">
      <div class="step" data-target="#account-details-vertical${index.count }" role="tab"  id="account-details-vertical-trigger${index.count }">
       <input type="hidden" id="wbId${index.count }" value="${obj.wb_site_id }"/>
        <button type="button" class="step-trigger"> <%-- //onclick="getSiteDetails('${index.count }','${obj.project }')" --%>
          <span class="bs-stepper-box" onclick="exportProject('${index.count }','${obj.project }','${obj.sbu }');"><i class="fa fa-download" aria-hidden="true"></i> </span>
          <span class="bs-stepper-label">
            <span class="bs-stepper-title">${obj.project }</span>
          </span>
        </button>
      </div>
	</c:forEach>
    </div>
    <div class="bs-stepper-content">
     <c:forEach var="obj" items="${projectsList}" varStatus="index">
      <div
        id="account-details-vertical${index.count }"
        class="content"
        role="tabpanel"
        aria-labelledby="account-details-vertical-trigger${index.count }"
      >
        <div class="content-header">
          <h5 class="mb-0">${obj.project_name } - ${obj.curDAte }</h5>
        </div>
        <div class="table-container">
       <table id="datatable-${obj.project }" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
       	<thead>
       	<tr>
            <th style="width: 7%"><b>TRNO</b></th>
            <th style="width: 10%"><b>Vehicle Number</b></th>
		    <th style="width: 9%"><b>Date In</b></th>
		    <th style="width: 10%"><b>Time In</b></th>
			<th style="width: 9%"><b>Date Out</b></th>
			<th style="width: 10%"><b>Time Out</b></th>
		    <th style="width: 7%"><b>First Weight</b></th>
			<th style="display:none;"><b>Site Id</b></th>
		    <th style="width: 7%"><b>Second Weight</b></th>
			<th style="width: 7%"><b>Net Weight</b></th>
		  </tr>
       	</thead>
       	<tbody>
       	  <c:forEach var="objjr" items="${obj.transactionsList}" varStatus="index">
       	  <tr>
			<td>${objjr.TRNO }</td>
			<td>${objjr.VEHICLENO }</td>
			<td>${objjr.DATEIN }</td>
			<td>${objjr.TIMEIN }</td>
			<td>${objjr.DATEOUT }</td>
			<td>${objjr.TIMEOUT }</td>
			<td>${objjr.FIRSTWEIGHT }</td>
			<td style="display:none;">${objjr.SITEID }</td>
			<td>${objjr.SECONDWEIGHT }</td>
			<td>${objjr.NETWT }</td>
     	</tr>
       	  </c:forEach>
       	  <c:if test="${empty obj.transactionsList }">   <tr > <td >No Transactions found</td></tr></c:if>
       	 
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
 																					
   <div class="page-loader" style="display: none;">
	  <div class="preloader-wrapper big active">
	    <div class="spinner-layer spinner-blue-only">
	      <div class="circle-clipper left">
	        <div class="circle"></div>
	      </div><div class="gap-patch">
	        <div class="circle"></div>
	      </div><div class="circle-clipper right">
	        <div class="circle"></div>
	      </div>
	    </div>
	  </div>
	</div> 
 																					
 																					


    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> , All Rights Reserved | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> .</span></span></p>
    </footer>
    <!-- END: Footer-->

 
    <!-- BEGIN: Vendor JS-->
    <!-- BEGIN Vendor JS-->
 <form action="<%=request.getContextPath()%>/export-project-data" name="exportListForm" id="exportListForm" target="_blank" method="post">	
     
          <input type="hidden" name="sbu" id=""sbu"" />
         <input type="hidden" name="SITEID" id="SITEID" />
         <input type="hidden" name="project" id="project" />
	</form>
    <!-- BEGIN: Page Vendor JS-->
      <script src="/reelweighbridges/resources/vendors/js/forms/wizard/bs-stepper.min.js"></script>
         <script src="/reelweighbridges/resources/js/scripts/forms/form-wizard.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/extensions/toastr.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->
 <script src="/reelweighbridges/resources/js/materialize-v.1.0.min.js "  ></script>
    <script src="/reelweighbridges/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/reelweighbridges/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/reelweighbridges/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/reelweighbridges/resources/js/dataTables.material.min.js"  ></script>
      <script src="/reelweighbridges/resources/js/moment-v2.8.4.min.js"  ></script>

    <!-- END: Page JS-->

	
    <script>
    $('#InitiateIRM').on('show.bs.modal', function (event) {
        $(document).ready(function() {
            $('.select2').select2({
                dropdownParent: $('#InitiateIRM')
            });
        }); 
    });
    var clickedTags = "";
      $(window).on("load",(function(){
    
          $('.modal').modal({ dismissible: false });
          window.localStorage.setItem("clickedTags", "");
         // getSiteDetails('');
         }));
      	document.getElementById("currentYear").innerHTML = new Date().getFullYear();

	    function exportIRM(){
	    	 var project_code = $("#select2-Project_filter-container").val();
	         var sbu_code = $("#select2-sbu_filter-container").val();
	         var incident_type = $("#select2-incident_type_filter-container").val();
	         var status = $("#select2-status_filter-container").val();
	         var from_date = $("#from_date").val();
		     var to_date = $("#to_date").val();
		     var from_and_to = $("#from_and_to").val();
		     
		     $("#exportSBU_filter").val(sbu_code);
	     	 $("#exportProject_Code_filter").val(project_code);
	    	 $("#exportIRM_filter").val(status);
	     	 $("#exportCompany_Code_filter").val(incident_type);
	     	 $("#exportFrom_filter").val(from_and_to);
	     	 $("#exportIRMForm ").submit();
	  	}

	    function getSiteDetails(count,tag){
	    	var wb_site_id = $('#wbId'+count).val();
	    	$(".page-loader").show();
	     	table = $('#datatable-'+tag).DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-'+tag).DataTable({
				"bStateSave": true,  
	     		fixedHeader: true,
	         	//Default: Page display length
					"iDisplayLength" : 10,
					"iData" : {
						"start" : 52
					},"iDisplayStart" : 0,
					"drawCallback" : function() {
					},
	            columnDefs: [],
	            // "ScrollX": true,
	            //"scrollCollapse": true,
	            "sScrollX": "100%",
	            "sScrollXInner": "100%",
	            "bScrollCollapse": true,
	            "initComplete" : function() {
					}
	        }).rows().remove().draw();
			table.state.clear();		
		 	var myParams = {wb_site_id: wb_site_id};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getMSWDataWithSiteID",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		                   	key++;
		                   	rowArray.push($.trim(val.TRNO));
		                	rowArray.push($.trim(val.VEHICLENO));  
		                   	rowArray.push($.trim(val.DATEIN));
		                   	rowArray.push($.trim(val.TIMEIN));
 		                	rowArray.push($.trim(val.incident_type));
		                   	rowArray.push($.trim(val.DATEOUT));
		                	rowArray.push($.trim(val.TIMEOUT));
		                	rowArray.push($.trim(val.FIRSTWEIGHT));  
		                	rowArray.push(val.SECONDWEIGHT);
		                	rowArray.push($.trim(val.NETWT));
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
			 $(".page-loader").hide();
	    } 

	    function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.incident_type === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.incident_type == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.incident_type == 500) {
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

	    function exportProject(count,project,sbu){
	    	 var SITEID = $('#wbId'+count).val();
	     	 $("#SITEID").val(SITEID);
	     	 $("#project").val(project);
	     	 $("#sbu").val(sbu);
	     	 $("#exportListForm ").submit();
	  	}
	    
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>