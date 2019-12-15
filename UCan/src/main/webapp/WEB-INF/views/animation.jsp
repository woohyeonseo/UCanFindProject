<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
    
    img.relative { 
        position: relative;
        left: 350px;
        top: 350px;
     
      }

    </style>

<meta charset="UTF-8">
<title>Welcome!</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	
	window.onload = function(){
	
	var count = 0;
	var image  = document.getElementById('dogimage');
	var frames = [
 	'/resources/dogimage/dog1.jpg','/resources/dogimage/dog2.jpg','/resources/dogimage/dog3.jpg',
	'/resources/dogimage/dog4.jpg','/resources/dogimage/dog5.jpg','/resources/dogimage/dog6.jpg'];

/*  'dog1.jpg','dog2.jpg','dog3.jpg',
	'dog4.jpg','dog5.jpg','dog6.jpg']; */
			
	
	setInterval(function (){
		dogimage.src = frames[count % frames.length];
		count = count + 1;
		
	}, 1000/20);
	};

</script>


</head>
<body>
<p style="text-align: center; height: auto;">

 <img id="dogimage" style="width:20%" class="hi">

</p>
</body>
</html>