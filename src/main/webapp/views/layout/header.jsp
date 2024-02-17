<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<head>
<meta charset="UTF-8">
<!-- <meta name="google-signin-client_id" content="180023549420-4araucipo8cil4matp902f64cte57md9.apps.googleusercontent.com">
 --> <script src="https://accounts.google.com/gsi/client" onload="initClient()" async defer></script>
<title>Header</title>
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
<style type="text/css">
.horizontal-menu .header-navbar.navbar-brand-center .navbar-header {
    left: calc(3% - 56px) !important;
    }
    .card-img {
    max-width: 70% !important;
    margin-left: 15%;
    margin-top: 0% !important;
}
.navbar-brand {
    margin-right: 0rem !important;
    white-space: nowrap;
}
/* .horizontal-menu .header-navbar {
    background: #FFF !important;
    z-index: 999!important;
    line-height: 1;
    min-height: auto;
} */
</style>
</head>
<body>
	            <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                 <div class="navbar-header">
                   
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                                                     <img src="/reelweighbridges/resources/assets/images/Weighbridges.png" alt="homepage" class="dark-logo" height = '60px' width = '390px' />
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
                    </ul>
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

     <form action="<%=request.getContextPath() %>/logout" name="logoutForm" id="logoutForm" method="post">
		<input type="hidden" name="email" id="email"/>
	</form>
    <script>
    $(window).on("load",(function(){
    	//$('.btn-page-block-custom').hide();
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
        if('${welcome}' != ''){
        	  "use strict";var e,o,t,r,a,s="#ebf0f7",i="#5e5873",n="#ebe9f1",d=document.querySelector("#gained-chart"),l=document.querySelector("#order-chart"),h=document.querySelector("#avg-sessions-chart"),p=document.querySelector("#support-trackers-chart"),c=document.querySelector("#sales-visit-chart"),w="rtl"===$("html").attr("data-textdirection");setTimeout(
          			  (function(){toastr.success("You have successfully logged in. Now you can start to explore!","👋 Welcome ${sessionScope.USER_NAME}",{closeButton:!0,tapToDismiss:!1,rtl:w})}),2e3),e={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.primary],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Subscribers",data:[28,40,36,52,38,60,55]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(d,e).render(),o={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.warning],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Orders",data:[10,15,8,15,7,12,8]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(l,o).render(),t={chart:{type:"bar",height:200,sparkline:{enabled:!0},toolbar:{show:!1}},states:{hover:{filter:"none"}},colors:[s,s,window.colors.solid.primary,s,s,s],series:[{name:"Sessions",data:[75,125,225,175,125,75,25]}],grid:{show:!1,padding:{left:0,right:0}},plotOptions:{bar:{columnWidth:"75%",distributed:!0,endingShape:"rounded"}},tooltip:{x:{show:!1}},xaxis:{type:"numeric"}},new ApexCharts(h,t).render(),r={chart:{height:270,type:"radialBar"},plotOptions:{radialBar:{size:150,offsetY:20,startAngle:-150,endAngle:150,hollow:{size:"65%"},track:{background:"#fff",strokeWidth:"100%"},dataLabels:{name:{offsetY:-5,color:i,fontSize:"1rem"},value:{offsetY:15,color:i,fontSize:"1.714rem"}}}},colors:[window.colors.solid.danger],fill:{type:"gradient",gradient:{shade:"dark",type:"horizontal",shadeIntensity:.5,gradientToColors:[window.colors.solid.primary],inverseColors:!0,opacityFrom:1,opacityTo:1,stops:[0,100]}},stroke:{dashArray:8},series:[83],labels:["Completed Tickets"]},new ApexCharts(p,r).render(),a={chart:{height:300,type:"radar",dropShadow:{enabled:!0,blur:8,left:1,top:1,opacity:.2},toolbar:{show:!1},offsetY:5},series:[{name:"Sales",data:[90,50,86,40,100,20]},{name:"Visit",data:[70,75,70,76,20,85]}],stroke:{width:0},colors:[window.colors.solid.primary,window.colors.solid.info],plotOptions:{radar:{polygons:{strokeColors:[n,"transparent","transparent","transparent","transparent","transparent"],connectorColors:"transparent"}}},fill:{type:"gradient",gradient:{shade:"dark",gradientToColors:[window.colors.solid.primary,window.colors.solid.info],shadeIntensity:1,type:"horizontal",opacityFrom:1,opacityTo:1,stops:[0,100,100,100]}},markers:{size:0},legend:{show:!1},labels:["Jan","Feb","Mar","Apr","May","Jun"],dataLabels:{background:{foreColor:[n,n,n,n,n,n]}},yaxis:{show:!1},grid:{show:!1,padding:{bottom:-27}}},new ApexCharts(c,a).render()
        }
        if('${NewUser}' != ''){
      	  "use strict";var e,o,t,r,a,s="#ebf0f7",i="#5e5873",n="#ebe9f1",d=document.querySelector("#gained-chart"),l=document.querySelector("#order-chart"),h=document.querySelector("#avg-sessions-chart"),p=document.querySelector("#support-trackers-chart"),c=document.querySelector("#sales-visit-chart"),w="rtl"===$("html").attr("data-textdirection");setTimeout(
        			  (function(){toastr.success("You have been <b>Rewarded with 100 points</b> By Registering into <b>Safety Portal</b>"," Congratulations ${sessionScope.USER_NAME}! ",{closeButton:!0,tapToDismiss:!1,rtl:w})}),2e3),e={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.primary],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Subscribers",data:[28,40,36,52,38,60,55]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(d,e).render(),o={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.warning],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Orders",data:[10,15,8,15,7,12,8]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(l,o).render(),t={chart:{type:"bar",height:200,sparkline:{enabled:!0},toolbar:{show:!1}},states:{hover:{filter:"none"}},colors:[s,s,window.colors.solid.primary,s,s,s],series:[{name:"Sessions",data:[75,125,225,175,125,75,25]}],grid:{show:!1,padding:{left:0,right:0}},plotOptions:{bar:{columnWidth:"75%",distributed:!0,endingShape:"rounded"}},tooltip:{x:{show:!1}},xaxis:{type:"numeric"}},new ApexCharts(h,t).render(),r={chart:{height:270,type:"radialBar"},plotOptions:{radialBar:{size:150,offsetY:20,startAngle:-150,endAngle:150,hollow:{size:"65%"},track:{background:"#fff",strokeWidth:"100%"},dataLabels:{name:{offsetY:-5,color:i,fontSize:"1rem"},value:{offsetY:15,color:i,fontSize:"1.714rem"}}}},colors:[window.colors.solid.danger],fill:{type:"gradient",gradient:{shade:"dark",type:"horizontal",shadeIntensity:.5,gradientToColors:[window.colors.solid.primary],inverseColors:!0,opacityFrom:1,opacityTo:1,stops:[0,100]}},stroke:{dashArray:8},series:[83],labels:["Completed Tickets"]},new ApexCharts(p,r).render(),a={chart:{height:300,type:"radar",dropShadow:{enabled:!0,blur:8,left:1,top:1,opacity:.2},toolbar:{show:!1},offsetY:5},series:[{name:"Sales",data:[90,50,86,40,100,20]},{name:"Visit",data:[70,75,70,76,20,85]}],stroke:{width:0},colors:[window.colors.solid.primary,window.colors.solid.info],plotOptions:{radar:{polygons:{strokeColors:[n,"transparent","transparent","transparent","transparent","transparent"],connectorColors:"transparent"}}},fill:{type:"gradient",gradient:{shade:"dark",gradientToColors:[window.colors.solid.primary,window.colors.solid.info],shadeIntensity:1,type:"horizontal",opacityFrom:1,opacityTo:1,stops:[0,100,100,100]}},markers:{size:0},legend:{show:!1},labels:["Jan","Feb","Mar","Apr","May","Jun"],dataLabels:{background:{foreColor:[n,n,n,n,n,n]}},yaxis:{show:!1},grid:{show:!1,padding:{bottom:-27}}},new ApexCharts(c,a).render()
      }
        if('${success}' != ''){
        	 "use strict";var e,o,t,r,a,s="#ebf0f7",i="#5e5873",n="#ebe9f1",d=document.querySelector("#gained-chart"),l=document.querySelector("#order-chart"),h=document.querySelector("#avg-sessions-chart"),p=document.querySelector("#support-trackers-chart"),c=document.querySelector("#sales-visit-chart"),w="rtl"===$("html").attr("data-textdirection");setTimeout(
         			  (function(){toastr.success("${success}",{closeButton:!0,tapToDismiss:!1,rtl:w})}),2e3),e={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.primary],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Subscribers",data:[28,40,36,52,38,60,55]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(d,e).render(),o={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.warning],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Orders",data:[10,15,8,15,7,12,8]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(l,o).render(),t={chart:{type:"bar",height:200,sparkline:{enabled:!0},toolbar:{show:!1}},states:{hover:{filter:"none"}},colors:[s,s,window.colors.solid.primary,s,s,s],series:[{name:"Sessions",data:[75,125,225,175,125,75,25]}],grid:{show:!1,padding:{left:0,right:0}},plotOptions:{bar:{columnWidth:"75%",distributed:!0,endingShape:"rounded"}},tooltip:{x:{show:!1}},xaxis:{type:"numeric"}},new ApexCharts(h,t).render(),r={chart:{height:270,type:"radialBar"},plotOptions:{radialBar:{size:150,offsetY:20,startAngle:-150,endAngle:150,hollow:{size:"65%"},track:{background:"#fff",strokeWidth:"100%"},dataLabels:{name:{offsetY:-5,color:i,fontSize:"1rem"},value:{offsetY:15,color:i,fontSize:"1.714rem"}}}},colors:[window.colors.solid.danger],fill:{type:"gradient",gradient:{shade:"dark",type:"horizontal",shadeIntensity:.5,gradientToColors:[window.colors.solid.primary],inverseColors:!0,opacityFrom:1,opacityTo:1,stops:[0,100]}},stroke:{dashArray:8},series:[83],labels:["Completed Tickets"]},new ApexCharts(p,r).render(),a={chart:{height:300,type:"radar",dropShadow:{enabled:!0,blur:8,left:1,top:1,opacity:.2},toolbar:{show:!1},offsetY:5},series:[{name:"Sales",data:[90,50,86,40,100,20]},{name:"Visit",data:[70,75,70,76,20,85]}],stroke:{width:0},colors:[window.colors.solid.primary,window.colors.solid.info],plotOptions:{radar:{polygons:{strokeColors:[n,"transparent","transparent","transparent","transparent","transparent"],connectorColors:"transparent"}}},fill:{type:"gradient",gradient:{shade:"dark",gradientToColors:[window.colors.solid.primary,window.colors.solid.info],shadeIntensity:1,type:"horizontal",opacityFrom:1,opacityTo:1,stops:[0,100,100,100]}},markers:{size:0},legend:{show:!1},labels:["Jan","Feb","Mar","Apr","May","Jun"],dataLabels:{background:{foreColor:[n,n,n,n,n,n]}},yaxis:{show:!1},grid:{show:!1,padding:{bottom:-27}}},new ApexCharts(c,a).render()
        }
        if('${error}' != ''){
       	 "use strict";var e,o,t,r,a,s="#ebf0f7",i="#5e5873",n="#ebe9f1",d=document.querySelector("#gained-chart"),l=document.querySelector("#order-chart"),h=document.querySelector("#avg-sessions-chart"),p=document.querySelector("#support-trackers-chart"),c=document.querySelector("#sales-visit-chart"),w="rtl"===$("html").attr("data-textdirection");setTimeout(
        			  (function(){toastr.error("${error}",{closeButton:!0,tapToDismiss:!1,rtl:w})}),2e3),e={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.primary],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Subscribers",data:[28,40,36,52,38,60,55]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(d,e).render(),o={chart:{height:100,type:"area",toolbar:{show:!1},sparkline:{enabled:!0},grid:{show:!1,padding:{left:0,right:0}}},colors:[window.colors.solid.warning],dataLabels:{enabled:!1},stroke:{curve:"smooth",width:2.5},fill:{type:"gradient",gradient:{shadeIntensity:.9,opacityFrom:.7,opacityTo:.5,stops:[0,80,100]}},series:[{name:"Orders",data:[10,15,8,15,7,12,8]}],xaxis:{labels:{show:!1},axisBorder:{show:!1}},yaxis:[{y:0,offsetX:0,offsetY:0,padding:{left:0,right:0}}],tooltip:{x:{show:!1}}},new ApexCharts(l,o).render(),t={chart:{type:"bar",height:200,sparkline:{enabled:!0},toolbar:{show:!1}},states:{hover:{filter:"none"}},colors:[s,s,window.colors.solid.primary,s,s,s],series:[{name:"Sessions",data:[75,125,225,175,125,75,25]}],grid:{show:!1,padding:{left:0,right:0}},plotOptions:{bar:{columnWidth:"75%",distributed:!0,endingShape:"rounded"}},tooltip:{x:{show:!1}},xaxis:{type:"numeric"}},new ApexCharts(h,t).render(),r={chart:{height:270,type:"radialBar"},plotOptions:{radialBar:{size:150,offsetY:20,startAngle:-150,endAngle:150,hollow:{size:"65%"},track:{background:"#fff",strokeWidth:"100%"},dataLabels:{name:{offsetY:-5,color:i,fontSize:"1rem"},value:{offsetY:15,color:i,fontSize:"1.714rem"}}}},colors:[window.colors.solid.danger],fill:{type:"gradient",gradient:{shade:"dark",type:"horizontal",shadeIntensity:.5,gradientToColors:[window.colors.solid.primary],inverseColors:!0,opacityFrom:1,opacityTo:1,stops:[0,100]}},stroke:{dashArray:8},series:[83],labels:["Completed Tickets"]},new ApexCharts(p,r).render(),a={chart:{height:300,type:"radar",dropShadow:{enabled:!0,blur:8,left:1,top:1,opacity:.2},toolbar:{show:!1},offsetY:5},series:[{name:"Sales",data:[90,50,86,40,100,20]},{name:"Visit",data:[70,75,70,76,20,85]}],stroke:{width:0},colors:[window.colors.solid.primary,window.colors.solid.info],plotOptions:{radar:{polygons:{strokeColors:[n,"transparent","transparent","transparent","transparent","transparent"],connectorColors:"transparent"}}},fill:{type:"gradient",gradient:{shade:"dark",gradientToColors:[window.colors.solid.primary,window.colors.solid.info],shadeIntensity:1,type:"horizontal",opacityFrom:1,opacityTo:1,stops:[0,100,100,100]}},markers:{size:0},legend:{show:!1},labels:["Jan","Feb","Mar","Apr","May","Jun"],dataLabels:{background:{foreColor:[n,n,n,n,n,n]}},yaxis:{show:!1},grid:{show:!1,padding:{bottom:-27}}},new ApexCharts(c,a).render()
       }
        $.blockUI({
            message:
              '<div class="d-flex justify-content-center align-items-center"><p class="me-50 mb-0">Please wait Fetching data...</p> <div class="spinner-border text-danger text-white" role="status"></div> </div>',
            timeout: 1000,
            css: {
              backgroundColor: 'transparent',
              color: '#fff',
              border: '0'
            },
            overlayCSS: {
              opacity: 0.8
            }
          });
  	 }));
    
    const button = document.getElementById("signout_button");
    button.onclick = () => {
      google.accounts.id.disableAutoSelect();
      console.log('User signed out.');
      $("#email").val('');
		$("#logoutForm").submit();
    }
	  
    </script>
</body>
</html>