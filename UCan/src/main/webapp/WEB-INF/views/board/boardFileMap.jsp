<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import ="com.you.can.dto.*" %>
    

    
<!DOCTYPE html>
<html lang="en">
<head>
<script
   src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css" />
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css" />
   
   <link rel="stylesheet" href="/resources/css/common.css"><!-- 파일 업로드 css파이 -->
   
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>U Can Find</title>
	
	<!-- core:css -->
	<link rel="stylesheet" href="/resources/assets/vendors/core/core.css">
	<!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="/resources/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  	<link rel="stylesheet" href="/resources/assets/vendors/simplemde/simplemde.min.css">
  
	<!-- end plugin css for this page -->
	<!-- inject:css -->
	<link rel="stylesheet" href="/resources/assets/fonts/feather-font/css/iconfont.css">
	<!-- endinject -->
  <!-- Layout styles -->  
	<link rel="stylesheet" href="/resources/assets/css/demo_1/style.css">
  <!-- End layout styles -->
  <link rel="shortcut icon" href="/resources/assets/images/favicon.png" />
  
  <style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
   height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
   height: 500px;
   margin: 0;
   padding: 0;
}

.place{
   padding: 3px;
}
.place_nm{
   font-size: 18px;
   font-weight: bold;
   margin-bottom: 5px;
}
.place_address{
   margin-bottom: 5px;
}
/* ????이거 없으면 안되는 경우가 있다. */
.pac-container {
    z-index: 9999;
}
</style>
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
			                    		 <li class="nav-item">
						                  <a href="/newboard" class="nav-link">newBoard</a>
						                </li>
						                <li class="nav-item">
						                  <a href="/doginsert" class="nav-link">dog insert</a>
						                </li>
              					</ul>
            			</div>
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
              					  </li>
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
				<div class="container">

					<a href="/editors" class="btn btn-primary" role="button">write
						<i data-feather="plus-circle" class="btn-icon-prepend"></i>
					</a>


				</div>
				<br>


				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Tables</a></li>
						<li class="breadcrumb-item active" aria-current="page">Data Table</li>
					</ol>
				</nav>

				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">Data Table</h6>
                
                		<div class="input-group mb-3">
						  <input type="text" class="form-control"  id="inputSearchWord" placeholder="제목에서 검색합니다. 검색어를 입력하세요.">
						    <span class="input-group-append">
						    <button id="btnSearchWord" class="btn btn-primary" type="submit">Go</button>
						  </span>
						</div>
                
                  <br>
                <jsp:useBean id="list" class="java.util.ArrayList" scope="request" />
                <div class="table table-hover">
                  <table id="dataTableExample" class="table">
                    <thead>
                      <tr>
                        <th>num</th>
                        <th>Name</th>
                        <th>Title</th>
						<th>Content</th>
                        <th>date</th>
						<th>ReadCount</th>
                      </tr>
                    </thead>
                    <tbody id = "boardTbody">
                    
     
                     

                      
                    
                    </tbody>
                  </table>
                <!-- pagination start -->  
                  
          
                  <div id="paginationWrapper">  
             <button class="btn btn-sm btn-primary" id="btnBoardInsertForm">글쓰기</button>
      
                  </div>
             
                   <!-- pagination end -->  
                  
                </div>
              </div>
            </div>
					</div>
				</div>
