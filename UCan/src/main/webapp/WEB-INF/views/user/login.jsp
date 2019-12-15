<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>U Can Find</title>
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>


	
	<!-- core:css -->
	<link rel="stylesheet" href="/resources/assets/vendors/core/core.css">
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
		<div class="page-wrapper full-page">
			<div class="page-content d-flex align-items-center justify-content-center">

				<div class="row w-100 mx-0 auth-page">
					<div class="col-md-8 col-xl-6 mx-auto">
						<div class="card">
							<div class="row">
                <div class="col-md-4 pr-md-0">
                  <div class="auth-left-wrapper">

                  </div>
                </div>
                <div class="col-md-8 pl-md-0">
                  <div class="auth-form-wrapper px-4 py-5">
                    <a href="/" class="noble-ui-logo d-block mb-2">UCan<span>Find</span>                    <img src="/resources/dogsort/dog.png" style="width:10%"></a>

                    <h5 class="text-muted font-weight-normal mb-4">Welcome back! Log in to your account.</h5>
                    <form class="forms-sample">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="userEmail" placeholder="Email">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="userPassword" autocomplete="current-password" placeholder="Password">
                      </div>
                      <div class="form-check form-check-flat form-check-primary">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input">
                          Remember me
                        </label>
                      </div>
                            
                    </form>
                     <div class="mt-3">
                        <button type="button" id="btn_login" class="btn btn-primary mr-2 mb-2 mb-md-0">Login</button>
                        <button type="button" class="btn btn-outline-primary btn-icon-text mb-2 mb-md-0">
                          <i class="btn-icon-prepend" data-feather="twitter"></i>
                          Login with twitter
                         
                        </button>
                         <a href="/register" class="d-block mt-3 text-muted">Not a user? Sign up</a>
                      </div>
                  </div>
                </div>
              </div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
<script>
 
   

 

         $("#btn_login").click(function(){
          //  alert("로그인 시도");
         
            if( validate() ){
               login();
             
            }
         });

 
   
   function validate(){
      var isUserEmailValid = false;
      var isUserPasswordValid = false;
   
      var userEmailValue = $("#userEmail").val();
      var userEmailLength = userEmailValue.length;
      
      if( userEmailLength > 0 ){
         isUserEmailValid = true;
      }
      
      var userPasswordValue = $("#userPassword").val();
      var userPasswordLength = userPasswordValue.length;
      
      if( userPasswordLength > 0 ){
         isUserPasswordValid = true;
      }

      if(   isUserEmailValid && isUserPasswordValid ){
         return true;
      }else{
         return false;
      }
   }
   
   function logout(){
	   document.location.href="/logout";
   }
   
   function login(){
      $.ajax(
      {
           type : 'post',
           url : '/login',
           dataType : 'json',
           data : 
         {
            userEmail: $("#userEmail").val(),
            userPassword: $("#userPassword").val(),
         },
           beforeSend : function(xhr){
               //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
               xhr.setRequestHeader("AJAX", true);
           },
           success : function(data, status, xhr) { // alertify or another welcome page 이동
              console.log(data);
              console.log(status);
              
              if( data ){
                 window.location.href="/";
                 console.log(data);
                 
              }else{
                 alertify.notify(
                     'Opps!! 이메일 또는 비밀번호가 올바르지 않습니다.', 
                     'error', //'error','warning','message'
                     3
                  );
              }
           }, 
           error: function(jqXHR, textStatus, errorThrown) 
           { 
              console.log(jqXHR);
              console.log(textStatus);
              console.log(errorThrown);
              alertify.notify(
                 'Opps!! 로그인 과정에 문제가 생겼습니다.', 
                 'error', //'error','warning','message'
                 3, //-1
                 function(){
                    console.log(jqXHR.responseText); 
                 }
              );
           }
       });
   }
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