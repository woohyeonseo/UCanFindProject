<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import = "com.you.can.dto.*" %>
<% 

  UserDto userDto = (UserDto) session.getAttribute("userDto");
  if(userDto != null){
	  System.out.println(userDto.getUserSeq());
  }
  
  %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<script
   src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css" />
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>U Can Find</title>
	<!-- core:css -->
	<link rel="stylesheet" href="/resources/css/common.css"><!-- 파일 업로드 css파이 -->
	<link rel="stylesheet" href="/resources/assets/vendors/core/core.css">
	<!-- endinject -->
	<!-- plugin css for this page -->
	<!-- end plugin css for this page -->
	  <link rel="stylesheet" href="/resources/assets/vendors/owl.carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="/resources/assets/vendors/owl.carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="/resources/assets/vendors/animate.css/animate.min.css">
	
	<!-- inject:css -->
	<link rel="stylesheet" href="/resources/assets/fonts/feather-font/css/iconfont.css">
	<!-- endinject -->
  <!-- Layout styles -->  
	<link rel="stylesheet" href="/resources/assets/css/demo_1/style.css">
  <!-- End layout styles -->
  <link rel="shortcut icon" href="/resources/assets/images/favicon.png" />
</head>
<body>
	<div class="main-wrapper">

		<!-- partial:../../partials/_sidebar.html -->
		<nav class="sidebar">
      <div class="sidebar-header">
        <a href="/" class="sidebar-brand">
          UCan<span>Find</span>
         <img src="/resources/dogsort/dog.png" style="width:20%">
        </a>
        <div class="sidebar-toggler not-active">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
      <div class="sidebar-body">
        <ul class="nav">
        
       
          
          <li class="nav-item nav-category">Board</li>
          <li class="nav-item">
            <a href="/boardFileMap" class="nav-link">
              <i class="link-icon" data-feather="feather"></i>
              <span class="link-title">전체 보기</span>
            </a>
   
          </li>
          
             <li class="nav-item">
            <a href="/cards" class="nav-link">
              <i class="link-icon" data-feather="user-plus"></i>
              <span class="link-title">발견한 사람</span>
            </a>
   
          </li>
                 <li class="nav-item">
            <a href="/cards" class="nav-link">
              <i class="link-icon" data-feather="user-minus"></i>
              <span class="link-title">찾는 사람</span>
            </a>
   
          </li>
          

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#forms" role="button" aria-expanded="false" aria-controls="forms">
              <i class="link-icon" data-feather="inbox"></i>
              <span class="link-title">Forms</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            
               <div class="collapse" id="forms">
              <ul class="nav sub-menu">
                <li class="nav-item">
                  <a href="/cards" class="nav-link">Card</a>
                </li>
                <li class="nav-item">
                  <a href="/table" class="nav-link">Table</a>
                </li>
                  <li class="nav-item">
                  <a href="/boardFileMap" class="nav-link">boardFileMap</a>
                </li>
              </ul>
            </div>
   
          </li>

        <li class="nav-item nav-category">web apps</li>
     
          <li class="nav-item">
          </li>
           <li class="nav-item">
     <!--        <a href="/resources/demo_1/pages/apps/chat.html" class="nav-link"> -->
             <a href="/chat" class="nav-link">
              <i class="link-icon" data-feather="message-square"></i>
              <span class="link-title">Chat</span>
            </a>
          </li>

          <li class="nav-item nav-category">Pages</li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#general-pages" role="button" aria-expanded="false" aria-controls="general-pages">
              <i class="link-icon" data-feather="book"></i>
              <span class="link-title">Special pages</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse" id="general-pages">
              <ul class="nav sub-menu">
                <li class="nav-item">
                  <a href="/blankPage" class="nav-link">Blank page</a>
              
                <li class="nav-item">
                  <a href="/profile" class="nav-link">Profile</a>
                </li>
            
              
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#authPages" role="button" aria-expanded="false" aria-controls="authPages">
              <i class="link-icon" data-feather="unlock"></i>
              <span class="link-title">Authentication</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse" id="authPages">
              <ul class="nav sub-menu">
                <li class="nav-item">
                  <a href="/login" class="nav-link">Login</a>
                </li>
                <li class="nav-item">
                  <a href="/register" class="nav-link">Register</a>
                </li>
                
                 <li class="nav-item">
                  <a href="/profile" class="nav-link">profile</a>
                </li>
                
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#errorPages" role="button" aria-expanded="false" aria-controls="errorPages">
              <i class="link-icon" data-feather="cloud-off"></i>
              <span class="link-title">Error</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse" id="errorPages">
              <ul class="nav sub-menu">
                <li class="nav-item">
                  <a href="/resources/demo_1/pages/error/404.html" class="nav-link">404</a>
                </li>
                <li class="nav-item">
                  <a href="/resources/demo_1/pages/error/500.html" class="nav-link">500</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item nav-category">Docs</li>
          <li class="nav-item">
            <a href="https://www.nobleui.com/html/documentation/docs.html" target="_blank" class="nav-link">
              <i class="link-icon" data-feather="hash"></i>
              <span class="link-title">Documentation</span>
            </a>
          </li>
        </ul>
      </div>
    </nav>
    <nav class="settings-sidebar">
      <div class="sidebar-body">
        <a href="#" class="settings-sidebar-toggler">
          <i data-feather="settings"></i>
        </a>
        <h6 class="text-muted">Sidebar:</h6>
        <div class="form-group border-bottom">
          <div class="form-check form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="sidebarThemeSettings" id="sidebarLight" value="sidebar-light" checked>
              Light
            </label>
          </div>
          <div class="form-check form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="sidebarThemeSettings" id="sidebarDark" value="sidebar-dark">
              Dark
            </label>
          </div>
        </div>
        <div class="theme-wrapper">
          <h6 class="text-muted mb-2">Light Theme:</h6>
          <a class="theme-item active" href="/resources/demo_1/dashboard-one.html">
            <img src="/resources/assets/images/screenshots/light.jpg" alt="light theme">
          </a>
          <h6 class="text-muted mb-2">Dark Theme:</h6>
          <a class="theme-item" href="/resources/demo_2/dashboard-one.html">
            <img src="/resources/assets/images/screenshots/dark.jpg" alt="light theme">
          </a>
        </div>
      </div>
    </nav>
		<!-- partial -->
	
		<div class="page-wrapper">
				
			<!-- partial:../../partials/_navbar.html -->
			<nav class="navbar">
				<a href="#" class="sidebar-toggler">
					<i data-feather="menu"></i>
				</a>
				<div class="navbar-content">
					<form class="search-form">
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<i data-feather="search"></i>
								</div>
							</div>
							<input type="text" class="form-control" id="navbarForm" placeholder="Search here...">
						</div>
					</form>
					<ul class="navbar-nav">
						<li class="nav-item dropdown nav-apps">
							<a class="nav-link dropdown-toggle" href="#" id="appsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i data-feather="grid"></i>
							</a>
							<div class="dropdown-menu" aria-labelledby="appsDropdown">
								<div class="dropdown-header d-flex align-items-center justify-content-between">
									<p class="mb-0 font-weight-medium">Web Apps</p>
									<a href="javascript:;" class="text-muted">Edit</a>
								</div>
								<div class="dropdown-body">
									<div class="d-flex align-items-center apps">
	<!--									<a href="/resources/demo_1/pages/apps/chat.html"><i data-feather="message-square" class="icon-lg"></i><p>Chat</p></a>  -->
					    			<a href="chat"><i data-feather="message-square" class="icon-lg"></i><p>Chat</p></a>
										<a href="/resources/demo_1/pages/apps/calendar.html"><i data-feather="calendar" class="icon-lg"></i><p>Calendar</p></a>
										<a href="/resources/demo_1/pages/email/inbox.html"><i data-feather="mail" class="icon-lg"></i><p>Email</p></a>
							<!--			<a href="/resources/demo_1/pages/general/profile.html"><i data-feather="instagram" class="icon-lg"></i><p>Profile</p></a>-->
									<a href="/profile"><i data-feather="instagram" class="icon-lg"></i><p>Profile</p></a>
									</div>
								</div>
								<div class="dropdown-footer d-flex align-items-center justify-content-center">
									<a href="javascript:;">View all</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown nav-messages">
							<a class="nav-link dropdown-toggle" href="#" id="messageDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i data-feather="mail"></i>
							</a>
							<div class="dropdown-menu" aria-labelledby="messageDropdown">
								<div class="dropdown-header d-flex align-items-center justify-content-between">
									<p class="mb-0 font-weight-medium">9 New Messages</p>
									<a href="javascript:;" class="text-muted">Clear all</a>
								</div>
								<div class="dropdown-body">
									<a href="javascript:;" class="dropdown-item">
										<div class="figure">
											<img src="https://via.placeholder.com/30x30" alt="userr">
										</div>
										<div class="content">
											<div class="d-flex justify-content-between align-items-center">
												<p>Leonardo Payne</p>
												<p class="sub-text text-muted">2 min ago</p>
											</div>	
											<p class="sub-text text-muted">Project status</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="figure">
											<img src="https://via.placeholder.com/30x30" alt="userr">
										</div>
										<div class="content">
											<div class="d-flex justify-content-between align-items-center">
												<p>Carl Henson</p>
												<p class="sub-text text-muted">30 min ago</p>
											</div>	
											<p class="sub-text text-muted">Client meeting</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="figure">
											<img src="https://via.placeholder.com/30x30" alt="userr">
										</div>
										<div class="content">
											<div class="d-flex justify-content-between align-items-center">
												<p>Jensen Combs</p>												
												<p class="sub-text text-muted">1 hrs ago</p>
											</div>	
											<p class="sub-text text-muted">Project updates</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="figure">
											<img src="https://via.placeholder.com/30x30" alt="userr">
										</div>
										<div class="content">
											<div class="d-flex justify-content-between align-items-center">
												<p>Amiah Burton</p>
												<p class="sub-text text-muted">2 hrs ago</p>
											</div>
											<p class="sub-text text-muted">Project deadline</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="figure">
											<img src="https://via.placeholder.com/30x30" alt="userr">
										</div>
										<div class="content">
											<div class="d-flex justify-content-between align-items-center">
												<p>Yaretzi Mayo</p>
												<p class="sub-text text-muted">5 hr ago</p>
											</div>
											<p class="sub-text text-muted">New record</p>
										</div>
									</a>
								</div>
								<div class="dropdown-footer d-flex align-items-center justify-content-center">
									<a href="javascript:;">View all</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown nav-notifications">
							<a class="nav-link dropdown-toggle" href="#" id="notificationDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i data-feather="bell"></i>
								<div class="indicator">
									<div class="circle"></div>
								</div>
							</a>
							<div class="dropdown-menu" aria-labelledby="notificationDropdown">
								<div class="dropdown-header d-flex align-items-center justify-content-between">
									<p class="mb-0 font-weight-medium">6 New Notifications</p>
									<a href="javascript:;" class="text-muted">Clear all</a>
								</div>
								<div class="dropdown-body">
									<a href="javascript:;" class="dropdown-item">
										<div class="icon">
											<i data-feather="user-plus"></i>
										</div>
										<div class="content">
											<p>New customer registered</p>
											<p class="sub-text text-muted">2 sec ago</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="icon">
											<i data-feather="gift"></i>
										</div>
										<div class="content">
											<p>New Order Recieved</p>
											<p class="sub-text text-muted">30 min ago</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="icon">
											<i data-feather="alert-circle"></i>
										</div>
										<div class="content">
											<p>Server Limit Reached!</p>
											<p class="sub-text text-muted">1 hrs ago</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="icon">
											<i data-feather="layers"></i>
										</div>
										<div class="content">
											<p>Apps are ready for update</p>
											<p class="sub-text text-muted">5 hrs ago</p>
										</div>
									</a>
									<a href="javascript:;" class="dropdown-item">
										<div class="icon">
											<i data-feather="download"></i>
										</div>
										<div class="content">
											<p>Download completed</p>
											<p class="sub-text text-muted">6 hrs ago</p>
										</div>
									</a>
								</div>
								<div class="dropdown-footer d-flex align-items-center justify-content-center">
									<a href="javascript:;">View all</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown nav-profile">
							<a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<img src="https://via.placeholder.com/30x30" alt="profile">
							</a>
							<div class="dropdown-menu" aria-labelledby="profileDropdown">
								<div class="dropdown-header d-flex flex-column align-items-center">
									<div class="figure mb-3">
										<img src="https://via.placeholder.com/80x80" alt="">
									</div>
									<div class="info text-center">
										<p class="name font-weight-bold mb-0">Amiah Burton</p>
										<p class="email text-muted mb-3">amiahburton@gmail.com</p>
									</div>
								</div>
								<div class="dropdown-body">
									<ul class="profile-nav p-0 pt-3">
										<li class="nav-item">
									<!-- 		<a href="/resources/demo_1/pages/general/profile.html" class="nav-link"> -->
									<a href="profile" class="nav-link"> 
												<i data-feather="user"></i>
												<span>Profile</span>
											</a>
										</li>
										<li class="nav-item">
											<a href="javascript:;" class="nav-link">
												<i data-feather="edit"></i>
												<span>Edit Profile</span>
											</a>
										</li>
										<li class="nav-item">
											<a href="javascript:;" class="nav-link">
												<i data-feather="repeat"></i>
												<span>Switch User</span>
											</a>
										</li>
										<li class="nav-item">
											<a href="javascript:;" class="nav-link">
												<i data-feather="log-out"></i>
												<span>Log Out</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</nav>
			<!-- partial -->

			<div class="page-content">
							
							
							 <div class = "col-xl-12 form-group">
			         
			        			<input id="NameInsert" type="text" class="form-control" name="dogname" placeholder="이름">
			      			  </div>
								
							
					         <!-- 파일 추가  start -->
									<div class="col-xl-12 form-group">


										<div class="form-check form-check-flat form-check-primary">
											<div class="checkbox-custom checkbox-primary">
												<input type="checkbox" id="chkFileUploadInsert" > 
												<label for="chkFileUploadInsert">파일 추가</label>
											</div>
										</div>
										<div class="col-xl-12 form-group" style="display: none;" id="imgFileUploadInsertWrapper">
											<input type="file" id="inputFileUploadInsert">
											<div class="thumbnail-wrapper">
												<img id="imgFileUploadInsert">
											</div>
										</div>
									</div>
                        <!-- 파일 추가   end-->
		                      
 <div class = "col-md-12 form-right">
        	<button id="btnDogInsert"  class="btn btn-sm btn-primary btn-outline" data-dimiss="modal" type="button">등록</button>
        	
        </div>
		
          </div>