<!-- dog insert start-->


 
 
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Write
    <i data-feather="plus-circle" class="btn-icon-prepend"></i>
  </button>

  <!-- The Insert Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-lg"><!-- xl -->
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
		         <!--	<label for="titleInsert">제목 :</label>-->
		        	<input id="titleInsert" type="text" class="form-control" name="title" placeholder="제목">
		        </div>
									<!-- 간단 내용 입력 -->
				<div class="col-xl-12 form-group">
				<!-- 	<label for="contentInsert">내용 :</label> -->
					<textarea id="contentInsert" class="form-control" rows="10"
						placeholder="내용"></textarea>
                </div>


									<!-- editor start -->
										<!-- 	<p class="card-description">Read the <a href="https://simplemde.com/" target="_blank"> Official SimpleMDE Documentation </a>for a full list of instructions and other options.</p> -->
						         		<!-- 
										<div class="col-md-12 form-group">
												
															
												<label for="simpleMdeExample">내용 :</label>
												<textarea class="form-control" name="tinymce" id="simpleMdeExample" rows="5"  placeholder="내용"></textarea>
											
										</div>
										 -->
						       			<!-- editor end -->
       
       			<!-- google map start -->
        		<div class = "col-xl-12 form-group">
         	<!-- 		<label for="inputSearch">지도 :</label> -->
        	 		<input id="inputSearch" type="text" class="form-control" name="title" placeholder="위치를 검색하세요.">
				</div>
        
		        <div class="col-xl-12 form-group" style="height: 300px;">
		        	  <div id="map"></div>
		        </div>
		        
        		<div class="col-md-12 float-right">
					<button id="btnAddPlaceInsert" class="btn btn-sm btn-primary btn-outline" data-dismiss="modal" type="button">위치 등록</button>
				</div>
        
			<!-- google map end -->
			</div>

<!-- accordion start-->
   <div class = "col-xl-12 form-group" id="accordion" class="accordion" role="tablist">

                    <div class="card-header" role="tab" id="headingTwo">
                  
                      <h6 class="mb-0">
                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                         	강아지 종류
                        </a>
                      </h6>
                    </div>
                    

     <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                        <input class="form-control" id="myInput" type="text" placeholder="Search..">
                  <br>
                   
                   <div class="sizess" id="dogBody">
                
                   
                          </div>
                      </div>
                    </div>

                
   </div>


<!-- accordion end-->


                    <!-- 파일 추가  start -->
									<div class="col-xl-12 form-group">


										<div class="custom-control custom-checkbox mb-3">
											<div class="checkbox-custom checkbox-primary">
												<input type="checkbox" id="chkFileUploadInsert"  class="custom-control-input"> 
												<label for="chkFileUploadInsert" class="custom-control-label">파일 추가</label>
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

  <div class="modal fade" id="boardUpdateModal" data-target="boardUpdateModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" id="boardInsertModalTitle">글 수정</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <div class = "row">
        
        <div class = "col-xl-12 form-group">
        	<input id="titleUpdate" type="text" class="form-control" name="title" placeholder="제목">
        	
        </div>
        
        <div class = "col-xl-12 form-group">
        	<textarea id="contentUpdate"  class="form-control" rows="10" placeholder="내용"></textarea>
        	
        </div>
        
       

         <div class="col-xl-12 form-group">
                              첨부파일 : <span id="fileListUpdate"></span>
                           </div>
                           <div class="col-xl-12 form-group">
                              <div class="checkbox-custom checkbox-primary">
                                      <input type="checkbox" id="chkFileUploadUpdate" />
                                      <label for="chkFileUploadUpdate">파일 변경</label>
                                    </div>
                           </div>
                           <div class="col-xl-12 form-group" style="display:none;" id="imgFileUploadUpdateWrapper">
                              <input type="file" id="inputFileUploadUpdate">
                              <div class="thumbnail-wrapper">
                                      <img id="imgFileUploadUpdate">
                                    </div>
                           </div>
        
        
        <div class = "col-md-12 form-right">
        	<button id="btnBoardUpdate"  class="btn btn-sm btn-primary btn-outline" data-dimiss="modal" type="button">등록</button>
        	
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
  <!-- The detail Modal -->
  <div class="modal fade" id="boardDetailModal"  aria-hidden="false" aria-labelledby="boardDetailModalTitle" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-simple">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" id="boardDetailModalTitle">글 상세</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
            
        </div>
        
        <!-- Modal body -->
    <div class="modal-body">
                     
                  <div class="example table-responsive">
                    <table class="table table-hover">
                      <tbody>
                        <tr><td>글번호</td><td id="boardIdDetail">#</td></tr>
                        <tr><td>제목</td><td id="titleDetail">#</td></tr>
                        <tr><td>내용</td><td id="contentDetail">#</td></tr>
                        <tr><td>작성자</td><td id="userNameDetail">#</td></tr>
                        <tr><td>작성일시</td><td id="regDtDetail">#</td></tr>
                        <tr><td>조회수</td><td id="readCountDetail">#</td></tr>
                          <tr><td>첨부파일</td><td id="fileListDetail">#</td></tr>
                      </tbody>
                    </table>
                  </div>

