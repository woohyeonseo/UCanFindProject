<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
	<title>U Can Find</title>
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
                    <a href="#" class="noble-ui-logo d-block mb-2">Noble<span>UI</span></a>
                    <h5 class="text-muted font-weight-normal mb-4">Create a free account.</h5>
                    <form class="forms-sample">
                      <div class="form-group">
                        <label for="exampleInputUsername1">Username</label>
                        <input type="text" class="form-control" id="userName" name="userName" autocomplete="Username" placeholder="Username">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="Email">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword">Password</label>
                        <input type="password" class="form-control" id="userPassword" name="userPassword" autocomplete="current-password" placeholder="Password">
                      </div>
                      
                      <div class="form-group">
            <label class="sr-only" for="inputPasswordCheck">Retype Password</label>
            <input type="password" class="form-control" id="userPassword2" name="userPassword2"  placeholder="Confirm Password">
            <div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
          </div>
                      
                      <div class="form-check form-check-flat form-check-primary">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" >
                          Remember me
                        </label>
                      </div>
                      <div class="mt-3">
                    
                      </div>
                 
                    </form>
                    
                             <a href="/login" class="d-block mt-3 text-muted">Already a user? Sign in</a>
                        <button id="btn_register"  name="btn-register" class="btn btn-primary mr-2 mb-2 mb-md-0">Sing up</button>
                        
                        <button type="button" class="btn btn-outline-primary btn-icon-text mb-2 mb-md-0">
                          <i class="btn-icon-prepend" data-feather="twitter"></i>
                          Sign up with twitter
                        </button>
                        
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
     
         $(document).ready(function() {
           
            

            $("#btn_register").click(function(){
              // console.log("1");
               if( validate() ){
                  sendReqeust();
               }
            });

         
      });
      
      function validate(){
         
         var isUserNameValid = false;
         var isUserEmailValid = false;
         var isUserPasswordValid = false;
         var isUserPassword2Valid = false;

         var patternEng = new RegExp(/[a-zA-Z]/);   // all english

         var patternEmail = new RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
         
         var patternEngAtListOne = new RegExp(/[a-zA-Z]+/);// + for at least one
         var patternSpeAtListOne = new RegExp(/[~!@#$%^&*()_+|<>?:{}]+/);// + for at least one
         var patternNumAtListOne = new RegExp(/[0-9]+/);// + for at least one
         
         //userName
         var userNameValue = $("#userName").val();
         var userNameLength = userNameValue.length;
         
         if( userNameLength > 0 ){
            isUserNameValid = true;
         }
         
         if( isUserNameValid ){
            $("#userName").removeClass("is-invalid");
         }else{
            $("#userName").addClass("is-invalid");
         }
         
         //userEmail
         var userEmailValue = $("#userEmail").val();
         var userEmailLength = userEmailValue.length;
         
         if( patternEmail.test( userEmailValue ) ){
            isUserEmailValid = true;
         }
         
         if( isUserEmailValid ){
            $("#userEmail").removeClass("is-invalid");
         }else{
            $("#userEmail").addClass("is-invalid");
         }
         
         //password
         
         var userPasswordValue = $("#userPassword").val();
         var userPasswordLength = userPasswordValue.length;
         
         var userPassword2Value = $("#userPassword2").val();
         //var password2Length = password2Value.length; // no need
         
         if( patternEngAtListOne.test( userPasswordValue ) 
               && patternSpeAtListOne.test( userPasswordValue )  
               && patternNumAtListOne.test( userPasswordValue )){
            isUserPasswordValid = true;
         }else if( userPasswordLength >= 10 ){
            isUserPasswordValid = true;
         }
         
         if( isUserPasswordValid ){
            $("#userPassword").removeClass("is-invalid");
         }else{
            $("#userPassword").addClass("is-invalid");
         }
         
         //password confirm
         console.log(userPasswordValue);
         console.log(userPassword2Value);
         if( userPasswordValue = userPassword2Value ){
            isUserPassword2Valid = true;
         }
         
         if( isUserPassword2Valid ){
            $("#userPassword2").removeClass("is-invalid");
         }else{
            $("#userPassword2").addClass("is-invalid");
         }
         
         
         if(   isUserNameValid && isUserEmailValid && isUserPasswordValid && isUserPassword2Valid ){
            return true;
         }else{
            return false;
         }
      }
      
      function sendReqeust(){
         $.ajax(
         {
              type : 'post',
              url : '/user',
              dataType : 'json',
              data : 
            {
               userName: $("#userName").val(),
               userEmail: $("#userEmail").val(),
               userPassword: $("#userPassword").val(),
            },
              beforeSend : function(xhr){
                  //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
                  //AJAX만 받기 위해
                  xhr.setRequestHeader("AJAX", true);
              },
              success : function(data, status, xhr) { // alertify or another welcome page 이동
                 alertify.alert(
                       'You', 
                       '회원가입을 축하합니다. 로그인 페이지로 이동합니다', 
                       function(){ 
                          window.location.href="/";
                       })
              }, 
              error: function(jqXHR, textStatus, errorThrown) 
              { 
                 alertify.notify(
                       'Opps!! 회원가입에 문제가 생겼습니다.', 
                       'error', //'error','warning','message'
                       3, //-1
                       function(){
                          console.log(jqXHR.responseText); 
                       }
                    );
              }
          });
         
//            $.post("/user",
//            {
//               userName: $("#userName").val(),
//               userEmail: $("#userEmail").val(),
//               userPassword: $("#userPassword").val(),
//            },
//            function(data, status){
//               console.log("Data: " + data + "\nStatus: " + status);
//            });
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