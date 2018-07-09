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
	        <li class="active"><a href="cabinet.html">Cabinet<span class="sr-only">(current)</span></a></li>
	        <li><a href="estimates.html">Estimates</a></li>
	        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="homework.html">Homeworks</a></li>
	            <li><a href="timetable.html">Time table</a></li>
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
      <li class="active">Cabinet</li>
</ol>
<div class="center-panel">
 		<div class="container">
 			<div class="row">
 				<div class="leftPane col-md-6 col-sm-12">
 					<h3>Timetable for today</h3>
 					<table class="table border-bottom">
						<tr>
							<th>#</th>
							<th>Subject</th>
						</tr>
 						<tr>
							<td>1</td>
							<td>Math</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Geography</td>
						</tr>
						<tr>
							<td>3</td>
							<td>English</td>
						</tr>
						<tr>
							<td>4</td>
							<td>Computer Science</td>
						</tr>
						<tr>
							<td>5</td>
							<td>PE</td>
						</tr>
						<tr>
							<td>6</td>
							<td>History</td>
						</tr>
 					</table>
 					<h3>Yesterday marks</h3>
 					<table class="table sm-row">
 						<tr>
							<th>#</th>
							<th>Subject</th>
							<th>Mark</th>
						</tr>
 						<tr>
							<td>1</td>
							<td>Math</td>
							<td>4</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Geography</td>
							<td>5</td>
						</tr>
						<tr>
							<td>3</td>
							<td>English</td>
							<td>3</td>
						</tr>
						<tr>
							<td>4</td>
							<td>Computer Science</td>
							<td>5</td>
						</tr>
						<tr>
							<td>5</td>
							<td>PE</td>
							<td>5</td>
						</tr>
						<tr>
							<td>6</td>
							<td>History</td>
							<td>4</td>
						</tr>
 					</table>
 				</div>
 				<div class="rightPane col-md-6 col-sm-12">
 					<h3>Homework for today</h3>
 					<div class="table-responsive">
						<table class="table" >
							<tr style="font-weight: bold">
								<td>Subject</td>
								<td>Homework</td>
							</tr>
							<tr>
								<td>Math</td>
								<td><a href="#myModal" data-toggle="modal">Some text</a></td>
							</tr>
						</table>
					</div>
					<div id="myModal" class="modal fade" role="dialog" style="margin-top: 70px">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<a href="#" class="close" data-dismiss="modal" aria-label="close">&times;</a>
									<h4>Date | Subject</h4>
								</div>
								<div class="modal-body">
									Your mark: not done yet 
								</div>
								<div class="modal-footer">
									<p style="text-align: justify">Text of homework</p>
								</div>
							</div>
						</div>
					</div>
 				</div>
 			</div>
 		</div>
	</div>
	
	<footer class="footer"><p>© School LMS. All pictures are <a href="http://www.freepik.com">designed by Freepik</a></p></footer>

	</div>	
</body>
</html>
