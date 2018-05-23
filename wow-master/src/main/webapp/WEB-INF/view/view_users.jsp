<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>View all users :: Digital Signage Solution</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	 
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all">
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--js-->
<script src="resources/js/jquery-2.1.1.min.js"></script>
<!--icons-css-->
<link href="resources/css/font-awesome.css" rel="stylesheet">
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600'
	rel='stylesheet' type='text/css'>
<!--static chart-->
<script src="resources/js/Chart.min.js"></script>
<!--//charts-->
<!-- geo chart -->
<script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js"
	type="text/javascript"></script>

<!--<script src="lib/html5shiv/html5shiv.js"></script>-->
<!-- Chartinator  -->
<script src="resources/js/chartinator.js"></script>

<!--skycons-icons-->
<script src="resources/js/skycons.js"></script>
<!--//skycons-icons-->
<!-- DATA TABLE CSS AND JS FILES IMPORT HERE -->
<script src="resources/js/jquery.dataTables.min.js"></script>
<script src="resources/js/dataTables.bootstrap.min.js"></script>
<link href="resources/css/dataTables.bootstrap.min.css" rel="stylesheet"
	type="text/css" media="all">
</head>
<body>
	<div class="page-container">
		<div class="left-content">
			<div class="mother-grid-inner" >
			    <jsp:include page="./header.jsp"></jsp:include>
				
				<div class="inner-block" >
				       <c:if test="${not empty message}">
							<div class="alert alert-success">
								<c:out value="${message}" />
							</div>
						</c:if>
						<c:if test="${not empty errorMessage}">
							<div class="alert alert-danger">
								<c:out value="${errorMessage}" />
							</div>
						</c:if>
				    <table id="example" class="table table-striped table-bordered"
						width="100%" cellspacing="0">
						<thead>
							<tr>
							    <th>User Id</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Role</th>
								<th>Register Date</th>
								<th colspan="2">Action</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>User Id</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Role</th>
								<th>Register Date</th>
								<th colspan="2">Action</th>
							</tr>
						</tfoot>
						<tbody>
						    <c:forEach items="${users}" var="user">
								<tr>
									<td align="left">${user.userId }</td>
									<td align="left">${user.firstName } </td>
									<td align="left">${user.lastName }</td>
									<td align="left">${user.role }</td>
									<td align="left">${user.registerDate }</td>
									<td align="left"><a href="/updateUser?userId=${user.userId }">Update</a> </td>
									<td align="left"><a href="/deleteUser?userId=${user.userId }">Delete</a> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<script type="text/javascript">
						$(document).ready(function() {
							$('#example').DataTable();
						});
					</script>
				
				
		        </div>
		<!-- End here multiple user accounts -->
		<jsp:include page="./footer.jsp"></jsp:include>
	</div>
	</div>
	<!-- SIDE BAR MENU ADD HERE -->
	<jsp:include page="./sidebar_menu.jsp"></jsp:include>
	
	</div>
</body>
</html>