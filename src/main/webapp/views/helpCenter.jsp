<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 BrainBox with unlimited possibilities.">
    <meta name="keywords" content="admin template,BrainBox , Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>Help Center </title>
        <link rel="icon" type="image/png" sizes="96x96" href="/reirm/resources/images/protect-favicon.png" >

	<script src="/reirm/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/reirm/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
            <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/plugins/extensions/ext-component-toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/pickers/pickadate/pickadate.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
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
        <link rel="stylesheet" type="text/css" href="/reirm/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/plugins/forms/pickers/form-pickadate.min.css">
     <link rel="stylesheet" type="text/css" href="/reirm/resources/css/pages/page-knowledge-base.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/reirm/resources/css/style.css">
    <style>
    
		.knowledge-base-bg .card-body {
		    padding: 8rem !important;
		    }
		    
    </style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
 	<jsp:include page="../views/layout/header.jsp"></jsp:include> 
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
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
          <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">Help Center</h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item active">Help Center
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
            
          </div>
        </div>
        <div class="content-body"><!-- Knowledge base Jumbotron -->
 <section id="knowledge-base-search">
  <div class="row">
    <div class="col-12">
      <div
        class="card knowledge-base-bg text-center" style="background-image: url('/reirm/resources/images/banner/banner.png')"
      >
         <div class="card-body">
          <h2 class="text-primary"></h2>
     <!--     <p class="card-text mb-2">
            <span>Popular searches: </span><span class="fw-bolder">Sales automation, Email marketing</span>
          </p>
          <form class="kb-search-input">
            <div class="input-group input-group-merge">
              <span class="input-group-text"><i data-feather="search"></i></span>
              <input type="text" class="form-control" id="searchbar" placeholder="Search Ideas..." />
            </div> -->
        </div>
      </div>
    </div>
  </div>
</section>
<!--/ Knowledge base Jumbotron -->

<!-- Knowledge base -->
<section id="faq-tabs"  >
  <!-- vertical tab pill -->
  <div class="row" >
    <div class="col-lg-3 col-md-4 col-sm-12"> 
      <div class="faq-navigation d-flex justify-content-between flex-column mb-2 mb-md-0">
        <!-- pill tabs navigation -->
        <ul class="nav nav-pills nav-left flex-column" role="tablist">
          <!-- payment -->
          <li class="nav-item">
            <a class="nav-link active"  data-bs-toggle="pill" href="#faq-payment" aria-expanded="true" role="tab" >
<i data-feather='pen-tool'></i>              <span class="fw-bold">Raise IT Help</span>
            </a>
          </li>

          <!-- delivery -->
       <!--   <li class="nav-item">
            <a class="nav-link" id="delivery" data-bs-toggle="pill" href="#faq-delivery" aria-expanded="false" role="tab" aria-selected="false">
				<i data-feather='file-text'></i>      
				        <span class="fw-bold">User Manual</span>
            </a>
          </li> -->

          <!-- cancellation and return -->
          <li class="nav-item">
            <a class="nav-link" id="cancellation-return" data-bs-toggle="pill" href="#faq-cancellation-return" aria-expanded="false" role="tab" aria-selected="false">
				<i data-feather='help-circle'></i>
              <span class="fw-bold">Frequently Asked Questions</span>
            </a>
          </li>
        </ul>

        <!-- FAQ image -->
