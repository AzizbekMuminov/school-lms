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
	        <li><a href="cabinet.html">Cabinet<span class="sr-only">(current)</span></a></li>
	        <li><a href="estimates.html">Estimates</a></li>
	        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="homeworks.html">Homeworks</a></li>
	            <li class="active"><a href="timetable.html">Time table</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="school.html">School</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">Student's name</a></li>
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
     <li><a href="cabinet.html">Cabinet</a></li>
      <li class="active">Time table</li>
</ol>
<div class="center-panel">
 		<div class="container">
 			<h3>$Student's name | $Student's class</h3>
 			<div class="table-responsive" style="margin-top: 20px;">
 			<table class=" table table-striped">
			   <tr>
			   	<th>#</th>
				<th>Monday</th>
				<th>Thuesday</th>
		   		<th>Wednesday</th>
				<th>Thursday</th>
		   		<th>Friday</th>
				<th>Saturday</th>
			   </tr>
			   <tr>
				<td>1</td>
				<td>mo1</td>
				<td>tu1</td>
				<td>we1</td>
				<td>th1</td>
				<td>fr1</td>
				<td>sa1</td>
			  </tr>
			  <tr>
				<td>2</td>
				<td>mo2</td>
				<td>tu2</td>
				<td>we2</td>
				<td>th2</td>
				<td>fr2</td>
				<td>sa2</td>
			  </tr>
			  <tr>
				<td>3</td>
				<td>mo3</td>
				<td>tu3</td>
				<td>we3</td>
				<td>th3</td>
				<td>fr3</td>
				<td>sa3</td>
			  </tr>
			  <tr>
				<td>4</td>
				<td>mo4</td>
				<td>tu4</td>
				<td>we4</td>
				<td>th4</td>
				<td>fr4</td>
				<td>sa4</td>
			  </tr>
			  <tr>
				<td>5</td>
				<td>mo5</td>
				<td>tu5</td>
				<td>we5</td>
				<td>th5</td>
				<td>fr5</td>
				<td>sa5</td>
			  </tr>
			  <tr>
				<td>6</td>
				<td>mo6</td>
				<td>tu6</td>
				<td>we6</td>
				<td>th6</td>
				<td>fr6</td>
				<td>sa6</td>
			</tr>
			  <tr>
				<td>7</td>
				<td>mo7</td>
				<td>tu7</td>
				<td>we7</td>
				<td>th7</td>
				<td>fr7</td>
				<td>sa7</td>
			  </tr>
			 </table>
			</div>
 		</div>
	</div>
	
	<footer class="footer"><p>© School LMS. All pictures are <a href="http://www.freepik.com">designed by Freepik</a></p></footer>

	</div>	
</body>
</html>
