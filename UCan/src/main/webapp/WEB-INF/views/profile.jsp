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
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- endinject -->
	<!-- plugin css for this page -->
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
				
			<!-- partial:/resources/demo_1/partials/_navbar.html -->
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

        <div class="profile-page tx-13">
          <div class="row">
            <div class="col-12 grid-margin">
							<div class="profile-header">
								<div class="cover">
									<div class="gray-shade"></div>
									<figure>
										<img src="https://via.placeholder.com/1148x272" class="img-fluid" alt="profile cover">
									</figure>
									<div class="cover-body d-flex justify-content-between align-items-center">
										<div>
											<img class="profile-pic" src="https://via.placeholder.com/100x100" alt="profile">
											<span class="profile-name">Amiah Burton</span>
										</div>
										<div class="d-none d-md-block">
											<button class="btn btn-primary btn-icon-text btn-edit-profile" id ="btn_editProfile">
												<i data-feather="edit" class="btn-icon-prepend"></i> Edit profile
											</button>
											
											
	
										</div>
									</div>
								</div>
								<div class="header-links">
									<ul class="links d-flex align-items-center mt-3 mt-md-0">
										<li class="header-link-item d-flex align-items-center active">
											<i class="mr-1 icon-md" data-feather="columns"></i>
											<a class="pt-1px d-none d-md-block" href="#">Timeline</a>
										</li>
										<li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
											<i class="mr-1 icon-md" data-feather="user"></i>
											<a class="pt-1px d-none d-md-block" href="#">About</a>
										</li>
										<li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
											<i class="mr-1 icon-md" data-feather="users"></i>
											<a class="pt-1px d-none d-md-block" href="#">Friends <span class="text-muted tx-12">3,765</span></a>
										</li>
										<li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
											<i class="mr-1 icon-md" data-feather="image"></i>
											<a class="pt-1px d-none d-md-block" href="#">Photos</a>
										</li>
										<li class="header-link-item ml-3 pl-3 border-left d-flex align-items-center">
											<i class="mr-1 icon-md" data-feather="video"></i>
											<a class="pt-1px d-none d-md-block" href="#">Videos</a>
										</li>
									</ul>
								</div>
            	</div>
            </div>
					</div>
					<div class="row profile-body">
						<!-- left wrapper start -->
						<div class="d-none d-md-block col-md-4 col-xl-3 left-wrapper">
							<div class="card rounded">
								<div class="card-body">
									<div class="d-flex align-items-center justify-content-between mb-2">
										<h6 class="card-title mb-0">About</h6>
										<div class="dropdown">
											<button class="btn p-0" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												<i class="icon-lg text-muted pb-3px" data-feather="more-horizontal"></i>
											</button>
											<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
												<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="edit-2" class="icon-sm mr-2"></i> <span class="">Edit</span></a>
												<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="git-branch" class="icon-sm mr-2"></i> <span class="">Update</span></a>
												<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="eye" class="icon-sm mr-2"></i> <span class="">View all</span></a>
											</div>
										</div>
									</div>
									<p>Hi! I'm Amiah the Senior UI Designer at NobleUI. We hope you enjoy the design and quality of Social.</p>
									<div class="mt-3">
										<label class="tx-11 font-weight-bold mb-0 text-uppercase">Joined:</label>
										<p class="text-muted">November 15, 2015</p>
									</div>
									<div class="mt-3">
										<label class="tx-11 font-weight-bold mb-0 text-uppercase">Lives:</label>
										<p class="text-muted">New York, USA</p>
									</div>
									<div class="mt-3">
										<label class="tx-11 font-weight-bold mb-0 text-uppercase">Email:</label>
										<p class="text-muted">me@nobleui.com</p>
									</div>
									<div class="mt-3">
										<label class="tx-11 font-weight-bold mb-0 text-uppercase">Website:</label>
										<p class="text-muted">www.nobleui.com</p>
									</div>
									<div class="mt-3 d-flex social-links">
										<a href="javascript:;" class="btn d-flex align-items-center justify-content-center border mr-2 btn-icon github">
											<i data-feather="github" data-toggle="tooltip" title="github.com/nobleui"></i>
										</a>
										<a href="javascript:;" class="btn d-flex align-items-center justify-content-center border mr-2 btn-icon twitter">
											<i data-feather="twitter" data-toggle="tooltip" title="twitter.com/nobleui"></i>
										</a>
										<a href="javascript:;" class="btn d-flex align-items-center justify-content-center border mr-2 btn-icon instagram">
											<i data-feather="instagram" data-toggle="tooltip" title="instagram.com/nobleui"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
						<!-- left wrapper end -->
						<!-- middle wrapper start -->
						<div class="col-md-8 col-xl-6 middle-wrapper">
							<div class="row">
								<div class="col-md-12 grid-margin">
									<div class="card rounded">
										<div class="card-header">
											<div class="d-flex align-items-center justify-content-between">
												<div class="d-flex align-items-center">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p class = "UserNameProfile">
														</p>
														<p class="tx-11 text-muted">1 min ago</p>
													</div>
												</div>
												<div class="dropdown">
													<button class="btn p-0" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
														<i class="icon-lg pb-3px" data-feather="more-horizontal"></i>
													</button>
													<div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="meh" class="icon-sm mr-2"></i> <span class="">Unfollow</span></a>
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="corner-right-up" class="icon-sm mr-2"></i> <span class="">Go to post</span></a>
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="share-2" class="icon-sm mr-2"></i> <span class="">Share</span></a>
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="copy" class="icon-sm mr-2"></i> <span class="">Copy link</span></a>
													</div>
												</div>
											</div>
										</div>
										<div class="card-body">
											<p class="mb-3 tx-14">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus minima delectus nemo unde quae recusandae assumenda.</p>
											<img class="img-fluid" src="https://via.placeholder.com/513x342" alt="">
										</div>
										<div class="card-footer">
											<div class="d-flex post-actions">
												<a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
													<i class="icon-md" data-feather="heart"></i>
													<p class="d-none d-md-block ml-2">Like</p>
												</a>
												<a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
													<i class="icon-md" data-feather="message-square"></i>
													<p class="d-none d-md-block ml-2">Comment</p>
												</a>
												<a href="javascript:;" class="d-flex align-items-center text-muted">
													<i class="icon-md" data-feather="share"></i>
													<p class="d-none d-md-block ml-2">Share</p>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="card rounded">
										<div class="card-header">
											<div class="d-flex align-items-center justify-content-between">
												<div class="d-flex align-items-center">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p>Mike Popescu</p>
														<p class="tx-11 text-muted">5 min ago</p>
													</div>
												</div>
												<div class="dropdown">
													<button class="btn p-0" type="button" id="dropdownMenuButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
														<i class="icon-lg pb-3px" data-feather="more-horizontal"></i>
													</button>
													<div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="meh" class="icon-sm mr-2"></i> <span class="">Unfollow</span></a>
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="corner-right-up" class="icon-sm mr-2"></i> <span class="">Go to post</span></a>
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="share-2" class="icon-sm mr-2"></i> <span class="">Share</span></a>
														<a class="dropdown-item d-flex align-items-center" href="#"><i data-feather="copy" class="icon-sm mr-2"></i> <span class="">Copy link</span></a>
													</div>
												</div>
											</div>
										</div>
										<div class="card-body">
											<p class="mb-3 tx-14">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
											<img class="img-fluid" src="https://via.placeholder.com/513x342" alt="">
										</div>
										<div class="card-footer">
											<div class="d-flex post-actions">
												<a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
													<i class="icon-md" data-feather="heart"></i>
													<p class="d-none d-md-block ml-2">Like</p>
												</a>
												<a href="javascript:;" class="d-flex align-items-center text-muted mr-4">
													<i class="icon-md" data-feather="message-square"></i>
													<p class="d-none d-md-block ml-2">Comment</p>
												</a>
												<a href="javascript:;" class="d-flex align-items-center text-muted">
													<i class="icon-md" data-feather="share"></i>
													<p class="d-none d-md-block ml-2">Share</p>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- middle wrapper end -->
						<!-- right wrapper start -->
						<div class="d-none d-xl-block col-xl-3 right-wrapper">
							<div class="row">
								<div class="col-md-12 grid-margin">
									<div class="card rounded">
										<div class="card-body">
											<h6 class="card-title">latest photos</h6>
											<div class="latest-photos">
												<div class="row">
													<div class="col-md-4">
														<figure>
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure>
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure>
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure>
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure>
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure>
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure class="mb-0">
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure class="mb-0">
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
													<div class="col-md-4">
														<figure class="mb-0">
															<img class="img-fluid" src="https://via.placeholder.com/67x67" alt="">
														</figure>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12 grid-margin">
									<div class="card rounded">
										<div class="card-body">
											<h6 class="card-title">suggestions for you</h6>
											<div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
												<div class="d-flex align-items-center hover-pointer">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p>Mike Popescu</p>
														<p class="tx-11 text-muted">12 Mutual Friends</p>
													</div>
												</div>
												<button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
											</div>
											<div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
												<div class="d-flex align-items-center hover-pointer">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p>Mike Popescu</p>
														<p class="tx-11 text-muted">12 Mutual Friends</p>
													</div>
												</div>
												<button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
											</div>
											<div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
												<div class="d-flex align-items-center hover-pointer">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p>Mike Popescu</p>
														<p class="tx-11 text-muted">12 Mutual Friends</p>
													</div>
												</div>
												<button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
											</div>
											<div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
												<div class="d-flex align-items-center hover-pointer">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p>Mike Popescu</p>
														<p class="tx-11 text-muted">12 Mutual Friends</p>
													</div>
												</div>
												<button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
											</div>
											<div class="d-flex justify-content-between mb-2 pb-2 border-bottom">
												<div class="d-flex align-items-center hover-pointer">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p>Mike Popescu</p>
														<p class="tx-11 text-muted">12 Mutual Friends</p>
													</div>
												</div>
												<button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
											</div>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center hover-pointer">
													<img class="img-xs rounded-circle" src="https://via.placeholder.com/37x37" alt="">													
													<div class="ml-2">
														<p>Mike Popescu</p>
														<p class="tx-11 text-muted">12 Mutual Friends</p>
													</div>
												</div>
												<button class="btn btn-icon"><i data-feather="user-plus" data-toggle="tooltip" title="Connect"></i></button>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- right wrapper end -->
					</div>
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
<script>
	/* 	
		$(document).ready(function(){
			$('#btn_editProfile').click(function(){
				editProfile();
			});
		});

			
		function editProfile(){
			alert("모달 클릭");
		} */
</script>
	<!-- core:js -->
	<script src="/resources/assets/vendors/core/core.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="/resources/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="/resources/assets/js/template.js"></script>
	<!-- endinject -->
	<!-- custom js for this page -->
	<!-- end custom js for this page -->
</body>
</html>