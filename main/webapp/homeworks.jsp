<%@ page language="java" contentType="text/html" %>
<%@ page import="java.util.*" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>School LMS - $schoolNumber</title>

	<!-- Bootstrap -->
	<link href=" web-site/bootstrap/css/bootstrap.css" rel="stylesheet">
	<script src="web-site/bootstrap/js/jquery-1.11.3.min.js"></script>
	<script src="web-site/bootstrap/js/bootstrap.js"></script>

	<link href="web-site/main.css" rel="stylesheet">
	<link href="web-site/icon.png" type="image/png" rel="shortcut icon">
	
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
	            <li class="active"><a href="homeworks.html">Homeworks</a></li>
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
      <li class="active">Homeworks</li>
</ol>
<div class="center-panel">
 		<div class="container">
			<h3>${user.name}'s_name's homework
				<a class="navbar-right btn hm-btn" href="#hwModal" data-toggle="modal">Current homework</a>
			  <div id="hwModal" class="modal fade" role="dialog" style="margin-top: 70px">
					<div class="modal-dialog">
						<div class="modal-content">
								<div class="modal-header">
											<a href="#" class="close" data-dismiss="modal" aria-label="close">&times;</a>
											<h4>Current homework </h4>
										</div>
										<div class="modal-body">
											<div class="table-responsive">
												<table class="table" >
													<tr style="font-weight: bold">
														<td>Subject</td>
														<td>Homework ${user}</td>
												    </tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
		  </h3>
			<div class="table-responsive" style="margin-top: 20px;">
 			<table class=" table table-striped">
			   <tr>
			   	<th>Date</th>
				<th>Subject</th>
				<th>Tasks</th>
			   </tr>
			  <tr>

				<c:forEach items="${Homeworks}" var="book">
    			<c:set var="test" value=%{book.getStringDate}
                  scope="page"/>
                    <tr>
                      <td>
                          <c:out value="${book.date}" />
                      </td>
                      <td>
                          test
                      </td>
                      <td>
                          <c:out value="${book.homework}" />
                      </td>
                    </tr>
                    </c:forEach>
			</tr>
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
				</td>
			  </tr>
			 </table>
			</div>
 		</div>
	</div>
	
	<footer class="footer"><p>© School LMS. All pictures are <a href="http://www.freepik.com">designed by Freepik</a></p></footer>

	</div>	
</body>
</html>
