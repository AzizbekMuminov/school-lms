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
	        <li class="active"><a href="estimates.html">Estimates</a></li>
	        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="homeworks.html">Homeworks</a></li>
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
     <li><a href="cabinet.html">Cabinet</a></li>
      <li class="active">Estimates</li>
</ol>
 
 <div class="center-panel">
 	<div class="container">
	  <h3>$tudent's_name's marks
				<a class="navbar-right btn hm-btn" href="#hwModal" data-toggle="modal">Quarter marks</a>
			  <div id="hwModal" class="modal fade" role="dialog" style="margin-top: 70px">
					<div class="modal-dialog">
						<div class="modal-content">
								<div class="modal-header">
											<a href="#" class="close" data-dismiss="modal" aria-label="close">&times;</a>
											<h4>Quarter marks</h4>
						  </div>
								<div class="modal-body">
										<ul class="nav nav-tabs nav-justified">
										  <li role="presentation"><a href="#">Quarter 1</a></li>
										  <li role="presentation"><a href="#">Quarter 2</a></li>
										  <li role="presentation"><a href="#">Quarter 4</a></li>
										  <li role="presentation"><a href="#">Quarter 4</a></li>
										  <li role="presentation" class="active"><a href="#">Year yyyy</a></li>
										</ul>
										<div class="table-responsive">
											<table class="table table-striped">
												<tr>
													<td>Math</td>
													<td>5</td>
												</tr>
												<tr>
													<td>Computer Science</td>
													<td>5</td>
												</tr>
											</table>
										</div>
								</div>
					  </div>
				</div>
		</div>
		  		</h3>
	  <div style="padding: 20px">
				<h2 style="text-align: center">Week #1 | Date</h2>
				<div class="desktop">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<h3>Monday | Date</h3>
							<table class="table table-bordered col-md-6 col-sm-12">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>Math</td>
									<td>5</td>
								</tr>
							</table>
						</div>
						<div class=" col-md-6 col-sm-12">
							<h3>Thursday | Date</h3>
							<table class="table table-bordered">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>English</td>
									<td>5</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<h3>Tuesday | Date</h3>
							<table class="table table-bordered col-md-6 col-sm-12">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>Math</td>
									<td>5</td>
								</tr>
							</table>
						</div>
						<div class=" col-md-6 col-sm-12">
							<h3>Friday | Date</h3>
							<table class="table table-bordered">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>English</td>
									<td>5</td>
								</tr>
							</table>
						</div>
					</div>
		<div class="row">
						<div class="col-md-6 col-sm-12">
							<h3>Wednesday | Date</h3>
							<table class="table table-bordered col-md-6 col-sm-12">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>Math</td>
									<td>5</td>
								</tr>
							</table>
						</div>
						<div class=" col-md-6 col-sm-12">
							<h3>Saturday | Date</h3>
							<table class="table table-bordered">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>English</td>
									<td>5</td>
								</tr>
							</table>
						</div>
		  		</div>
		  	</div>
		  	<div class="mobile">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<h3>Monday | Date</h3>
							<table class="table table-bordered col-md-6 col-sm-12">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>Math</td>
									<td>5</td>
								</tr>
							</table>
						</div>
						<div class=" col-md-6 col-sm-12">
							<h3>Tuesday | Date</h3>
							<table class="table table-bordered">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>English</td>
									<td>5</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<h3>Wednesday | Date</h3>
							<table class="table table-bordered col-md-6 col-sm-12">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>Math</td>
									<td>5</td>
								</tr>
							</table>
						</div>
						<div class=" col-md-6 col-sm-12">
							<h3>Thursday | Date</h3>
							<table class="table table-bordered">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>English</td>
									<td>5</td>
								</tr>
							</table>
						</div>
					</div>
		<div class="row">
						<div class="col-md-6 col-sm-12">
							<h3>Friday | Date</h3>
							<table class="table table-bordered col-md-6 col-sm-12">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>Math</td>
									<td>5</td>
								</tr>
							</table>
						</div>
						<div class=" col-md-6 col-sm-12">
							<h3>Saturday | Date</h3>
							<table class="table table-bordered">
								<tr>
									<th>Subject</th>
									<th>Mark</th>
								</tr>
								<tr>
									<td>English</td>
									<td>5</td>
								</tr>
							</table>
						</div>
		  		</div>
		  	</div>
		<ul class="pager">
					  <li class="previous"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
					  
					  <li class="next"><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
	    </ul>
        </div>
					
    </div>
	</div>
	<footer class="footer"><p>© School LMS. All pictures are <a href="http://www.freepik.com">designed by Freepik</a></p></footer>
</div>
</body>
</html>