<!--         <img src="https://pixinvent.com/demo/vuexy-html-bootstrap-admin-template/app-assets/images/illustration/faq-illustrations.svg" class="img-fluid d-none d-md-block" alt="demand img">
 -->      </div>
    </div>

    <div class="col-lg-9 col-md-8 col-sm-12">
      <!-- pill tabs tab content -->
      <div class="tab-content">
        <!-- payment panel -->
        <div role="tabpanel" class="tab-pane active" id="faq-payment" aria-labelledby="payment" aria-expanded="true">
          <!-- icon and header -->
          <div class="d-flex align-items-center">
            
            <div>
              <h4 class="mb-0">Raise any Technical Issue</h4>
            </div>
          </div>

          <!-- frequent answer and question  collapse  -->
          <div class="accordion accordion-margin mt-2" id="faq-payment-qna">
      			<div class="card accordion-item">
              <h2 class="accordion-header" id="deliveryOne">
                <button class="accordion-button collapsed">
             <span>Click <a href="https://ithelpdesk.resustainability.com/app/itdesk/ui/requests/add?reqTemplate=127594000003785173" target="_blank" style=" 
             color: red !important;" title="Click here to raise an issue">Raise Issue</a> to Report an Issue </span>

                </button>
              </h2>
            </div>
          </div>
        </div>

        <!-- delivery panel -->
        <div class="tab-pane" id="faq-delivery" role="tabpanel" aria-labelledby="delivery" aria-expanded="false">
          <!-- icon and header -->
          <div class="d-flex align-items-center">
            <div class="avatar avatar-tag bg-light-primary me-1">
              <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag font-medium-4"><path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path><line x1="3" y1="6" x2="21" y2="6"></line><path d="M16 10a4 4 0 0 1-8 0"></path></svg>
            </div>
            <div>
              <h4 class="mb-0">Delivery</h4>
              <span>Which license do I need?</span>
            </div>
          </div>

          <!-- frequent answer and question  collapse  -->
          <div class="accordion accordion-margin mt-2" id="faq-delivery-qna">
            <div class="card accordion-item">
              <h2 class="accordion-header" id="deliveryOne">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-delivery-one" aria-expanded="false" aria-controls="faq-delivery-one">
                  Where has my order reached?
                </button>
              </h2>

              <div id="faq-delivery-one" class="collapse accordion-collapse" aria-labelledby="deliveryOne" data-bs-parent="#faq-delivery-qna">
                <div class="accordion-body">
                  Pastry pudding cookie toffee bonbon jujubes jujubes powder topping. Jelly beans gummi bears sweet roll
                  bonbon muffin liquorice. Wafer lollipop sesame snaps. Brownie macaroon cookie muffin cupcake candy
                  caramels tiramisu. Oat cake chocolate cake sweet jelly-o brownie biscuit marzipan. Jujubes donut
                  marzipan chocolate bar. Jujubes sugar plum jelly beans tiramisu icing cheesecake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="deliveryTwo">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-delivery-two" aria-expanded="false" aria-controls="faq-delivery-two">
                  The shipment status shows that it has been returned/cancelled. What does it mean and who do I contact?
                </button>
              </h2>
              <div id="faq-delivery-two" class="collapse accordion-collapse" aria-labelledby="deliveryTwo" data-bs-parent="#faq-delivery-qna">
                <div class="accordion-body">
                  Sweet pie candy jelly. Sesame snaps biscuit sugar plum. Sweet roll topping fruitcake. Caramels
                  liquorice biscuit ice cream fruitcake cotton candy tart. Donut caramels gingerbread jelly-o
                  gingerbread pudding. Gummi bears pastry marshmallow candy canes pie. Pie apple pie carrot cake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="deliveryThree">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-delivery-three" aria-expanded="false" aria-controls="faq-delivery-three">
                  What if my shipment is marked as lost?
                </button>
              </h2>
              <div id="faq-delivery-three" class="collapse" aria-labelledby="deliveryThree" data-bs-parent="#faq-delivery-qna">
                <div class="accordion-body">
                  Tart gummies dragée lollipop fruitcake pastry oat cake. Cookie jelly jelly macaroon icing jelly beans
                  soufflé cake sweet. Macaroon sesame snaps cheesecake tart cake sugar plum. Dessert jelly-o sweet
                  muffin chocolate candy pie tootsie roll marzipan. Carrot cake marshmallow pastry. Bonbon biscuit
                  pastry topping toffee dessert gummies. Topping apple pie pie croissant cotton candy dessert tiramisu.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="deliveryFour">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-delivery-four" aria-expanded="false" aria-controls="faq-delivery-four">
                  My shipment status shows that it’s out for delivery. By when will I receive it?
                </button>
              </h2>
              <div id="faq-delivery-four" class="collapse" aria-labelledby="deliveryFour" data-bs-parent="#faq-delivery-qna">
                <div class="accordion-body">
                  Cheesecake muffin cupcake dragée lemon drops tiramisu cake gummies chocolate cake. Marshmallow tart
                  croissant. Tart dessert tiramisu marzipan lollipop lemon drops. Cake bonbon bonbon gummi bears topping
                  jelly beans brownie jujubes muffin. Donut croissant jelly-o cake marzipan. Liquorice marzipan cookie
                  wafer tootsie roll. Tootsie roll sweet cupcake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="deliveryFive">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-delivery-five" aria-expanded="false" aria-controls="faq-delivery-five">
                  What do I need to do to get the shipment delivered within a specific timeframe?
                </button>
              </h2>
              <div id="faq-delivery-five" class="collapse" aria-labelledby="deliveryFive" data-bs-parent="#faq-delivery-qna">
                <div class="accordion-body">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                  officia deserunt mollit anim id est laborum.
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- cancellation return  -->
        <div class="tab-pane" id="faq-cancellation-return" role="tabpanel" aria-labelledby="cancellation-return" aria-expanded="false">
          <!-- icon and header -->
          <div class="d-flex align-items-center">
           
            <div>
              <h4 class="mb-0">Frequently Asked Questions</h4>
            </div>
          </div>
 
          <!-- frequent answer and question  collapse  -->
          <div class="accordion accordion-margin mt-2" id="faq-cancellation-qna">
            <div class="card accordion-item">
              <h2 class="accordion-header" id="cancellationOne">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-cancellation-one" aria-expanded="false" aria-controls="faq-cancellation-one">
                  Can any incident can be Raised?
                </button>
              </h2>
            </div>
            
           
           
            
           
          </div>
        </div>

        <!-- my order -->
        <div class="tab-pane" id="faq-my-order" role="tabpanel" aria-labelledby="my-order" aria-expanded="false">
          <!-- icon and header -->
          <div class="d-flex align-items-center">
            <div class="avatar avatar-tag bg-light-primary me-1">
              <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-package font-medium-4"><line x1="16.5" y1="9.4" x2="7.5" y2="4.21"></line><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
            </div>
            <div>
              <h4 class="mb-0">My Orders</h4>
              <span>Which license do I need?</span>
            </div>
          </div>

          <!-- frequent answer and question  collapse  -->
          <div class="accordion accordion-margin mt-2" id="faq-my-order-qna">
            <div class="card accordion-item">
              <h2 class="accordion-header" id="myOrderOne">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-my-order-one" aria-expanded="false" aria-controls="faq-my-order-one">
                  Can I avail of an open delivery?
                </button>
              </h2>

              <div id="faq-my-order-one" class="collapse accordion-collapse" aria-labelledby="myOrderOne" data-bs-parent="#faq-my-order-qna">
                <div class="accordion-body">
                  Pastry pudding cookie toffee bonbon jujubes jujubes powder topping. Jelly beans gummi bears sweet roll
                  bonbon muffin liquorice. Wafer lollipop sesame snaps. Brownie macaroon cookie muffin cupcake candy
                  caramels tiramisu. Oat cake chocolate cake sweet jelly-o brownie biscuit marzipan. Jujubes donut
                  marzipan chocolate bar. Jujubes sugar plum jelly beans tiramisu icing cheesecake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="myOrderTwo">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-my-order-two" aria-expanded="false" aria-controls="faq-my-order-two">
                  I haven’t received the refund of my returned shipment. What do I do?
                </button>
              </h2>
              <div id="faq-my-order-two" class="collapse accordion-collapse" aria-labelledby="myOrderTwo" data-bs-parent="#faq-my-order-qna">
                <div class="accordion-body">
                  Sweet pie candy jelly. Sesame snaps biscuit sugar plum. Sweet roll topping fruitcake. Caramels
                  liquorice biscuit ice cream fruitcake cotton candy tart. Donut caramels gingerbread jelly-o
                  gingerbread pudding. Gummi bears pastry marshmallow candy canes pie. Pie apple pie carrot cake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="myOrderThree">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-my-order-three" aria-expanded="false" aria-controls="faq-my-order-three">
                  How can I ship my order to an international location?
                </button>
              </h2>
              <div id="faq-my-order-three" class="collapse" aria-labelledby="myOrderThree" data-bs-parent="#faq-my-order-qna">
                <div class="accordion-body">
                  Tart gummies dragée lollipop fruitcake pastry oat cake. Cookie jelly jelly macaroon icing jelly beans
                  soufflé cake sweet. Macaroon sesame snaps cheesecake tart cake sugar plum. Dessert jelly-o sweet
                  muffin chocolate candy pie tootsie roll marzipan. Carrot cake marshmallow pastry. Bonbon biscuit
                  pastry topping toffee dessert gummies. Topping apple pie pie croissant cotton candy dessert tiramisu.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="myOrderFour">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-my-order-four" aria-expanded="false" aria-controls="faq-my-order-four">
                  I missed the delivery of my order today. What should I do?
                </button>
              </h2>
              <div id="faq-my-order-four" class="collapse" aria-labelledby="myOrderFour" data-bs-parent="#faq-my-order-qna">
                <div class="accordion-body">
                  Cheesecake muffin cupcake dragée lemon drops tiramisu cake gummies chocolate cake. Marshmallow tart
                  croissant. Tart dessert tiramisu marzipan lollipop lemon drops. Cake bonbon bonbon gummi bears topping
                  jelly beans brownie jujubes muffin. Donut croissant jelly-o cake marzipan. Liquorice marzipan cookie
                  wafer tootsie roll. Tootsie roll sweet cupcake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="myOrderFive">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-my-order-five" aria-expanded="false" aria-controls="faq-my-order-five">
                  The delivery of my order is delayed. What should I do?
                </button>
              </h2>
              <div id="faq-my-order-five" class="collapse" aria-labelledby="myOrderFive" data-bs-parent="#faq-my-order-qna">
                <div class="accordion-body">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                  dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                  aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                  officia deserunt mollit anim id est laborum.
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- product services -->
        <div class="tab-pane" id="faq-product-services" role="tabpanel" aria-labelledby="product-services" aria-expanded="false">
          <!-- icon and header -->
          <div class="d-flex align-items-center">
            <div class="avatar avatar-tag bg-light-primary me-1">
              <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings font-medium-4"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path></svg>
            </div>
            <div>
              <h4 class="mb-0">Product &amp; Services</h4>
              <span>Which license do I need?</span>
            </div>
          </div>

          <!-- frequent answer and question  collapse  -->
          <div class="accordion accordion-margin mt-2" id="faq-product-qna">
            <div class="card accordion-item">
              <h2 class="accordion-header" id="productOne">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-product-one" aria-expanded="false" aria-controls="faq-product-one">
                  How can I register a complaint against the courier executive who came to deliver my order?
                </button>
              </h2>

              <div id="faq-product-one" class="collapse accordion-collapse" aria-labelledby="productOne" data-bs-parent="#faq-product-qna">
                <div class="accordion-body">
                  Pastry pudding cookie toffee bonbon jujubes jujubes powder topping. Jelly beans gummi bears sweet roll
                  bonbon muffin liquorice. Wafer lollipop sesame snaps. Brownie macaroon cookie muffin cupcake candy
                  caramels tiramisu. Oat cake chocolate cake sweet jelly-o brownie biscuit marzipan. Jujubes donut
                  marzipan chocolate bar. Jujubes sugar plum jelly beans tiramisu icing cheesecake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="productTwo">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-product-two" aria-expanded="false" aria-controls="faq-product-two">
                  The status for my shipment shows as ‘not picked up’. What do I do?
                </button>
              </h2>
              <div id="faq-product-two" class="collapse accordion-collapse" aria-labelledby="productTwo" data-bs-parent="#faq-product-qna">
                <div class="accordion-body">
                  Sweet pie candy jelly. Sesame snaps biscuit sugar plum. Sweet roll topping fruitcake. Caramels
                  liquorice biscuit ice cream fruitcake cotton candy tart. Donut caramels gingerbread jelly-o
                  gingerbread pudding. Gummi bears pastry marshmallow candy canes pie. Pie apple pie carrot cake.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="productThree">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-product-three" aria-expanded="false" aria-controls="faq-product-three">
                  How can I get a proof of delivery for my shipment?
                </button>
              </h2>
              <div id="faq-product-three" class="collapse" aria-labelledby="productThree" data-bs-parent="#faq-product-qna">
                <div class="accordion-body">
                  Tart gummies dragée lollipop fruitcake pastry oat cake. Cookie jelly jelly macaroon icing jelly beans
                  soufflé cake sweet. Macaroon sesame snaps cheesecake tart cake sugar plum. Dessert jelly-o sweet
                  muffin chocolate candy pie tootsie roll marzipan. Carrot cake marshmallow pastry. Bonbon biscuit
                  pastry topping toffee dessert gummies. Topping apple pie pie croissant cotton candy dessert tiramisu.
                </div>
              </div>
            </div>
            <div class="card accordion-item">
              <h2 class="accordion-header" id="productFour">
                <button class="accordion-button collapsed" data-bs-toggle="collapse" role="button" data-bs-target="#faq-product-four" aria-expanded="false" aria-controls="faq-product-four">
                  How can I avail your services?
                </button>
              </h2>
              <div id="faq-product-four" class="collapse accordion-collapse" aria-labelledby="productFour" data-bs-parent="#faq-product-qna">
                <div class="accordion-body">
                  Cheesecake muffin cupcake dragée lemon drops tiramisu cake gummies chocolate cake. Marshmallow tart
                  croissant. Tart dessert tiramisu marzipan lollipop lemon drops. Cake bonbon bonbon gummi bears topping
                  jelly beans brownie jujubes muffin. Donut croissant jelly-o cake marzipan. Liquorice marzipan cookie
                  wafer tootsie roll. Tootsie roll sweet cupcake.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
</section>
<!-- Knowledge base ends -->

        </div>
      </div>
    </div>
    <!-- END: Content-->
    <!-- BEGIN: Customizer-->
    <!-- End: Customizer-->
    <!-- Buynow Button-->
    <div class="sidenav-overlay"></div>

    <!-- BEGIN: Footer-->
   <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->
   <script src="/reirm/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
 <form action="<%=request.getContextPath()%>/update-bb-form" name="updateIRM" id="updateIRM" method="post">	
        <input type="hidden" name=idea_no id="document_codeUpdate" />
	</form>
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
    
        <script src="/reirm/resources/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="/reirm/resources/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="/reirm/resources/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="/reirm/resources/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="/reirm/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
     <script src="/reirm/resources/js/scripts/forms/pickers/form-pickers.min.js"></script>
 <script src="/reirm/resources/js/scripts/pages/page-knowledge-base.min.js"></script>
    <script>
      $(window).on('load',  function(){
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
      function getIdea(idea_no){
	    	
	    	$('#document_codeUpdate').val($.trim(idea_no));
	    
	    	$("#updateIRM ").submit();
	    	
      }
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/page-knowledge-base.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:19 GMT -->
</html>