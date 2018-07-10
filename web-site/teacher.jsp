<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>School LMS - $schoolNumber</title>

	<!-- Bootstrap -->
	<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
	<script src="bootstrap/js/jquery-1.11.3.min.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

	<link href="main.css" rel="stylesheet">
	<link href="icon.png" type="image/png" rel="shortcut icon">
	
	<style>
		img {
			margin: auto!important;
		}
	</style>
</head>
<body style="padding-top: 70px">
	<div class="container container-big">
	<nav class="container navbar navbar-default navbar-fixed-top">
	  	<div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topFixedNavbar1" aria-expanded="false"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
	      <a class="navbar-brand" href="#">School LMS</a></div>
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="topFixedNavbar1">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="cabinet.html">Cabinet<span class="sr-only">(current)</span></a></li>
			  <li><a href="tschool.html">School</a></li>
			</ul>
          <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">Teachers's name</a></li>
	        <li><a href="#">Sign out</a></li>
          </ul>
	      	<form class="navbar-form navbar-right">
				<div class="input-group relative-group">
						<input type="text" class="form-control" placeholder="Search">
						<div class="input-group-btn">
							<a class="btn btn-default" type="submit" href="#">
								<span class="glyphicon glyphicon-search"></span>
							</a>
						</div>
					</div>
			</form>
        </div>
	    <!-- /.navbar-collapse -->
      	</div>
	  	<!-- /.container-fluid -->
	</nav>
	<ol class="breadcrumb" style="width: 100%;">
      	<li class="active">Cabinet</li>
	</ol>
	<div class="center-panel">
 		<div class="container">
 			<div class="row">
 				<div class="leftPane col-md-6 col-sm-12 table-responsive">
 					<h3>Homeworks</h3>
					<div class="row home">
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-calendar"></span></span>
						  <input type="text" class="form-control" placeholder="yyyy/mm/dd" aria-describedby="basic-addon1" required>
						</div>
						<div>
							<input class="form-control input-group col-md-6" style="padding: 10px;" required placeholder="Subject ID">
						</div>
						<div>
							<textarea class="form-control input-group col-md-6" placeholder="Homework..." style="padding: 10px;"></textarea>
						</div>
						<div>
							<a class="btn btn-default btn-block" type="submit" href="#" style="margin: auto">Add</a>
						</div>
					</div>
 					<table class="table">
 						<tr>
 							<th>Date</th>
 							<th>SubjectID</th>
 							<th>Text</th>
 						</tr>
 						<tr>
 							<td>09 07 2018</td>
 							<td>sb000012</td>
 							<td>Exercise 20, 20a</td>
 						</tr>
 					</table>
 				</div>
 				<div class="right col-md-6 col-sm-12 table-responsive">
 				<h3>Estimates</h3>
					<div class="row home">
					  <div class="input-group">
						  <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-calendar"></span></span>
						  <input type="text" class="form-control" placeholder="yyyy/mm/dd" aria-describedby="basic-addon2" required>
						</div>
						<div class="input-group">
			  			<span class="input-group-addon" id="basic-addon3"><span class="glyphicon glyphicon-user"></span></span>
			 			 <input type="text" class="form-control" placeholder="Student ID" aria-describedby="basic-addon3" required maxlength="10">
					  </div>
					  <div class="row">
						  <div class="col-xs-6">
						  	<div>
						  <input class="form-control" style="padding: 10px;" required placeholder="Subject ID" maxlength="8">
						</div>
						  </div>
						  <div class="col-xs-6">
						  <div>
						  <select class="form-control">
  								<option>5</option>
  								<option>4</option>
  								<option>3</option>
  								<option>2</option>
  								<option>1</option>
  								<option>0</option>
							</select>
					  </div>
						  </div>
						</div>
						<div>
						  		<a class="btn btn-default btn-block" type="submit" href="#" style="margin: auto">Add</a>
						  </div>
						  <div>
 					<table class="table">
 						<tr>
 							<th>Date</th>
 							<th>SubjectID</th>
 							<th>StudentID</th>
 							<th>Name</th>
 							<th>Mark</th>
 						</tr>
 						<tr>
 							<td>09 07 2018</td>
 							<td>sb000012</td>
 							<td>st000001</td>
 							<td>Aslkhon</td>
 							<td><span class="badge" style="background-color: #004CFF">5</span></td>
 						</tr>
 					</table>
						</div>
 				</div>
 		</div>
			</div>

	</div>
	<footer class="footer"><p>© School LMS. All pictures are <a href="http://www.freepik.com">designed by Freepik</a></p></footer>	
	</div>
	</div>
</body>
</html>
