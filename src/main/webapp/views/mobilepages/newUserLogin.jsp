<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-register-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:17 GMT -->
<head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 IRM with unlimited possibilities.">
    <meta name="keywords" content="admin template,IRM, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>IRM - Submit</title>
       <link rel="icon" type="image/png" sizes="96x96" href="/reirm/resources/images/protect-favicon.png" >
	<script src="/reirm/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" href="/reirm/resources/vendor/css/pages/page-auth.css">
      <link rel="apple-touch-icon" href="/reirm/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
     <link rel="stylesheet" type="text/css" href="/reirm/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!-- BEGIN: Theme CSS-->
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
    <!-- END: Page CSS-->
      <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/file-uploaders/dropzone.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/plugins/forms/form-file-uploader.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/style.css">
    <!-- END: Custom CSS-->
    <!-- END: Custom CSS-->
<style>
.select2-container--default .select2-selection--single .select2-selection__arrow b {
    border-color: #888 transparent transparent transparent;
    border-style: hidden !important; 
    border-width: 5px 4px 0 4px;
    height: 0;
    left: 50%;
    margin-left: -4px;
    margin-top: -2px;
    position: absolute;
    top: 50%;
    width: 0;
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
</style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu blank-page navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="blank-page">
    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><div class="auth-wrapper auth-basic px-2">
  <div class="auth-inner my-2">
    <!-- Register basic -->
    <div class="card mb-0">
      <div class="card-body">
        <a  class="brand-logo">
          <svg
                  viewBox="0 0 139 95"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  height="24"
                >
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
			         <img src="<%=request.getContextPath() %>/resources/images/logo/P2-LoginPage.png" width="" height="40" class="card-imgs" >
                    </g>
                  </g>
                </svg>
          <h2 class="brand-text text-primary ms-1 text-center">IRM User Creation </h2>
        </a>

       <!--  <p class="card-text mb-2">Make your app management easy and fun!</p> -->
<div class="col-lg-12 col-sm-12 col-12" style="box-sizing:border-box; display:table;">
        <form id="addUserForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-new-user" method="post" class="form-horizontal" role="form" >
        <input name="newUser" type="hidden" value="new"/>
          <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">User id</label><span class="required"> *</span>
            <input
              type="text"
              id="user_id_add"
              name="user_id"
              class="form-control"
              placeholder="EMP ID"
              value=""
            />
             <span id="user_id_addError" class="error-msg" ></span>
          </div>
		<div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserFirstName">User Name</label><span class="required"> *</span>
            <input
              type="text"
              id="user_name_add"
              name="user_name"
              class="form-control"
              placeholder="enter name"
              value="${name }"
              data-msg="Please enter your first name"
            />
             <span id="user_name_addError" class="error-msg" ></span>
          </div>
    <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">Mobile number</label><span class="required"> </span>
            <input
              type="number"
              id="contact_number_add"
              name="contact_number"
              class="form-control"
              placeholder="eg : +91 ##########"
              value=""
            />
             <span id="contact_number_addError" class="error-msg" ></span>
          </div>
		<div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserFirstName">E mail</label><span class="required"> *</span>
            <input
              type="email"
              id="email_add"
              name="email_id"
              class="form-control"
              placeholder="eg : email@gmail.com"
              value="${email }" readonly
              data-msg="Please enter your first name"
            />
             <span id="email_addError" class="error-msg" ></span>
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
             	 <c:forEach var="obj" items="${userList}">
					<option value="${obj.user_id }" >[${obj.user_id }] - ${obj.user_name }</option>
				</c:forEach>
            </select>
             <span id="select2-reporting_to_add-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">SBU</label><span class="required"> *</span>
            <select 
              id="select2-base_sbu-container"
              name="base_sbu"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select SBU</option>
             	<c:forEach var="obj" items="${sbuList}">
					<option value="${obj.sbu_code }"  >[${obj.sbu_code }] - ${obj.sbu_name }</option>
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
					<option value="${obj.project_code }"   >[${obj.project_code }] - ${obj.project_name }</option>
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
					<option value="${obj.department_code }"  >[${obj.department_code }] - ${obj.department_name }</option>
				</c:forEach>
            </select>
             <span id="select2-base_department-containerError" class="error-msg" ></span>
          </div>
          
          
          <div class="col-12 text-center mt-2 pt-50">
            <a class="btn btn-primary me-1" onclick="addUser();">Sign Up</a>
          </div>

        </form>
</div>
        <p class="text-center mt-2">
          <span>Already User?</span>
          <a href="<%=request.getContextPath() %>/login">
            <span>Sign in instead</span>
          </a>
        </p>
      </div>
    </div>
    <!-- /Register basic -->
  </div>
</div>

        </div>
      </div>
    </div>
    <!-- END: Content-->


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
	    			 		  maxlength:14,
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
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-register-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:17 GMT -->
</html>