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
   
<style>
.mdl-grid{
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
} 
.dt-table{
display: block !important;
height: 100%;
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
.input-field .searchable_label{
      		font-size:0.85rem;
        } 
        td,th{
        	box-sizing:content-box !important;
        }
 	 .dataTables_filter label{
         	content:'';
         }
         .right-btns .fa{
         	position:relative;
         	top:-35px;
         	right: 32px !important;
         }
         .right-btns .fa+.fa{
         	right: 18px !important;
         }
         .horizontal-layout.navbar-floating:not(.blank-page) .app-content {
    padding: calc(2rem + 0.4499999999999993rem* 2 + 1.3rem) 1rem 0!important;
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
</style>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 User with unlimited possibilities.">
    <meta name="keywords" content="admin template,User, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>User</title>
    <link rel="icon" type="image/png" sizes="16x16" href="/reelweighbridges/resources/assets/images/Ramky-Logo.png">

	<script src="/reelweighbridges/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/reelweighbridges/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
            <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/plugins/extensions/ext-component-toastr.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/core/menu/menu-types/horizontal-menu.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/reelweighbridges/resources/css/style.css">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->


    <!-- END: Header-->

    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
      <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
        <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">Re WeighBridges</h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                       <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/dashboard-home">Home</a>
                    </li>
                  
                    <li class="breadcrumb-item active">User Profile
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Dashboard Analytics Start -->
<section id="dashboard-analytics">
<div class="row match-height" >
<div class="col-lg-6 col-sm-6 col-12"  style="box-sizing:border-box; display:table;">
<div class="col-lg-6 col-sm-6 col-12"  style="box-sizing:border-box; display:table;">
  <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;width: 0rem;display:table-cell;">
       <div class="col-md-12 mb-1" style="
    width: 13rem;
">
              <select class="select2 form-select" id="select2-sbu_filter-container"  >
                <option value="">Select SBU</option>
              </select>
 	   </div>
          <h2 class="fw-bolder mt-1"></h2>
    </div>
      <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1" style="
    width: 13rem;
">
              <select class="select2 form-select" id="select2-project_filter-container"  >
                <option value="">Select Project</option>
                
              </select>
 	   </div>
          <h2 class="fw-bolder mt-1"></h2>
    </div>
      <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1" style="
    width: 13rem;
">
              <select class="select2 form-select" id="select2-role_filter-container" >
                <option value="">Select Role</option>
              </select>
 				          </div>
          <h2 class="fw-bolder mt-1"></h2> 
    </div>
</div>
<div class="col-lg-6 col-sm-6 col-12"  style="box-sizing:border-box; display:table;">
  <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;width: 0rem;display:table-cell;">
       <div class="col-md-12 mb-1" style="
    width: 13rem;
">
              <select class="select2 form-select" id="select2-user_filter-container"  >
                <option value="">Select User</option>
              </select>
 	   </div>
          <h2 class="fw-bolder mt-1"></h2>
    </div>
      <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1" style="
    width: 13rem;
">
              <select class="select2 form-select" id="select2-time_period_filter-container"  >
                <option value="">Select Time Period</option>
                 <option value="-1">Today</option>
                  <option value="-2">Yesterday</option>
                   <option value="-7">Week</option>
                    <option value="-30">Month</option>
                     <option value="-365">Year</option>
                      <option value="13">Never Logged in</option>
              </select>
 	   </div>
          <h2 class="fw-bolder mt-1"></h2>
    </div>
      <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1" style="
    width: 13rem;
">
              <select class="select2 form-select" id="select2-status_filter-container" >
                <option value="">Select Status</option>
              </select>
 				          </div>
          <h2 class="fw-bolder mt-1" ></h2> 
    </div>
</div>


</div>
<div class="col-lg-2 col-sm-2 col-12"  style="box-sizing:border-box; display:table;">
    <div class="col-lg-3 col-sm-3 col-6"  style="padding: .5rem;display:table-cell;">
     <button class="btn btn-primary col-md-12" style="margin-top: 10px; width: 45%;     background-color: gainsboro"  onclick="getUserList();"><i class="fa fa-search" aria-hidden="true"></i></button>
         <button class="btn btn-primary col-md-12" style="margin-top: 10px; width: 45%;     background-color: gainsboro"  onclick="clearFilter();"><i class="fa fa-undo" aria-hidden="true"></i></button>
     </div>
</div>
  <div class="col-lg-4 col-sm-4 col-12"style="
    display: flex;
    align-items: center;
">
    <div class="col-lg-8 col-sm-6 col-6">
    <button type="button" class="btn " onclick="addBox();" data-bs-toggle="modal" data-bs-target="#addUser"style="margin-top: 17px; color: white !important; background-color: orange !important; width: 42%;"><i class="fa fa-add" aria-hidden="true"></i></button>
<!--          <button class="btn col-md-12" style="margin-top: 17px; width: 42%;     background-color: #14e014 !important;color: white !important;"  onclick="exportUser();"><i class="fa fa-download" aria-hidden="true"></i></button>
 -->     </div>
  
  </div>
     
</div> 

  <div class="row">
  
    <div class="col-12">
    
      <div class="card invoice-list-wrapper">
        <div class="card-datatable table-responsive">
       <div class="dt-buttons" style="height : 0.5em;">
      
        </div>
          <table id="datatable-user" class="invoice-list-table table is-zebra w-full text-left">
            <thead>
              <tr>
                <th>#</th>
                <th>Action</th>
                <th class="text-truncate">User</th>
                 <th>Email <i class="fa fa-envelope" aria-hidden="true"></i></th>
                <th>SBU</th>
                 <th>Project</th>
                 <th>Department</th>
                 <th>Role</th>
                 <th>Status</th>
                 <th>Last Login</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!--/ List DataTable -->
  




  																				 <!--  model -->
    
<div class="modal fade" id="addUser" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-5 px-sm-5 pt-50">
        <div class="text-center mb-2">
          <h1 class="mb-1">Add User</h1>
        </div>
        <form id="addUserForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-user" method="post" class="form-horizontal" role="form" >
          <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">User id</label><span class="required"> *</span>
            <input
              type="text"
              id="user_id_add"
              name="user_id"
              class="form-control"
              placeholder="enter ID"
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
              value=""
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
              value=""
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
             	 <c:forEach var="obj" items="${objList}">
					<option value="${obj.user_id }" >[${obj.user_id }] - ${obj.user_name }</option>
				</c:forEach>
            </select>
             <span id="select2-reporting_to_add-containerError" class="error-msg" ></span>
          </div>
          
                             
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">SBU</label><span class="required"> *</span>
            <select 
              id="select2-base_sbu_add-container"
              name="base_sbu"
              class="select2 form-select formSelect"
              aria-label="Default select example" onchange="setProjectDD();setDeptDD();"
            >
              <option value="">Select SBU</option>
             	 <c:forEach var="obj" items="${sbuList}">
					<option value="${obj.sbu_code }"  >[${obj.sbu_code }] - ${obj.sbu_name }</option>
				</c:forEach>
            </select>
             <span id="select2-base_sbu_add-containerError" class="error-msg" ></span>
          </div>
          
           <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Project</label><span class="required"> *</span>
            <select 
              id="select2-base_project_add-container"
              name="base_project"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Project</option>
             	<%-- <c:forEach var="obj" items="${projectsList}">
					<option value="${obj.project_code }"   >[${obj.project_code }] - ${obj.project_name }</option>
				</c:forEach> --%>
            </select>
             <span id="select2-base_project_add-containerError" class="error-msg" ></span>
          </div>
          
            <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Department</label><span class="required"> *</span>
            <select 
              id="select2-base_department_add-container"
              name="base_department"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Department</option>
             	<%-- <c:forEach var="obj" items="${deptList}">
					<option value="${obj.department_code }"  >[${obj.department_code }] - ${obj.department_name }</option>
				</c:forEach> --%>
            </select>
             <span id="select2-base_department_add-containerError" class="error-msg" ></span>
          </div>
  			<div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">User Role</label><span class="required"> *</span>
            <select
            	class="select2 form-select formSelect" id="select2-base_role_add-container"
              name="base_role"
              aria-label="Default select example"
            >
              <option value="">Select Role</option>
              <option value="Administrator">Administrator</option>
              <option value="Coordinator">Coordinator</option>
              <option value="Monitoring">Monitoring</option>
            </select>
             <span id="select2-base_role_add-containerError" class="error-msg" ></span>
          </div>
          
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Status</label><span class="required"> *</span>
            <select 
              id="select2-status_add-container"
              name="status"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Status</option>
              <option value="Active">Active</option>
              <option value="Inactive">Inactive</option>
            </select>
             <span id="select2-status_add-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 text-center mt-2 pt-50">
            <button type="button" class="btn btn-primary me-1" onclick="addUser();">Add</button>
            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
              Discard
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
 																					<!--  model end -->
 																					
 																					
 																			
 																			
 																			

  																				 <!-- Update model -->
    
<div class="modal fade" id="updateUser" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-5 px-sm-5 pt-50">
        <div class="text-center mb-2">
          <h1 class="mb-1">Edit User</h1>
        </div>
        <form id="updateUserForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-user" method="post" class="form-horizontal" role="form" >
                  <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">User id</label><span class="required"> *</span>
            <input
              type="text"
              id="user_id_edit"
              name="user_id"
              class="form-control"
              placeholder="enter ID"
              value=""
              readonly
            />
             <span id="user_id_editError" class="error-msg" ></span>
          </div>
		<div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserFirstName">User Name</label><span class="required"> *</span>
            <input
              type="text"
              id="user_name_edit"
              name="user_name"
              class="form-control"
              placeholder="enter name"
              value=""
              data-msg="Please enter your first name"
            />
             <span id="user_name_editError" class="error-msg" ></span>
          </div>
    <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">Mobile number</label><span class="required"> </span>
            <input
              type="number"
              id="contact_number_edit"
              name="contact_number"
              class="form-control"
               placeholder="eg : +91 ##########"
              value=""
            />
             <span id="contact_number_editError" class="error-msg" ></span>
          </div>
		<div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserFirstName">E mail</label><span class="required"> *</span>
            <input
              type="email"
              id="email_edit"
              name="email_id"
              class="form-control"
                placeholder="eg : email@gmail.com"
              value=""
              data-msg="Please enter your first name"
            />
             <span id="email_editError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">User Reporting To</label><span class="required"> </span>
            <select 
              id="select2-reporting_to_edit-container"
              name="reporting_to"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Reporting To</option>
             	 <c:forEach var="obj" items="${objList}">
					<option value="${obj.user_id }" >[${obj.user_id }] - ${obj.user_name }</option>
				</c:forEach>
            </select>
             <span id="select2-reporting_to_edit-containerError" class="error-msg" ></span>
          </div>
          
                    
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">SBU</label><span class="required"> *</span>
            <select 
              id="select2-base_sbu_edit-container"
              name="base_sbu"
              class="select2 form-select formSelect"
              aria-label="Default select example" onchange="setProjectDDEdit();setDeptDDEdit();"
            >
              <option value="">Select SBU</option>
             	 <c:forEach var="obj" items="${sbuList}">
					<option value="${obj.sbu_code }">[${obj.sbu_code }] - ${obj.sbu_name }</option>
				</c:forEach>
            </select>
             <span id="select2-base_sbu_edit-containerError" class="error-msg" ></span>
          </div>
          
           <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Project</label><span class="required"> *</span>
            <select 
              id="select2-base_project_edit-container"
              name="base_project"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Project</option>
             	<c:forEach var="obj" items="${projectsList}">
					<option value="${obj.project_code }" >[${obj.project_code }] - ${obj.project_name }</option>
				</c:forEach>
            </select>
             <span id="select2-base_project_edit-containerError" class="error-msg" ></span>
          </div>
          
            <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Department</label><span class="required"> *</span>
            <select 
              id="select2-base_department_edit-container"
              name="base_department"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Department</option>
             	<c:forEach var="obj" items="${deptList}">
					<option value="${obj.department_code }" >[${obj.department_code }] - ${obj.department_name }</option>
				</c:forEach>
            </select>
             <span id="select2-base_department_edit-containerError" class="error-msg" ></span>
          </div>
  			<div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">User Role</label><span class="required"> *</span>
            <select
            	class="select2 form-select formSelect" id="select2-base_role_edit-container"
              name="base_role"
              aria-label="Default select example"
            >
              <option value="">Select Role</option>
              <option value="Administrator">Administrator</option>
              <option value="Coordinator">Coordinator</option>
              <option value="Monitoring">Monitoring</option>
            </select>
             <span id="select2-base_role_edit-containerError" class="error-msg" ></span>
          </div>
          
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Status</label><span class="required"> *</span>
            <select
            	class="select2 form-select formSelect" id="select2-status_edit-container"
              name="status"
              aria-label="Default select example"
            >
              <option value="">Select Status</option>
              <option value="Active">Active</option>
              <option value="Inactive">Inactive</option>
            </select>
             <span id="select2-status_edit-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 text-center mt-2 pt-50">
            <button type="button" class="btn btn-primary me-1" onclick="updateUser();">Update</button>
            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
              Discard
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
 																					<!--  model end -->		
 																					
 																					
 																					
 										
</section>

											
 																					
 																					
 																					
<!-- Dashboard Analytics end -->

        </div>
      </div>
    </div>
    <!-- END: Content-->


    <!-- BEGIN: Customizer-->     <!--
    <div class="customizer d-none d-md-block"><a class="customizer-toggle d-flex align-items-center justify-content-center" href="#"><i class="spinner" data-feather="settings"></i></a><div class="customizer-content">
  <!-- Customizer header -->
  <!-- <div class="customizer-header px-2 pt-1 pb-0 position-relative">
    <h4 class="mb-0">Theme Customizer</h4>
    <p class="m-0">Customize & Preview in Real Time</p>

    <a class="customizer-close" href="#"><i data-feather="x"></i></a>
  </div>

  <hr />

  <!-- Styling & Text Direction -->
  <!-- <div class="customizer-styling-direction px-2">
    <p class="fw-bold">Skin</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input
          type="radio"
          id="skinlight"
          name="skinradio"
          class="form-check-input layout-name"
          checked
          data-layout=""
        />
        <label class="form-check-label" for="skinlight">Light</label>
      </div>
      <div class="form-check me-1">
        <input
          type="radio"
          id="skinbordered"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="bordered-layout"
        />
        <label class="form-check-label" for="skinbordered">Bordered</label>
      </div>
      <div class="form-check me-1">
        <input
          type="radio"
          id="skindark"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="dark-layout"
        />
        <label class="form-check-label" for="skindark">Dark</label>
      </div>
      <div class="form-check">
        <input
          type="radio"
          id="skinsemidark"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="semi-dark-layout"
        />
        <label class="form-check-label" for="skinsemidark">Semi Dark</label>
      </div>
    </div>
  </div>

  <hr />

  <!-- Menu --> <!--
  <div class="customizer-menu px-2">
    <div id="customizer-menu-collapsible" class="d-flex">
      <p class="fw-bold me-auto m-0">Menu Collapsed</p>
      <div class="form-check form-check-primary form-switch">
        <input type="checkbox" class="form-check-input" id="collapse-sidebar-switch" />
        <label class="form-check-label" for="collapse-sidebar-switch"></label>
      </div>
    </div>
  </div>
  <hr />

  --> <!-- Layout Width --> <!--
  <div class="customizer-footer px-2">
    <p class="fw-bold">Layout Width</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="layout-width-full" name="layoutWidth" class="form-check-input" checked />
        <label class="form-check-label" for="layout-width-full">Full Width</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="layout-width-boxed" name="layoutWidth" class="form-check-input" />
        <label class="form-check-label" for="layout-width-boxed">Boxed</label>
      </div>
    </div>
  </div>
  <hr />

  <!-- Navbar --> <!-- 
  <div class="customizer-navbar px-2">
    <div id="customizer-navbar-colors">
      <p class="fw-bold">Navbar Color</p>
      <ul class="list-inline unstyled-list">
        <li class="color-box bg-white border selected" data-navbar-default=""></li>
        <li class="color-box bg-primary" data-navbar-color="bg-primary"></li>
        <li class="color-box bg-secondary" data-navbar-color="bg-secondary"></li>
        <li class="color-box bg-success" data-navbar-color="bg-success"></li>
        <li class="color-box bg-danger" data-navbar-color="bg-danger"></li>
        <li class="color-box bg-info" data-navbar-color="bg-info"></li>
        <li class="color-box bg-warning" data-navbar-color="bg-warning"></li>
        <li class="color-box bg-dark" data-navbar-color="bg-dark"></li>
      </ul>
    </div>

    <p class="navbar-type-text fw-bold">Navbar Type</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="nav-type-floating" name="navType" class="form-check-input" checked />
        <label class="form-check-label" for="nav-type-floating">Floating</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="nav-type-sticky" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-sticky">Sticky</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="nav-type-static" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-static">Static</label>
      </div>
      <div class="form-check">
        <input type="radio" id="nav-type-hidden" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-hidden">Hidden</label>
      </div>
    </div>
  </div>
  <hr />

  --> <!-- Footer --> <!-- 
  <div class="customizer-footer px-2">
    <p class="fw-bold">Footer Type</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="footer-type-sticky" name="footerType" class="form-check-input" />
        <label class="form-check-label" for="footer-type-sticky">Sticky</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="footer-type-static" name="footerType" class="form-check-input" checked />
        <label class="form-check-label" for="footer-type-static">Static</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="footer-type-hidden" name="footerType" class="form-check-input" />
        <label class="form-check-label" for="footer-type-hidden">Hidden</label>
      </div>
    </div>
  </div>
</div>

    </div>
    --> <!-- End: Customizer-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->

 
    <!-- BEGIN: Vendor JS-->
    <script src="/reelweighbridges/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/reelweighbridges/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/reelweighbridges/resources/vendors/js/charts/apexcharts.min.js"></script>
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
    <!-- BEGIN: Theme JS-->
    <script src="/reelweighbridges/resources/js/core/app-menu.min.js"></script>
    <script src="/reelweighbridges/resources/js/core/app.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/customizer.min.js"></script>
     <script src="/reelweighbridges/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
   <script src="/reelweighbridges/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/pages/modal-edit-user.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- BEGIN: Page JS-->
     <script src="/reelweighbridges/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="/reelweighbridges/resources/js/scripts/pages/app-invoice-list.min.js"></script>
    <!-- END: Page JS-->
    
  <form action="<%=request.getContextPath()%>/export-user" name="exportUserForm" id="exportUserForm" target="_blank" method="post">	
      
        <input type="hidden" name="user_id" id="exportUser_filter" />
        <input type="hidden" name="status" id="exportStatus_filter" />
        <input type="hidden" name="timePeriod" id="exportTime_period_filter" />
        <input type="hidden" name="sbu" id="exportSBU_filter" />
        <input type="hidden" name="project" id="exportProject_filter" />
        <input type="hidden" name="base_role" id="exportRole_filter" />
	</form>
    <script>
    $('#addUser').on('show.bs.modal', function (event) {
        $(document).ready(function() {
            $('.select2').select2({
                dropdownParent: $('#addUser')
            });
        }); 
    });
    $('#updateUser').on('show.bs.modal', function (event) {
        $(document).ready(function() {
            $('.select2').select2({
                dropdownParent: $('#updateUser')
            });
        });
    });
      $(window).on("load",(function(){
    	  
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
          $('.modal').modal({ dismissible: false });
          getUserList();
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
      
      function clearFilter(){
		    	$("#select2-user_filter-container").val("");
		    	$("#select2-status_filter-container").val("");
		    	$("#select2-time_period_filter-container").val("");
		    	window.location.href= "<%=request.getContextPath()%>/user";
	    }
      
      function getUserFilterList() {
	        var user_id = $("#select2-user_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var time_period = $("#select2-time_period_filter-container").val();
	        var project = $("#select2-project_filter-container").val();
	        var sbu = $("#select2-sbu_filter-container").val();
	        var base_role = $("#select2-role_filter-container").val();
	        if(time_period == ''){
	        	time_period = 0;
	        }
	        if ($.trim(user_id) == "") {
	        	$("#select2-user_filter-container option:not(:first)").remove();
	        	var myParams = { user_id: user_id, status: status,time_period : time_period ,project : project, sbu : sbu, base_role : base_role};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getUserFilterList",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-user_filter-container").append('<option value="' + val.user_id + '">'+ "[ "+$.trim(val.user_id) +" ]"+" - " + $.trim(val.user_name) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      function getProjectFilterList() {
	        var user_id = $("#select2-user_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var time_period = $("#select2-time_period_filter-container").val();
	        var project = $("#select2-project_filter-container").val();
	        var sbu = $("#select2-sbu_filter-container").val();
	        var base_role = $("#select2-role_filter-container").val();
	        if(time_period == ''){
	        	time_period = 0;
	        }
	        if ($.trim(project) == "") {
	        	$("#select2-project_filter-container option:not(:first)").remove();
	        	var myParams = { user_id: user_id, status: status,time_period : time_period ,project : project, sbu : sbu, base_role : base_role};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getProjectFilterListInUser",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-project_filter-container").append('<option value="' + val.project_code + '">'+ "[ "+$.trim(val.project_code) +" ]"+" - " + $.trim(val.project_name) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      
      function getSBUFilterList() {
	        var user_id = $("#select2-user_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var time_period = $("#select2-time_period_filter-container").val();
	        var project = $("#select2-project_filter-container").val();
	        var sbu = $("#select2-sbu_filter-container").val();
	        var base_role = $("#select2-role_filter-container").val();
	        if(time_period == ''){
	        	time_period = 0;
	        }
	        if ($.trim(sbu) == "") {
	        	$("#select2-sbu_filter-container option:not(:first)").remove();
	        	var myParams = { user_id: user_id, status: status,time_period : time_period ,project : project, sbu : sbu, base_role : base_role};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getSBUFilterListInUser",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-sbu_filter-container").append('<option value="' + val.sbu_code + '">'+ "[ "+$.trim(val.sbu_code) +" ]"+" - " + $.trim(val.sbu_name) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      
      function getRoleFilterList() {
	        var user_id = $("#select2-user_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var time_period = $("#select2-time_period_filter-container").val();
	        var project = $("#select2-project_filter-container").val();
	        var sbu = $("#select2-sbu_filter-container").val();
	        var base_role = $("#select2-role_filter-container").val();
	        if(time_period == ''){
	        	time_period = 0;
	        }
	        if ($.trim(base_role) == "") {
	        	$("#select2-role_filter-container option:not(:first)").remove();
	        	var myParams = { user_id: user_id, status: status,time_period : time_period ,project : project, sbu : sbu, base_role : base_role};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getRoleFilterListInUser",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-role_filter-container").append('<option value="' + val.base_role + '">'+ $.trim(val.base_role) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      function getStatusFilterList() {
    	  var user_id = $("#select2-user_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var time_period = $("#select2-time_period_filter-container").val();
	        var project = $("#select2-project_filter-container").val();
	        var sbu = $("#select2-sbu_filter-container").val();
	        var base_role = $("#select2-role_filter-container").val();
	        if(time_period == ''){
	        	time_period = 0;
	        }
	        if ($.trim(status) == "") {
	        	$("#select2-status_filter-container option:not(:first)").remove();
	        	var myParams = { user_id: user_id, status: status,time_period : time_period ,project : project, sbu : sbu, base_role : base_role};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getStatusFilterListFromUser",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-status_filter-container").append('<option value="' + val.status + '">' + $.trim(val.status) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

	    function exportUser(){
	    	 var user_id = $("#select2-user_filter-container").val();
	         var status = $("#select2-status_filter-container").val();
	         var time_period_filter = $("#select2-time_period_filter-container").val();
	         var project = $("#select2-project_filter-container").val();
		     var sbu = $("#select2-sbu_filter-container").val();
		     var base_role = $("#select2-role_filter-container").val();
	    	 $("#exportUser_filter").val(user_id);
	     	 $("#exportStatus_filter").val(status);
	     	 $("#exportTime_period_filter").val(time_period_filter);
	     	 $("#exportSBU_filter").val(sbu);
	     	 $("#exportProject_filter").val(project);
	     	 $("#exportRole_filter").val(base_role);
	     	 $("#exportUserForm ").submit();
	  	}
	    
	    function getUserList() {
	    	getUserFilterList();
	    	getStatusFilterList();
	    	getSBUFilterList();
	    	getProjectFilterList();
	    	getRoleFilterList(); 
	    	var user_id = $("#select2-user_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var time_period = $("#select2-time_period_filter-container").val();
	        var project = $("#select2-project_filter-container").val();
	        var sbu = $("#select2-sbu_filter-container").val();
	        var base_role = $("#select2-role_filter-container").val();
	        if(time_period == ''){
	        	time_period = 0;
	        }
	        $('#days').html(0)
	        $('#allUsers').html(0)
    		$('#activeUsers').html(0)
    		$('#inActiveUsers').html(0)
	    	   	table = $('#datatable-user').DataTable();
	    		table.destroy();
				var i = 0;
	    		$.fn.dataTable.moment('DD-MMM-YYYY');
	    		var rowLen = 0;
	    		var myParams =  "user_id="
	    				+ user_id + "&status="+ status+ "&time_period="+ time_period+ "&project="+ project+ "&sbu="+ sbu+ "&base_role="+ base_role;

	    		/***************************************************************************************************/

	    		$("#datatable-user")
	    				.DataTable(
	    						{
	    							"bProcessing" : true,
	    							"bServerSide" : true,
	    							"sort" : "position",
	    							//bStateSave variable you can use to save state on client cookies: set value "true" 
	    							"bStateSave" : false,
	    							 stateSave: true,
	    							 "fnStateSave": function (oSettings, oData) {
	    							 	localStorage.setItem('MRVCDataTables', JSON.stringify(oData));
	    							},
	    							 "fnStateLoad": function (oSettings) {
	    								return JSON.parse(localStorage.getItem('MRVCDataTables'));
	    							 },
	    							//Default: Page display length
	    							"iDisplayLength" : 10,
	    							"iData" : {
	    								"start" : 52
	    							},
	    							//We will use below variable to track page number on server side(For more information visit: http://legacy.datatables.net/usage/options#iDisplayStart)
	    							"iDisplayStart" : 0,
	    							"fnDrawCallback" : function() {
	    								//Get page numer on client. Please note: number start from 0 So
	    								//for the first page you will see 0 second page 1 third page 2...
	    								//Un-comment below alert to see page number
	    								//alert("Current page number: "+this.fnPagingInfo().iPage);
	    							},
	    							//"sDom": 'l<"toolbar">frtip',
	    							"initComplete" : function() {
	    								$('.dataTables_filter input[type="search"]')
	    										.attr('placeholder', 'Search')
	    										.css({
	    											'width' : '350px ',
	    											'display' : 'inline-block'
	    										});

	    								var input = $('.dataTables_filter input')
	    										.unbind()
	    										.bind('keyup',function(e){
	    										    if (e.which == 13){
	    										    	self.search(input.val()).draw();
	    										    }
	    										}), self = this.api(), $searchButton = $(
	    										'<i class="fa fa-search" title="Go" >')
	    								//.text('Go')
	    								.click(function() {
	    									self.search(input.val()).draw();
	    								}), $clearButton = $(
	    										'<i class="fa fa-close" title="Reset">')
	    								//.text('X')
	    								.click(function() {
	    									input.val('');
	    									$searchButton.click();
	    								})
	    								$('.dataTables_filter').append(
	    										'<div class="right-btns"></div>');
	    								$('.dataTables_filter div').append(
	    										$searchButton, $clearButton);
	    								rowLen = $('#datatable-user tbody tr:visible').length
	    								/* var input = $('.dataTables_filter input').unbind(),
	    								self = this.api(),
	    								$searchButton = $('<i class="fa fa-search">')
	    								           //.text('Go')
	    								           .click(function() {			   	                    	 
	    								              self.search(input.val()).draw();
	    								           })			   	        
	    								  $('.dataTables_filter label').append($searchButton); */
	    							}
	    							,
	    							columnDefs : [ {
	    								"targets" : '',
	    								"orderable" : false,
	    							}
	    			                ],
	    							"sScrollX" : "100%",
	    							"sScrollXInner" : "100%",
	    							"ordering":false,
	    							"bScrollCollapse" : true,
	    							"language" : {
	    								"info" : "_START_ - _END_ of _TOTAL_",
	    								paginate : {
	    									next : '<i class="fa fa-angle-right"></i>', 
	    									previous : '<i class="fa fa-angle-left"></i>'  
	    								}
	    							},
	    							
	    							"bDestroy" : true,
	    							"sAjaxSource" : "	<%=request.getContextPath()%>/ajax/getUserList?"+myParams,
	    		        "aoColumns": [
	    		        
	      		         	{ "mData": function(data,type,row){

	                               $('#days').html(data.days)
		 		            		var c = data.days
		 		            		if(c == null){ $('#days').html(0)}
		 		            		$('#hours').html(Number(data.hours))   //.toFixed(2)
		 		            		$('#active').html(data.active_users)
		 		            		$('#inactive').html(data.inActive_users)
	                             if($.trim(data.id) == ''){ return '-'; }else{ return data.id ; }
	      		            } },
	      		          { "mData": function(data,type,row){
	    		            	var user_data = "'"+data.user_id+"','"+data.base_sbu+"','"+data.project_code+"','"+data.department_code+"','"+data.user_role+"','"+data.status+"','"+data.user_name+"','"+data.reporting_to_id+"','"+data.email_id+"','"+data.contact_number+"'";
			                    var actions = '<a href="javascript:void(0);"  onclick="getUser('+user_data+');" class="btn btn-primary"  title="Edit"><i class="fa fa-pencil"></i></a>';    	                   	
	    		            	return actions;
	    		            } },
	    		         	{ "mData": function(data,type,row){
	    		         		  var user_name = '';
	    		         		  if ($.trim(data.user_name) != '') { user_name = ' - ' + $.trim(data.user_name) }    	
		                             if($.trim(data.user_id) == ''){ return '-'; }else{ return data.user_id +user_name; }
	    		            } },
	    		            { "mData": function(data,type,row){
		                             if($.trim(data.email_id) == ''){ return '-'; }else{ return data.email_id ; }
	    		            } },
	    		            { "mData": function(data,type,row){
	    		            	 var sbu_name = '';
	    		            	  if ($.trim(data.sbu_name) != '') { sbu_name = ' - ' + $.trim(data.sbu_name) }    	
		                             if($.trim(data.base_sbu) == ''){ return '-'; }else{ return data.base_sbu +sbu_name; }
	    		            }},
	    		         	{ "mData": function(data,type,row){
	    		         		 var base_project = '';
	    		         		  if ($.trim(data.base_project) != '') { base_project = ' - ' + $.trim(data.base_project) }    	
		                             if($.trim(data.project_code) == ''){ return '-'; }else{ return data.project_code +base_project; }
	    		            } },
	    		            { "mData": function(data,type,row){
	    		            	 var base_department = '';
	    		            	 if ($.trim(data.base_department) != '') { base_department = ' - ' + $.trim(data.base_department) }    	
	                             if($.trim(data.department_code) == ''){ return '-'; }else{ return data.department_code +base_department; }
	    		            } }, 
	    		            { "mData": function(data,type,row){
	                             if($.trim(data.base_role) == ''){ return '-'; }else{ return data.base_role ; }
   		            		} },
   		            	 	{ "mData": function(data,type,row){
                             if($.trim(data.status) == ''){ return '-'; }else{ return data.status ; }
		            		} },
		            		 { "mData": function(data,type,row){
	                             if($.trim(data.last_login) == ''){ return '-'; }else{ return data.last_login ; }
   		            		} }
	    		        ]
	    		    });
	    	
	    	
		  $(".page-loader-2").hide();  		     
	  	
	 }

	    
	    function getUserList1(){
	    	getUserFilterList();
	    	getStatusFilterList();
	    	getSBUFilterList();
	    	getProjectFilterList();
	    	getRoleFilterList();
	    	var user_id = $("#select2-user_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var time_period = $("#select2-time_period_filter-container").val();
	        var project = $("#select2-project_filter-container").val();
	        var sbu = $("#select2-sbu_filter-container").val();
	        var base_role = $("#select2-role_filter-container").val();
	        if(time_period == ''){
	        	time_period = 0;
	        }
	        $('#days').html(0)
	        $('#allUsers').html(0)
    		$('#activeUsers').html(0)
    		$('#inActiveUsers').html(0)
	     	table = $('#datatable-user').DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-user').DataTable({
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
				/* 		$('.dataTables_filter input[type="search"]')
								.attr('placeholder', 'Search')
								.css({
									'width' : '300px ',
									'display' : 'inline-block'
								});
						var input = $('.dataTables_filter input')
								.unbind()
								.bind('keyup',function(e){
							    if (e.which == 13){
							    	self.search(input.val()).draw();
							    }
							}), self = this.api(), $searchButton = $('<i class="fa fa-search" title="Go" >')
						.click(function() {
							self.search(input.val()).draw();
						}), 
						$clearButton = $('<i class="fa fa-close" title="Reset">')
						.click(function() {
							input.val('');
							$searchButton.click();
						})
						$('.dataTables_filter').append( '<div class="right-btns"></div>');
						$('.dataTables_filter div').append( $searchButton, $clearButton); */ 					
					}
	        }).rows().remove().draw();
			table.state.clear();		
			var myParams = { user_id: user_id, status: status,time_period : time_period ,project : project, sbu : sbu, base_role : base_role};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getUserList",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		         			var user_data = "'"+val.user_id+"','"+val.base_sbu+"','"+val.project_code+"','"+val.department_code+"','"+val.user_role+"','"+val.status+"','"+val.user_name+"','"+val.reporting_to_id+"','"+val.email_id+"','"+val.contact_number+"'";
		                    var actions = '<a href="javascript:void(0);"  onclick="getUser('+user_data+');" class="btn btn-primary"  title="Edit"><i class="fa fa-pencil"></i></a>';    	                   	
		                   	var rowArray = [];    	                 
		            		$('#days').html(val.days)
		            		var c = val.days
		            		if(c == null){ $('#days').html(0)}
		            		
		            		$('#hours').html(Number(val.hours))   //.toFixed(2)
		            		$('#active').html(val.active_users)
		            		$('#inActive').html(val.inActive_users)
		                   	rowArray.push($.trim(val.id));  
		                	rowArray.push($.trim(actions));  
		                	rowArray.push("["+ $.trim(val.user_id)+"]"+" - "+ val.user_name);
		                	rowArray.push($.trim(val.email_id));
		                	
		                 	rowArray.push("["+ $.trim(val.base_sbu)+"]"+" - "+$.trim(val.sbu_name));
		                 	rowArray.push("["+ $.trim(val.project_code)+"]"+" - "+$.trim(val.base_project));
		                 	rowArray.push("["+ $.trim(val.department_code)+"]"+" - "+$.trim(val.base_department));
		                 	rowArray.push($.trim(val.base_role));
		                 	rowArray.push($.trim(val.status)); 
		                	rowArray.push($.trim(val.last_login));
		                  
		                   
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
	    } 

	    function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.status === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.status == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.status == 500) {
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
	    function updateUser(){
	    	if(validator1.form()){ // validation perform
	        	document.getElementById("updateUserForm").submit();	
	    	}
	    }
	    function getUser(userId,sbu,project,dept,role,status,user_name,reporting_to,email,mobile){
	    		  $('#user_name_edit').val('');
	    		  $('#email_edit').val('');
	    		  $('#contact_number_edit').val('');              
	    		  $('#select2-status_edit-container').removeAttr("selected");
	    		  $('#select2-reporting_to_edit-container').removeAttr("selected");
	    		 
	    		  $('#select2-base_sbu_edit-container').removeAttr("selected");
	    		  $('#select2-base_project_edit-container').removeAttr("selected");
	    		 
	    		  $('#select2-base_department_edit-container').removeAttr("selected");
	    		  $('#select2-base_role_edit-container').removeAttr("selected");
	    		
	    		  $('#status_edit').prop("selected", false);
	    		  $('#updateUser').modal('show');
	    		  if(email == null || email == "undefined"){email = '' }
	    		  if(mobile == null || mobile == "undefined"){mobile = '' }
	    	      $('#updateUser #user_id_edit').val($.trim(userId)).focus();
	    	      $('#updateUser #user_name_edit').val($.trim(user_name)).focus();
	    	      $('#updateUser #email_edit').val($.trim(email)).focus();
	    	      $('#updateUser #contact_number_edit').val($.trim(mobile)).focus();
	    	      if(status != null && status != ''  && status != "undefined"){
		    	    	$('select[name^="status"] option[value="'+ status +'"]').attr("selected","selected");
		    	    	$('select[name^="reporting_to"] option[value="'+ reporting_to +'"]').attr("selected","selected");
		    	    	
		    	    	$('select[name^="base_sbu"] option[value="'+ sbu +'"]').attr("selected","selected");
		    	    	$('select[name^="base_project"] option[value="'+ project +'"]').attr("selected","selected");
		    	    	$('select[name^="base_department"] option[value="'+ dept +'"]').attr("selected","selected");
		    	    	$('select[name^="base_role"] option[value="'+ role +'"]').attr("selected","selected");
	    	      }
	    	      $('.formSelect').select2();
	    }

	    function addUser(){
	    	var flag = validator.form();
	    	if(flag){ // validation perform
	        	document.getElementById("addUserForm").submit();	
	    	}
	    }
	    var validator1 =	$('#updateUserForm').validate({
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
	    			 	  },"status": {										
	    			 		required: true
	    			 	  },"reporting_to": {										
	    			 		required: false
	    			 	  },"base_project": {										
		    			 		required: true
		  			 	  },"base_sbu": {										
		    			 		required: true
		  			 	  },"base_department": {										
		    			 		required: true
		  			 	  },"base_role": {
		  			 		required: true
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
	    		 	  	  },"status": {
	    		 			required: 'Required'
	    		 	  	  },"reporting_to": {
	    		 			required: 'Required'
	    		 	  	  },"base_project": {
		  		 			required: 'Required'
		  		 	  	  },"base_sbu": {
		  		 			required: 'Required'
		  		 	  	  },"base_department": {
		  		 			required: 'Required'
		  		 	  	  },"base_role": {
		  		 			required: 'Required'
		  		 	  	  }
	      		},
	      		errorPlacement:function(error, element){
	      		 	if (element.attr("id") == "user_name_edit" ){
	    				 document.getElementById("user_name_editError").innerHTML="";
	    		 		 error.appendTo('#user_name_editError');
	    			}else if(element.attr("id") == "user_id_edit" ){
	    			   document.getElementById("user_id_editError").innerHTML="";
	    		 	   error.appendTo('#user_id_editError');
	    			}else if(element.attr("id") == "contact_number_edit" ){
	    				document.getElementById("contact_number_editError").innerHTML="";
	    			 	error.appendTo('#contact_number_editError');
	    			}else if(element.attr("id") == "email_edit" ){
	    				document.getElementById("email_editError").innerHTML="";
	    			 	error.appendTo('#email_editError');
	    			}else if(element.attr("id") == "select2-status_edit-container" ){
	    				document.getElementById("select2-status_edit-containerError").innerHTML="";
	    			 	error.appendTo('#select2-status_edit-containerError');
	    			}else if(element.attr("id") == "select2-reporting_to_edit-container" ){
	    				document.getElementById("select2-reporting_to_edit-containerError").innerHTML="";
	    			 	error.appendTo('#select2-reporting_to_edit-containerError');
	    			}else if(element.attr("id") == "select2-base_sbu_edit-container" ){
	    				document.getElementById("select2-base_sbu_edit-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_sbu_edit-containerError');
	    			}else if(element.attr("id") == "select2-base_project_edit-container" ){
	    				document.getElementById("select2-base_project_edit-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_project_edit-containerError');
	    			}else if(element.attr("id") == "select2-base_department_edit-container" ){
	    				document.getElementById("select2-base_department_edit-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_department_edit-containerError');
	    			}else if(element.attr("id") == "select2-base_role_edit-container" ){
	    				document.getElementById("select2-base_role_edit-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_role_edit-containerError');
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
	    			 	  },"status": {										
		    			 		required: true
		  			 	  },"reporting_to": {
	    		 			required: false
	    		 	  	  },"base_project": {										
		    			 		required: true
		  			 	  },"base_sbu": {										
		    			 		required: true
		  			 	  },"base_department": {										
		    			 		required: true
		  			 	  },"base_role": {
		  			 		required: true
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
		  		 	  	  },"status": {
		  		 			required: 'Required'
		  		 	  	  },"reporting_to": {
	    		 			required: 'Required'
	    		 	  	  },"base_project": {
		  		 			required: 'Required'
		  		 	  	  },"base_sbu": {
		  		 			required: 'Required'
		  		 	  	  },"base_department": {
		  		 			required: 'Required'
		  		 	  	  },"base_role": {
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
	    			}else if(element.attr("id") == "select2-status_add-container" ){
	    				document.getElementById("select2-status_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-status_add-containerError');
	    			}else if(element.attr("id") == "select2-reporting_to_add-container" ){
	    				document.getElementById("select2-reporting_to_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-reporting_to_add-containerError');
	    			}else if(element.attr("id") == "select2-base_sbu_add-container" ){
	    				document.getElementById("select2-base_sbu_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_sbu_add-containerError');
	    			}else if(element.attr("id") == "select2-base_project_add-container" ){
	    				document.getElementById("select2-base_project_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_project_add-containerError');
	    			}else if(element.attr("id") == "select2-base_department_add-container" ){
	    				document.getElementById("select2-base_department_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_department_add-containerError');
	    			}else if(element.attr("id") == "select2-base_role_add-container" ){
	    				document.getElementById("select2-base_role_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_role_add-containerError');
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
	    	function addBox(){
		   		$('select[name^="reporting_to"] option:selected').removeAttr("selected");
		   		$('select[name^="status"] option:selected').removeAttr("selected");
		   		
		   		$('select[name^="base_sbu"] option:selected').removeAttr("selected");
		   		$('select[name^="base_project"] option:selected').removeAttr("selected");
		   		$('select[name^="base_department"] option:selected').removeAttr("selected");
		   		$('select[name^="base_role"] option:selected').removeAttr("selected");
		   		$('select').select2();
		   	}
		   	function setProjectDD(){
	    		var base_sbu = $("#select2-base_sbu_add-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_project_add-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getProjectListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                             $("#select2-base_project_add-container").append('<option value="' + val.project_code + '">' + $.trim(val.project_code)+" - "+ $.trim(val.project_name) +'</option>');
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
	    		var base_sbu = $("#select2-base_sbu_add-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_department_add-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getDeptListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                             $("#select2-base_department_add-container").append('<option value="' + val.department_code + '">' + $.trim(val.department_code)+" - "+ $.trim(val.department_name) +'</option>');
		                        });
		                    }
		                },error: function (jqXHR, exception) {
		    	   			      $(".page-loader").hide();
		       	          	  getErrorMessage(jqXHR, exception);
		       	     	  }
		            });
		        }
		    }	
	    	function setProjectDDEdit(){
	    		var base_sbu = $("#select2-base_sbu_edit-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_project_edit-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getProjectListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                             $("#select2-base_project_edit-container").append('<option value="' + val.project_code + '">' + $.trim(val.project_code)+" - "+ $.trim(val.project_name) +'</option>');
		                        });
		                    }
		                },error: function (jqXHR, exception) {
		    	   			      $(".page-loader").hide();
		       	          	  getErrorMessage(jqXHR, exception);
		       	     	  }
		            });
		        }
		    }
	    	
	    	function setDeptDDEdit(){
	    		var base_sbu = $("#select2-base_sbu_edit-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_department_edit-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getDeptListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                             $("#select2-base_department_edit-container").append('<option value="' + val.department_code + '">' + $.trim(val.department_code)+" - "+ $.trim(val.department_name) +'</option>');
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