<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>U Can Find</title>
	<!-- core:css -->
	<link rel="stylesheet" href="/resources/assets/vendors/core/core.css">
	<!-- endinject -->
	<!-- plugin css for this page -->
	  <link rel="stylesheet" href="/resources/assets/vendors/cropperjs/cropper.min.css">
	  	<link rel="stylesheet" href="/resources/assets/vendors/simplemde/simplemde.min.css">
	<!-- end plugin css for this page -->
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
        <a href="#" class="sidebar-brand">
        UCan<span>Find</span>
        </a>
        <div class="sidebar-toggler not-active">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
      <div class="sidebar-body">
        <ul class="nav">
          <li class="nav-item nav-category">Main</li>
          <li class="nav-item">
            <a href="/" class="nav-link">
              <i class="link-icon" data-feather="box"></i>
              <span class="link-title">Main</span>
            </a>
          </li>
          <li class="nav-item nav-category">web apps</li>
          <li class="nav-item">
         
        
          </li>
          <li class="nav-item">
            <a href="/chat" class="nav-link">
              <i class="link-icon" data-feather="message-square"></i>
              <span class="link-title">Chat</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="/resources/demo_1/pages/apps/calendar.html" class="nav-link">
              <i class="link-icon" data-feather="calendar"></i>
              <span class="link-title">Calendar</span>
            </a>
          </li>
  
        <li class="nav-item nav-category">Board</li>
          <li class="nav-item">
            <a href="/cards" class="nav-link">
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
              </ul>
            </div>
          </li>
         
  
         
      <li class="nav-item nav-category">Pages</li>
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
										<a href="/resources/demo_1/pages/apps/chat.html"><i data-feather="message-square" class="icon-lg"></i><p>Chat</p></a>
										<a href="/resources/demo_1/pages/apps/calendar.html"><i data-feather="calendar" class="icon-lg"></i><p>Calendar</p></a>
										<a href="/resources/demo_1/pages/email/inbox.html"><i data-feather="mail" class="icon-lg"></i><p>Email</p></a>
										<a href="/resources/demo_1/pages/general/profile.html"><i data-feather="instagram" class="icon-lg"></i><p>Profile</p></a>
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
											<a href="/resources/demo_1/pages/general/profile.html" class="nav-link">
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

		  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Write
  </button>

  <!-- The Insert Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" id="boardInsertModalTitle">글쓰기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <div class = "row">
        
        <div class = "col-xl-12 form-group">
        	<input id="titleInsert" type="text" class="form-control" name="title" placeholder="제목">
        	
        </div>
        
        <div class = "col-xl-12 form-group">
        	<textarea id="contentInsert"  class="form-control" rows="10" placeholder="내용"></textarea>
        	
        </div>
        
         <div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">TinyMCE</h4>
								<p class="card-description">Read the <a href="https://www.tiny.cloud/docs/" target="_blank"> Official TinyMCE Documentation </a>for a full list of instructions and other options.</p>
								<textarea class="form-control" name="tinymce" id="tinymceExample" rows="10"></textarea>
							</div>
						</div>
					</div>
				</div>

                 <!-- photo start-->
        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-8">
                    <div class="form-group">
                      <input type="file" name="img[]" class="file-upload-default" id="cropperImageUpload">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled="" placeholder="Upload Image">
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                        </span>
                      </div>
                    </div>
                    <div>
                      <img src="/resources/assets/images/placeholder.jpg" class="w-100" id="croppingImage" alt="cropper">
                    </div>
                    <div class="d-flex justify-content-between align-items-center flex-wrap">
                      <div class="form-group d-flex align-items-center flex-wrapp mb-0 mr-2 mt-3">
                        <label class="w-50 mr-3 mb-0 mb-2 mb-md-0 text-nowrap">Width (px) :</label>
                        <input type="number" value="300" class="form-control img-w mr-2 mb-2 mb-md-0 w-75" placeholder="Image width">
                        <button class="btn btn-primary crop mb-2 mb-md-0">Crop</button>
                      </div>
                      <div class="mb-4 mb-md-0 mt-3">
                        <a href="javascript:;" class="btn btn-outline-primary download">Download</a>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 ml-auto">
                    <h6 class="card-description mb-2 mb-md-4">Cropped Image: </h6>
                    <img class="w-100 cropped-img mt-2" src="#" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

			</div>
			<!-- photo end-->
                        
 <div class = "col-md-12 form-right">
        	<button id="btnBoardInsert"  class="btn btn-sm btn-primary btn-outline" data-dimiss="modal" type="button">등록</button>
        	
        </div>
							</div>
        
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>

			<!-- title start-->
				<div class="container">

					<div class="form-group">
						<input type="text" class="form-control" placeholder="Title"
							name="text2">
					</div>

				</div>
						<!-- title end-->
					<div class="page-content">

		
	
			
   
				<!-- content start-->
				
				
				
				<div class="container">
				   <div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">TinyMCE</h4>
								<p class="card-description">Read the <a href="https://www.tiny.cloud/docs/" target="_blank"> Official TinyMCE Documentation </a>for a full list of instructions and other options.</p>
								<textarea class="form-control" name="tinymce" id="tinymceExample" rows="10"></textarea>
							</div>
						</div>
					</div>
				</div>
				     	<!-- photo start-->
        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-8">
                    <div class="form-group">
                      <input type="file" name="img[]" class="file-upload-default" id="cropperImageUpload">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled="" placeholder="Upload Image">
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                        </span>
                      </div>
                    </div>
                    <div>
                      <img src="/resources/assets/images/placeholder.jpg" class="w-100" id="croppingImage" alt="cropper">
                    </div>
                    <div class="d-flex justify-content-between align-items-center flex-wrap">
                      <div class="form-group d-flex align-items-center flex-wrapp mb-0 mr-2 mt-3">
                        <label class="w-50 mr-3 mb-0 mb-2 mb-md-0 text-nowrap">Width (px) :</label>
                        <input type="number" value="300" class="form-control img-w mr-2 mb-2 mb-md-0 w-75" placeholder="Image width">
                        <button class="btn btn-primary crop mb-2 mb-md-0">Crop</button>
                      </div>
                      <div class="mb-4 mb-md-0 mt-3">
                        <a href="javascript:;" class="btn btn-outline-primary download">Download</a>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 ml-auto">
                    <h6 class="card-description mb-2 mb-md-4">Cropped Image: </h6>
                    <img class="w-100 cropped-img mt-2" src="#" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

			</div>
			<!-- photo end-->
				
				
					<form action="/action_page.php">
						<div class="form-group">
							<label for="comment">Comment:</label>
							<textarea class="form-control" rows="20" id="comment" name="text" placeholder="content"></textarea>
						</div>
						
					</form>
	<!-- content end-->

          <button id="btn btn-primary">Submit</button>



				</div>


			</div>

			<!-- partial:../../partials/_footer.html -->
			<footer class="footer d-flex flex-column flex-md-row align-items-center justify-content-between">
				<p class="text-muted text-center text-md-left">Copyright © 2019 <a href="https://www.nobleui.com" target="_blank">NobleUI</a>. All rights reserved</p>
				<p class="text-muted text-center text-md-left mb-0 d-none d-md-block">Handcrafted With <i class="mb-1 text-primary ml-1 icon-small" data-feather="heart"></i></p>
			</footer>
			<!-- partial -->
	
		</div>
	</div>

	<!-- core:js -->
	<script src="/resources/assets/vendors/core/core.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
		<script src="/resources/assets/vendors/tinymce/tinymce.min.js"></script>
	<script src="/resources/assets/vendors/simplemde/simplemde.min.js"></script>
	<script src="/resources/assets/vendors/ace-builds/src-min/ace.js"></script>
	<script src="/resources/assets/vendors/ace-builds/src-min/theme-chaos.js"></script>
	 <script src="/resources/assets/vendors/cropperjs/cropper.min.js"></script>
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="/resources/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="/resources/assets/js/template.js"></script>
	<!-- endinject -->
	<!-- custom js for this page -->
  <!-- end custom js for this page -->
  	<script src="/resources/assets/js/tinymce.js"></script>
	<script src="/resources/assets/js/simplemde.js"></script>
	<script src="/resources/assets/js/ace.js"></script>
   <!-- <script src="../../../assets/js/file-upload.js"></script> -->
  <script src="/resources/assets/js/cropper.js"></script>
  <script>
  $(document).ready(function(){
	
	  
	  
  })
  
  
  
  </script>
  
</body>
</html>