<div class="container">


</div>


			<!-- partial:../../partials/_footer.html -->
			<footer class="footer d-flex flex-column flex-md-row align-items-center justify-content-between">
				<p class="text-muted text-center text-md-left">Copyright © 2019 <a href="https://www.nobleui.com" target="_blank">NobleUI</a>. All rights reserved</p>
				<p class="text-muted text-center text-md-left mb-0 d-none d-md-block">Handcrafted With <i class="mb-1 text-primary ml-1 icon-small" data-feather="heart"></i></p>
			</footer>
			<!-- partial -->
	
		</div>
	</div>


<script>
$(document).ready(function(){
	
	$("#btnDogInsert").click(function() {
		
		dogInsert();
	});
	
	 $("#chkFileUploadInsert").change(function(){
         if( $(this).prop("checked")){
            $("#imgFileUploadInsertWrapper").show();
         }else{
            $("#inputFileUploadInsert").val("");
            $("#imgFileUploadInsert").attr("src", ""); //  $("#imgFileUploadInsert").RemoveAttr("src", "");
            $("#imgFileUploadInsertWrapper").hide();
         }
      });
	 
	 $("#inputFileUploadInsert").change(function(e){

         if( this.files && this.files[0] ){
            var reader = new FileReader();
            reader.onload = function(e){
               $("#imgFileUploadInsert").attr("src", e.target.result);
            }
            reader.readAsDataURL(this.files[0]);
         }
      }); 
	 
});

		function dogInsert(){
			
			console.log($("#NameInsert").val()); 
			
			var formData = new FormData();
			 formData.append("dogName", $("#NameInsert").val());
			 formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
			 $.ajax(
				      {
				           type : 'post',
				           url : '/doginsert',
				           dataType : 'json',
				           data : formData,
				           contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
				           processData: false, // otherwise, jQuery will try to convert your FormData into a string, which will fail.
				           beforeSend : function(xhr){
				               //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
				               xhr.setRequestHeader("AJAX", true);
				           },
				           success : function(data, status, xhr) { 
				         
				              if( data ){
				                 alertify.success('강아지가 등록되었습니다.');
			               
				              }
				           }, 
				           error: function(jqXHR, textStatus, errorThrown) 
				           { 
				              if( jqXHR.responseText == "timeout" ){
				                 window.location.href = "/login"
				              }else{
				                 alertify.notify(
				                        'Opps!! 강아지 등록 과정에 문제가 생겼습니다.', 
				                         'error', //'error','warning','message'
				                        3, //-1
				                        function(){
				                           console.log(jqXHR.responseText); 
				                        }
				                     );
				              }
				              
				           }
				       });
			
			
		}

</script>


	<!-- core:js -->
	<script src="/resources/assets/vendors/core/core.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<!-- end plugin js for this page -->
	  <script src="/resources/assets/vendors/owl.carousel/owl.carousel.min.js"></script>
  <script src="/resources/assets/vendors/jquery-mousewheel/jquery.mousewheel.js"></script>
	
	<!-- inject:js -->
	<script src="/resources/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="/resources/assets/js/template.js"></script>
	
	<!-- auto photo -->
		<!-- inject:js -->
	<script src="/resources/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="/resources/assets/js/template.js"></script>
	<!-- endinject -->
	<!-- custom js for this page -->
	<script src="/resources/assets/js/carousel.js"></script>
	
  <!-- end custom js for this page -->
</body>
</html>