<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>School LMS - $schoolNumber</title>

	<!-- Bootstrap -->
	<link href="web-site/bootstrap/css/bootstrap.css" rel="stylesheet">
	<script src="web-site/bootstrap/js/jquery-1.11.3.min.js"></script>
	<script src="web-site/bootstrap/js/bootstrap.js"></script>

	<link href="web-site/main.css" rel="stylesheet">
	<link href="web-site/icon.png" type="image/png" rel="shortcut icon">

</head>
<body>

	<div class="panel panel-default">
		<div class="panel-heading">
			<img class="img-responsive img-new" src="web-site/icon.png" width="50%" height="50%" alt="logo"/>
		</div>
		
		<!-- If user is teacher ID input group addon changes to tc -->
		
		<div class="panel-body">
			<div class="form-group">
			    <form action="/Login" method="POST">
				    <div class="input-group top">
  					    <span class="input-group-addon" id="spanny">ST</span>
  					    <input type="text" class="form-control" name="id" placeholder="ID" aria-describedby="basic-addon1" autofocus value=${username}>
				    </div>
  				        <input class="form-control top" type="password" placeholder="Password" name="password">
  				        <select class="form-control top" id="selected_items" onchange="MyFunction()" name="user_type">
  					        <option value="1">Student</option>
  					        <option value="2">Teacher</option>
  				        </select>
  				
  				<!-- Now sign in button do nothing -->
  				
				    <input type="submit" class="btn btn-default center-block top" value="Sign in"/>
				</form>
			</div>
        </div>
	</div>

	<script>
       function MyFunction(){
            var e = document.getElementById("selected_items");
            var arr = ["ST", "TH"];
            var i = document.getElementById("spanny");
           	i.innerHTML = arr[e.selectedIndex];
       }
	</script>
	<script>
            myFunction();
	</script>
</body>
</html>