<button id="btnBoardUpdateForm" class="btn btn-sm btn-primary btn-outline" data-dismiss="modal" type="button">글 수정하기</button>
  <button id="btnBoardDeleteConfirm" class="btn btn-sm btn-warning btn-outline" data-dismiss="modal" type="button">글 삭제하기</button>
   <button id="btnBoardCommentForm" class="btn btn-sm btn-info" type="button">덧글 쓰기</button>


    </div>
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

	    <%
    
    	UserDto userDto = (UserDto) session.getAttribute("userDto");
    String userName = "";
    
    if(userDto != null){
    	System.out.println("---UserSeq= "+userDto.getUserSeq());
    	userName = userDto.getUserName();
    }
    
//  BoardDto boardDto = (BoardDto) session.getAttribute("boardDto");
    
    
    %>
	<script src="/resources/js/util.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key="yourKey"=initMap"
 async defer   ></script>
	<script>
	
	   var LIST_ROW_COUNT = 10;   //limit
	   var OFFSET = 0;
	   var PAGE_COUNT_PER_BLOCK = 10;   // pagination link 갯수
	   var TOTAL_LIST_ITEM_COUNT = 0;
	   var CURRENT_PAGE_INDEX = 1;
		
	
	   $(document).ready(function() {

				boardList();
				dogList();
		   
			$("#btnBoardInsert").click(function() {
			//	alert("버튼 접근");
			
		 if(validate()){  //validateInsert()
				//alert("boardinsert 접근");
				boardInsert();
				$("#myModal").modal("hide");
			} 
		 
		 
		});
			
			
			 $("#myInput").on("keyup", function() {
				    var value = $(this).val().toLowerCase();
				    $("#boardTbody tr").filter(function() {
				      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				    });
				  });
			 
			 
			
			 $("#btnBoardUpdateForm").click(function(){
				 alert("수정 버튼");
					var boardId = $("#boardDetailModal").attr("data-boardId");
					$("#boardUpdateModal").attr("data-boardId", boardId);	
					
					$("#titleUpdate").val($("#titleDetail").html());		
					$("#contentUpdate").val($("#contentDetail").html());
				
					$("#boardDetailModal").modal("hide");
				
					$("#boardUpdateModal").modal("show");
					console.log("boardUpdateModal");
				
					var fileName = $("#fileListDetail").find(".fileName").html();
			         $("#fileListUpdate").html( '<span class="fileName">' + fileName + '</span>');
				
			         $("#chkFileUploadUpdate").prop("checked", false);
			         $("#inputFileUploadUpdate").val("");
			         $("#imgFileUploadUpdate").attr("src", ""); //정리하는 부분. 다시 했을때 남지 않도록 초기화.
			         //$("#imgFileUploadUpdate").removeAttr("src");
			         $("#imgFileUploadUpdateWrapper").hide();
				
				 });
				 
				 $("#btnBoardUpdate").click(function(){
						console.log(" boardUpdate접근");
					 boardUpdate();
					 $("#boardUpdateModal").modal("hide");
					 boardList();
					
					 /* 
					 if(validateUpdate()){
						//boardUpdate();
					} */
				 });
				 
				 $("#btnBoardDeleteConfirm").click(function(){
					alertify.confirm('Upwiden', 
							         '이 글을 삭제 하시겠습니까?',
							         function(){
										boardDelete();
										
									},
									 function(){
										console.log('cancel');
									}
					);
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
				 
				 $("#btnBoardInsertForm").click(function(){
			         $("#titleInsert").val("");
			         $("#contentInsert").val("");
			         $("#chkFileUploadInsert").prop("checked", false);
			         $("#inputFileUploadInsert").val("");
			         $("#imgFileUploadInsert").removeAttr("src");
			         //$("#imgFileUploadInsert").attr("src", "");
			         $("#imgFileUploadInsertWrapper").hide();
			         
			         $("#boardInsertModal").modal("show");
			      });
				 
				//Update
			      $("#chkFileUploadUpdate").change(function(){
			         if( $(this).prop("checked")){
			            $("#imgFileUploadUpdateWrapper").show();
			         }else{
			            $("#inputFileUploadUpdate").val("");
			            $("#imgFileUploadUpdate").attr("src", "");
			            $("#imgFileUploadUpdateWrapper").hide();
			         }
			      });
			      
			      $("#inputFileUploadUpdate").change(function(e){

			         if( this.files && this.files[0] ){
			            var reader = new FileReader();
			            reader.onload = function(e){
			               $("#imgFileUploadUpdate").attr("src", e.target.result);
			            }
			            reader.readAsDataURL(this.files[0]);
			         }
			      });
			      
			    //Search
			      $("#btnSearchWord").click(function(e){
			         var searchWord = $("#inputSearchWord").val();
			         
			         if( searchWord != "" ){
			            SEARCH_WORD = searchWord;
			         }else{
			            SEARCH_WORD = "";
			         }
			         
			         boardList();
			      });
			      
			      $("#GoldenRetriever").click(function(e){
			    	  alert("GoldenRetriever클릭");
			      });
			      
			      
			 
	   });

	  function boardDelete(){
		//  alert("delete 접근"+$("#boardDetailModal").attr("data-boardId"));
		  $.ajax(
			{
				type	:	'post',
				url		:	'/board/delete',
				dataType:	'json',
				data	:
					{  boardId: $("#boardDetailModal").attr("data-boardId")
					},
					beforeSend: function(xhr){
						xhr.setRequestHeader("AJAX", true);
					},
					success : function(data, status, xhr){
						if(data){
							alertify.success("글이 삭제되었습니다.");
							boardList();
						}
					},
					error: function(jqXHR, textStatus, errorThrown)
					{
				      
						if(jqXHR.responseText == "timeout" ){
							window.location.href = "/login"
						}else{
							
						alertify.notify(
				                 'Opps!! 글 삭제 문제가 생겼습니다.', 
				                 'error', //'error','warning','message'
				                 3, //-1
				                 function(){
				                    console.log(jqXHR.responseText); }
				              );
						}
						
					}   
			});
	  }
	  
	  
	  function dogList(){
		//  console.log($("#GoldenRetriever").attr("data-dogId"));
		  $.ajax({
			type : 'get',
			url: '/dog/list',
			dataType : 'json',
		
			beforeSend : function(xhr){   //예외처리 때문에 씀.
					xhr.setRequestHeader("AJAX", true);
				},
			success : function(data, status, xhr){
					makeDogHtml(data);
				},
			error: function(jqXHR, textStatus, errorThrown)
				{
			  
					if(jqXHR.responseText == "timeout" ){
						window.location.href = "/login"
					}else{
						
					alertify.notify(
			                 'Opps!! DogList 과정에 문제가 생겼습니다.', 
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
		
	   function boardList(){
		   
		   $.ajax({
			   
			   type : 'get',
			   url : '/board/list',    
			   dataType : 'json',
			   data :
				   {
				   limit : LIST_ROW_COUNT,
				   offset : OFFSET,
				   searchWord: SEARCH_WORD
			         },
					beforeSend : function(xhr){   //예외처리 때문에 씀.
						xhr.setRequestHeader("AJAX", true);
					},
					success : function(data, status, xhr){
						makeListHtml(data);
					},
					error: function(jqXHR, textStatus, errorThrown)
					{
				  
						if(jqXHR.responseText == "timeout" ){
							window.location.href = "/login"
						}else{
							
						alertify.notify(
				                 'Opps!! 로그인 과정에 문제가 생겼습니다.', 
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
	   
	   function boardListTotalCnt(){
		      
		      $.ajax(
		      {
		           type : 'get',
		           url : '/board/list/totalCnt',
		           dataType : 'json',
		           data : 
		           {
		              searchWord: SEARCH_WORD
		           },

		           beforeSend : function(xhr){
		               //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
		               xhr.setRequestHeader("AJAX", true);
		           },
		           success : function(data, status, xhr) {
		              TOTAL_LIST_ITEM_COUNT = data;
		              addPagination();
		           }, 
		           error: function(jqXHR, textStatus, errorThrown) 
		           { 
		              if( jqXHR.responseText == "timeout" ){
		                 window.location.href = "/login"
		              }else{
		                 alertify.notify(
		                     'Opps!! 글 전체 갯수 조회 과정에 문제가 생겼습니다.', 
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
	   
	   
	   function makeDogHtml(list){
		   console.log(dogUrl);
		  
		   $("#dogBody").html("");
		   
		   for(var i=0; i<list.length;i++){
			 	  var dogUrl =list[i].dogUrl;			 
		     	  var imghtml = '<img class="dogImage" src = '+dogUrl+'/>';
				  $("#dogBody").append(imghtml);
			}
		}

		function makeListHtml(list) { //board에 붙이는 작업.
			$("#boardTbody").html(""); //이미 조회된 애들은 지워버리려고. 초기화.

			//var boardArray = JSON.parse(data); // @Repository로 자동 json 변환
			for (var i = 0; i < list.length; i++) {

				var boardId = list[i].boardId;
				var userName = list[i].userName;
				var title = list[i].title;
				var content = list[i].content;
				var regDt = list[i].regDt;
				console.log(regDt);
				var readCount = list[i].readCount;
				//   var img ;

				var listHtml = '<tr style="cursor:pointer" data-boardId=' + boardId +'><td>'
						+ boardId
						+ '</td><td>'
						+ userName
						+ '</td><td>'
						+ title
						+ '</td><td>'
						+ content
						+ '</td><td>'
						+ regDt
						+ '</td><td>' + readCount + '</td></tr>';

				$("#boardTbody").append(listHtml);
			}

			makeListHtmlEventHandler();

			boardListTotalCnt();
		}

		function addPagination() {

			makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK,
					CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT,
					"paginationWrapper", boardList);
		}

		function movePage(pageIndex) {
			OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
			CURRENT_PAGE_INDEX = pageIndex;
			boardList();
		}

		function validate() {

			alert("조건 검사 if문");
			var isTitleValid = false;
			var isContentValid = false;

			var title = $("#titleInsert").val();
			var titleLength = title.length;

			if (titleLength > 0) {

				isTitleValid = true;
			}

			var contentValid = $("#contentInsert").val();
			var contentLength = contentValid.length;

			if (contentLength > 0) {
				isContentValid = true;
			}
			if (isTitleValid && isContentValid) {
				return true;
			} else {
				return false;
			}

		}

		function boardInsert() {

			var formData = new FormData();
			formData.append("userSeq", '<%=userDto.getUserSeq()%>');
		      formData.append("title", $("#titleInsert").val());
		      formData.append("content", $("#contentInsert").val());
		      formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
		      
		      $.ajax(
		      {
		           type : 'post',
		           url : '/board/insertFile',
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
		                 alertify.success('글이 등록되었습니다.');
		                 boardList();
		              }
		           }, 
		           error: function(jqXHR, textStatus, errorThrown) 
		           { 
		              if( jqXHR.responseText == "timeout" ){
		                 window.location.href = "/login"
		              }else{
		                 alertify.notify(
		                        'Opps!! 글 등록 과정에 문제가 생겼습니다.', 
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


	   function makeListHtmlEventHandler(){
		   $("#boardTbody tr").click(function(){
		 
			   var boardId = $(this).attr("data-boardId")
			   
			   boardDetail(boardId);
			// alert(boardId);
		   });
	   }
 		
	   function makeDogHtmlEventHandler(){
		   $("#dogBody").click(function(){
			  var dogId = $(this).attr("data-dogId")

			  dogSelect(dogId);			  
		   });
	   }
	   function dogSelect(dogId){
			 alert(dogId);
		$.ajax({
				type : 'get',
				url : 'dog/select',
				dataType : 'json',
				data : {
					dogId: dogId
				},
				beforeSend : function(xhr) { //예외처리 때문에 씀.
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					//makeDetailHtml(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"
					} else {
						alertify.notify('Opps!! dogChoice 과정에 문제가 생겼습니다.', 'error', //'error','warning','message'
						3, //-1
						function() {
							//여기       console.log(jqXHR.responseText); 
							console.log(jqXHR.responseText);
						});
					}
				}
			});
		}

		function boardDetail(boardId) {
			// $("#boardDetailModal").modal("show"); //test
			// alert(boardId);
			$.ajax({
				type : 'get',
				url : 'board/detail',
				dataType : 'json',
				data : {
					boardId : boardId
				},
				beforeSend : function(xhr) { //예외처리 때문에 씀.
					xhr.setRequestHeader("AJAX", true);
				},
				success : function(data, status, xhr) {
					makeDetailHtml(data);
				},
				error : function(jqXHR, textStatus, errorThrown) {
					if (jqXHR.responseText == "timeout") {
						window.location.href = "/login"
					} else {
						alertify.notify('Opps!! 로그인 과정에 문제가 생겼습니다.', 'error', //'error','warning','message'
						3, //-1
						function() {
							//여기       console.log(jqXHR.responseText); 
							console.log(jqXHR.responseText);
						});
					}

				}
			});

		}

		function makeDetailHtml(detail) {

			var boardId = detail.boardId;
			var userSeq = detail.userSeq;
			var userName = detail.userName;
			var title = detail.title;
			var content = detail.content;
			var regDt = detail.regDt;
			var readCount = detail.readCount;
			var fileList = detail.fileList;

			$("#boardDetailModal").attr("data-boardId", boardId);
			$("#boardIdDetail").html(boardId);

			$("#titleDetail").html(title);
			$("#contentDetail").html(content);
			$("#userNameDetail").html(userName);
			$("#regDtDetail").html(regDt);
			$("#readCountDetail").html(readCount);

			//FileList
			$("#fileListDetail").html("");

			if (fileList.length > 0) {
				for (var i = 0; i < fileList.length; i++) {
					var fileId = fileList[i].fileId;
					var fileName = fileList[i].fileName;
					var fileUrl = fileList[i].fileUrl;

					$("#fileListDetail").append(
							'<span class="fileName">' + fileName + '</span>');
					$("#fileListDetail")
							.append(
									'&nbsp;&nbsp;<a type="button" class="btn btn-outline btn-default btn-xs" ' +
	                     'data-fileId="' + fileId + '" ' +
	                     'href="' + fileUrl + '" ' +
	                     'download="' + fileName + '">내려받기</a>');
				}
			}

			if (userSeq != '<%=userDto.getUserSeq()%>' ){
	            $("#btnBoardUpdateForm").hide();
	            $("#btnBoardDeleteConfirm").hide();
	         }else{
	            $("#btnBoardUpdateForm").show();
	            $("#btnBoardDeleteConfirm").show();
	         }
	         
	         $("#boardDetailModal").modal("show");
	         
	      makeDetailHtmlEventHandler();
	   }
		 
		 function makeDetailHtmlEventHandler(){
			 
		 } 
		 

		 
		 function boardUpdate(){
		      
		      var formData = new FormData();
		      formData.append("boardId", $("#boardUpdateModal").attr("data-boardId"));
		      formData.append("userSeq", '<%=userDto.getUserSeq()%>');
		      formData.append("title", $("#titleUpdate").val());
		      formData.append("content", $("#contentUpdate").val());
		      formData.append("file", $("#inputFileUploadUpdate")[0].files[0]);
		      
		      $.ajax(
		      {
		           type : 'post',
		           url : '/board/updateFile',
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
		                 alertify.success('글이 수정되었습니다.');
		                 boardList();
		              }
		           }, 
		           error: function(jqXHR, textStatus, errorThrown) 
		           {
		              if( jqXHR.responseText == "timeout" ){
		                 window.location.href = "/login"
		              }else{
		                 alertify.notify(
		                    'Opps!! 글 수정 과정에 문제가 생겼습니다.', 
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
	

	 <script >
  var MAP_VIEW;
  var DEFAULT_MAP_LOCATION = {lat: 37.5701, lng: 126.9769};   //kwanghwamoon
  var MARKER;
  var SEARCHED_MAP_LEVEL = 12;
  var SEARCH_WORD = "";
  
  $(document).ready(function() {

     $("#btnAddPlace").click(function(){
  	   $("#inputSearch").html("");
    	 
        $("#addPlaceModal").modal("show");
     });
  });
  

  
  function initMap(){
  
     MAP_VIEW = new google.maps.Map(document.getElementById("map"), {
          center: DEFAULT_MAP_LOCATION,
            scrollwheel: false,
            zoom: 8
       });
     
     var input = document.getElementById("inputSearch");
     
     var autocomplete = new google.maps.places.Autocomplete(input);
       
     autocomplete.bindTo('bounds', MAP_VIEW);
     
     MARKER = new google.maps.Marker({
           map: MAP_VIEW
         });
         
     google.maps.event.addListener(MARKER, 'click', function() {
           INFO_WINDOW.open(MAP_VIEW, MARKER);
         });
    
     google.maps.event.addListener(autocomplete, 'place_changed', function() {

         //INFO_WINDOW.close();
         var place = autocomplete.getPlace();
         if (!place.geometry) {
              return;
         }

         if (place.geometry.viewport) {
              MAP_VIEW.fitBounds(place.geometry.viewport);
         } else {
              MAP_VIEW.setCenter(place.geometry.location);
              MAP_VIEW.setZoom(SEARCHED_MAP_LEVEL);
         }

         // Set the position of the marker using the place ID and location.
         MARKER.setPlace(/** @type {!google.maps.Place} */ ({
              placeId: place.place_id,
              location: place.geometry.location
         }));
         MARKER.setVisible(true);
        
         
         var place_html = 
            '<div class="place" ' +
               'data-place_id="' + place.place_id + '" ' +
               'data-place_lat="' + place.geometry.location.lat() + '" ' +
               'data-place_lng="' + place.geometry.location.lng() + '">' +
            '   <div class="place_nm">' + place.name + '</div>' +
            '   <div class="place_address">' + place.formatted_address + '</div>' +
            '   <button type="button" class="btn btn-xs btn-primary btnAddPlace">추가</button>' +
            '</div>';

         INFO_WINDOW = new google.maps.InfoWindow({
               content: place_html
         });

         INFO_WINDOW.open(MAP_VIEW, MARKER);

         google.maps.event.addListener(INFO_WINDOW,'domready', add_place_event_handler);
         
       });
    
  }
  
  function add_place_event_handler(){

      $(".btnAddPlace").click(function(){

         var place_id = $(this).closest(".place").data("place_id");
         var place_lat = $(this).closest(".place").data("place_lat");
         var place_lng = $(this).closest(".place").data("place_lng");
         var place_nm = $(this).closest(".place").find(".place_nm").html();
         var place_address = $(this).closest(".place").find(".place_address").html();

         console.log("place_id : " + place_id);
         console.log("place_lat : " + place_lat);   
         console.log("place_lng : " + place_lng);   
         console.log("place_nm : " + place_nm);   
         console.log("place_address : " + place_address);   
         
         //INFO_WINDOW.close();
      });
   }
  </script> 
	<!-- core:js -->
	<script src="/resources/assets/vendors/core/core.js"></script>
	<!-- endinject -->
  <!-- plugin js for this page -->
  <script src="/resources/assets/vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="/resources/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="/resources/assets/vendors/simplemde/simplemde.min.js"></script>
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="/resources/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="/resources/assets/js/template.js"></script>
	<!-- endinject -->
  <!-- custom js for this page -->
  	<script src="/resources/assets/js/simplemde.js"></script>
 <!--  <script src="/resources/assets/js/data-table.js"></script> -->
	<!-- end custom js for this page -->
</body>
</html>