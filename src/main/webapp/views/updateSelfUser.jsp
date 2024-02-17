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
  <title>User Profile</title>
       <link rel="icon" type="image/png" sizes="96x96" href="/reirm/resources/images/protect-favicon.png" >
	<script src="/reirm/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/reirm/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/pickers/pickadate/pickadate.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
        <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/plugins/extensions/ext-component-toastr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
    <!-- BEGIN: Theme CSS-->
     <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/extensions/sweetalert2.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/plugins/extensions/ext-component-sweet-alerts.min.css"/>">
    
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/core/menu/menu-types/horizontal-menu.min.css">
        <link rel="stylesheet" type="text/css" href="/reirm/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/plugins/forms/pickers/form-pickadate.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/style.css">
    <!-- END: Custom CSS-->
<style>
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
.mb-3 {
    margin-bottom: 7rem!important;
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
</style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
	<jsp:include page="../views/layout/header.jsp"></jsp:include> 
<jsp:include page="../views/layout/userActivityCheck.jsp"></jsp:include>

    <!-- END: Header-->
    <!-- BEGIN: Main Menu-->
    <div class="horizontal-menu-wrapper">
      <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-shadow menu-border container-xxl" role="navigation" data-menu="menu-wrapper" data-menu-type="floating-nav">
        <div class="navbar-header">
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item me-auto"><a class="navbar-brand" href="#"><span class="brand-logo">
                  <svg viewbox="0 0 139 95" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                    <defs>
                      <lineargradient id="linearGradient-1" x1="100%" y1="10.5120544%" x2="50%" y2="89.4879456%">
                        <stop stop-color="#000000" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                      <lineargradient id="linearGradient-2" x1="64.0437835%" y1="46.3276743%" x2="37.373316%" y2="100%">
                        <stop stop-color="#EEEEEE" stop-opacity="0" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                    </defs>
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="Artboard" transform="translate(-400.000000, -178.000000)">
                       			         <img src="<%=request.getContextPath() %>/resources/images/logo/protect-main.png" width="50" height="40" class="card-img">

                      </g>
                    </g>
                  </svg></span>
                <h2 class="brand-text mb-0"></h2></a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i></a></li>
          </ul>
        </div>
        <div class="shadow-bottom"></div>
        <!-- Horizontal menu content-->
 			<jsp:include page="../views/layout/menu.jsp"></jsp:include> 
      </div>
    </div>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div> 
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
           <div class="content-header-left col-md-8 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">User </h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                  <%--    <c:if test="${sessionScope.BASE_ROLE ne 'User' }">   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li></c:if> --%>

                    <li class="breadcrumb-item active">Profile Update
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
   
        </div>
        <div class="content-body mb-3"><!-- Dashboard Analytics Start -->
<section id="dashboard-analytics" >
<div class="row match-height" >
<div class="col-lg-12 col-sm-12 col-12" style="box-sizing:border-box; display:table;">
        <form id="addUserForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-self-user" method="post" class="form-horizontal" role="form" >
        <input type="hidden" name="email_id" value="${sessionScope.USER_EMAIL}" />
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">SBU</label><span class="required"> *</span>
            <select 
              id="select2-base_sbu-container"
              name="base_sbu"
              class="select2 form-select formSelect"
              aria-label="Default select example" onchange="setProjectDD();setDeptDD();"
            >
              <option value="">Select SBU</option>
             	<c:forEach var="obj" items="${sbuList}">
					<option value="${obj.sbu_code }"   <c:if test="${sessionScope.BASE_SBU  eq obj.sbu_code}">selected</c:if> >[${obj.sbu_code }] - ${obj.sbu_name }</option>
				</c:forEach>
            </select>
             <span id="select2-base_sbu-containerError" class="error-msg" ></span>
          </div>
          
          
           <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Project</label><span class="required"> *</span>
            <select 
              id="select2-base_project-container"
              name="base_project"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Project</option>
             	 <c:forEach var="obj" items="${projectsList}">
					<option value="${obj.project_code }"   <c:if test="${sessionScope.BASE_PROJECT_CODE  eq obj.project_code}">selected</c:if> >[${obj.project_code }] - ${obj.project_name }</option>
				</c:forEach> 
            </select>
             <span id="select2-base_project-containerError" class="error-msg" ></span>
          </div>
          
          
          
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Department</label><span class="required"> *</span>
            <select 
              id="select2-base_department-container"
              name="base_department"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Department</option>
             	 <c:forEach var="obj" items="${deptList}">
					<option value="${obj.department_code }"   <c:if test="${sessionScope.BASE_DEPARTMENT  eq obj.department_code}">selected</c:if>>[${obj.department_code }] - ${obj.department_name }</option>
				</c:forEach> 
            </select>
             <span id="select2-base_department-containerError" class="error-msg" ></span>
          </div>
           <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">User Reporting To</label><span class="required"> </span>
            <select 
              id="select2-reporting_to_add-container"
              name="reporting_to"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Reporting To</option>
             	 <c:forEach var="obj" items="${objList}">
					<option value="${obj.user_id }" <c:if test="${sessionScope.REPORTING_TO  eq obj.user_id}">selected</c:if>>[${obj.user_id }] - ${obj.user_name }</option>
				</c:forEach>
            </select>
             <span id="select2-reporting_to_add-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">Mobile number</label><span class="required"> </span>
            <input
              type="number"
              id="contact_number_add"
              name="contact_number"
              class="form-control"
              placeholder="eg : +91 ##########"
              value="${sessionScope.NUMBER}"
            />
             <span id="contact_number_addError" class="error-msg" ></span>
          </div>
		
        
          <div class="col-12 text-center mt-2 pt-50">
            <a class="btn btn-primary me-1" onclick="addUser();">Update Profile</a>
          </div>

        </form>
</div>

 							
</section>

           
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
 																					
 <!-- End: Customizer-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> , All Rights Reserved | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> .</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->

 
        <script src="/reirm/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/reirm/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/reirm/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/reirm/resources/vendors/js/charts/apexcharts.min.js"></script>
    <script src="/reirm/resources/vendors/js/extensions/toastr.min.js"></script>
    <script src="/reirm/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/reirm/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/reirm/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/reirm/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/reirm/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/reirm/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->
 <script src="/reirm/resources/js/materialize-v.1.0.min.js "  ></script>
    <script src="/reirm/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/reirm/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/reirm/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/reirm/resources/js/dataTables.material.min.js"  ></script>
      <script src="/reirm/resources/js/moment-v2.8.4.min.js"  ></script>
    <!-- BEGIN: Theme JS-->
    <script src="/reirm/resources/js/core/app-menu.min.js"></script>
    <script src="/reirm/resources/js/core/app.min.js"></script>
    <script src="/reirm/resources/js/scripts/customizer.min.js"></script>
     <script src="/reirm/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
   <script src="/reirm/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/reirm/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/reirm/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/reirm/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/reirm/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/reirm/resources/js/scripts/pages/modal-edit-user.min.js"></script>
    <script src="/reirm/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- BEGIN: Page JS-->
     <script src="/reirm/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="/reirm/resources/js/scripts/pages/app-invoice-list.min.js"></script>
    <script src="/reirm/resources/vendors/js/file-uploaders/dropzone.min.js"></script>
    <script src="/reirm/resources/js/scripts/forms/form-file-uploader.min.js"></script>

    <!-- BEGIN: Page JS-->
    <script src="/reisp/resources/js/scripts/pages/auth-register.min.js"></script>
    <!-- END: Page JS-->

    
  <form action="<%=request.getContextPath()%>/export-irm" name="exportIRMForm" id="exportIRMForm" target="_blank" method="post">	
      
        <input type="hidden" name=project_code id="exportSBU_filter" />
        <input type="hidden" name="sbu_code" id="exportProject_Code_filter" />
         <input type="hidden" name=status id="exportIRM_filter" />
        <input type="hidden" name="incident_type" id="exportCompany_Code_filter" />
         <input type="hidden" name="from_and_to" id="exportFrom_filter" />
	</form>
	
	  <form action="<%=request.getContextPath()%>/update-irm-form" name="updateIRM" id="updateIRM" method="post">	
      
        <input type="hidden" name=document_code id="document_codeUpdate" />
        <input type="hidden" name=approver_type id="approver_typeUpdate" />
        <input type="hidden" name=status id="statusUpdate" />
        <input type="hidden" name=approver_code id="approver_codeUpdate" />
        
	</form>
	
    <script>
    $(window).on('load',  function(){
        
    })
      function addUser(){
	    	var flag = validator.form();
	    	if(flag){ // validation perform
	        	document.getElementById("addUserForm").submit();	
	    	}
	    }
      var validator =	$('#addUserForm').validate({
	    	 errorClass: "my-error-class",
	    	 validClass: "my-valid-class",
	    	 ignore: ":hidden:not(.select2 form-select)",
	    		    rules: {
	    		 		  "user_name": {
	    			 		required: true
	    			 	  },"user_id": {										
	    			 		required: true
	    			 	  },"contact_number": {
	    			 		  required: false,
	    			 		  minlength:10,
	    			 		  maxlength:10,
	    			 		  number: true
	    			 	  },"email_id": {
	    		 		    required: true,
	    	                   email: true
	    			 	  },"base_project": {										
		    			 		required: true
		  			 	  },"base_sbu": {										
		    			 		required: true
		  			 	  },"base_department": {										
		    			 		required: true
		  			 	  },"reporting_to": {
	    		 			required: false
	    		 	  	  }
		  		 	},
		  		    messages: {
		  		 		 "user_name": {
		  				 	required: 'Required',
		  			 	  },"user_id": {
		  			 		required: 'Required'
		  			 	  },"contact_number": {
		  		 			required: 'Required'
		  		 	  	  },"email_id": {
		  		 			required: 'Required'
		  		 	  	  },"base_project": {
		  		 			required: 'Required'
		  		 	  	  },"base_sbu": {
		  		 			required: 'Required'
		  		 	  	  },"base_department": {
		  		 			required: 'Required'
		  		 	  	  },"reporting_to": {
	    		 			required: 'Required'
	    		 	  	  }
			       		},
	       		errorPlacement:function(error, element){
	       		 	if (element.attr("id") == "user_name_add" ){
	    				 document.getElementById("user_name_addError").innerHTML="";
	    		 		 error.appendTo('#user_name_addError');
	    			}else if(element.attr("id") == "user_id_add" ){
	    			   document.getElementById("user_id_addError").innerHTML="";
	    		 	   error.appendTo('#user_id_addError');
	    			}else if(element.attr("id") == "contact_number_add" ){
	    				document.getElementById("contact_number_addError").innerHTML="";
	    			 	error.appendTo('#contact_number_addError');
	    			}else if(element.attr("id") == "email_add" ){
	    				document.getElementById("email_addError").innerHTML="";
	    			 	error.appendTo('#email_addError');
	    			}else if(element.attr("id") == "select2-base_sbu-container" ){
	    				document.getElementById("select2-base_sbu-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_sbu-containerError');
	    			}else if(element.attr("id") == "select2-base_project-container" ){
	    				document.getElementById("select2-base_project-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_project-containerError');
	    			}else if(element.attr("id") == "select2-base_department-container" ){
	    				document.getElementById("select2-base_department-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_department-containerError');
	    			}else if(element.attr("id") == "select2-reporting_to_add-container" ){
	    				document.getElementById("select2-reporting_to_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-reporting_to_add-containerError');
	    			}else{
	    					error.insertAfter(element);
	    	        } 
	       		},invalidHandler: function (form, validator) {
	                var errors = validator.numberOfInvalids();
	                if (errors) {
	                    var position = validator.errorList[0].element;
	                    jQuery('html, body').animate({
	                        scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
	                    }, 1000);
	                }
	            },submitHandler:function(form){
	    	    	//form.submit();
	    	    }
	    	}); 
	    	
	    /* 	$.validator.addMethod("strongePassword", function(value) {
	    	    return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) && /[a-z]/.test(value) && /\d/.test(value) && /[A-Z]/.test(value);
	    	},"The password must contain at least 1 number, at least 1 lower case letter, and at least 1 upper case letter");  */

	    	$('.formSelect').change(function(){
	    	    if ($(this).val() != ""){
	    	        $(this).valid();
	    	    }
	    	});
	    	
	    	$('input').change(function(){
	    	    if ($(this).val() != ""){
	    	        $(this).valid();
	    	    }
	    	});
	    	
	    	function setProjectDD(){
	    		var base_sbu = $("#select2-base_sbu-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_project-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getProjectListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                        	var proC = '${sessionScope.BASE_PROJECT_CODE}'
		                        	var selectedTag = "";
		                        	if(proC == val.project_code){
		                        		selectedTag = "selected"
				                             $("#select2-base_project-container").append('<option value="' + val.project_code + '""' + selectedTag + '">' + $.trim(val.project_code)+" - "+ $.trim(val.project_name) +'</option>');
		                        	}else{
			                             $("#select2-base_project-container").append('<option value="' + val.project_code + '">' + $.trim(val.project_code)+" - "+ $.trim(val.project_name) +'</option>');

		                        	}
		                        	
		                        	
		                        });
		                    }
		                },error: function (jqXHR, exception) {
		    	   			      $(".page-loader").hide();
		       	          	  getErrorMessage(jqXHR, exception);
		       	     	  }
		            });
		        }
		    }
	    	
	    	function setDeptDD(){
	    		var base_sbu = $("#select2-base_sbu-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_department-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getDeptListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                        	var deptC = '${sessionScope.BASE_DEPARTMENT}'
			                        	var selectedTag = "";
			                        	if(deptC == val.department_code){
			                        		selectedTag = "selected"
					                             $("#select2-base_department-container").append('<option value="' + val.department_code + '""' + selectedTag + '">' + $.trim(val.department_code)+" - "+ $.trim(val.department_name) +'</option>');
			                        	}else{
				                             $("#select2-base_department-container").append('<option value="' + val.department_code + '">' + $.trim(val.department_code)+" - "+ $.trim(val.department_name) +'</option>');

			                        	}
			                        	
		                        });
		                    }
		                },error: function (jqXHR, exception) {
		    	   			      $(".page-loader").hide();
		       	          	  getErrorMessage(jqXHR, exception);
		       	     	  }
		            });
		        }
		    }	
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>