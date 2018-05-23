<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Update User :: Digital Signage Solution</title>
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
<script>
	window.modernizr
			|| document
					.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')
</script>
<!--<script src="lib/html5shiv/html5shiv.js"></script>-->
<!-- Chartinator  -->
<script src="resources/js/chartinator.js"></script>

<!--skycons-icons-->
<script src="resources/js/skycons.js"></script>
<!--//skycons-icons-->

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
				 <div class="chit-chat-layer1">
							<div class="col-md-12 chit-chat-layer1-left">
								<div class="work-progres">
								<div class="chit-chat-heading">User Management</div>
									<!-- <div class="table-responsive"> -->
									<form action="/updateUser" method="post" class="form-horizontal" modelAttribute="user">
									       <div class="form-group">
											    <label class="control-label col-sm-3" for="pwd">User id:</label>
											    <div class="col-sm-6"> 
											      <input type="text" name="userId" value="${user.userId }" readonly="readonly" class="form-control" id="pwd" placeholder="Enter first name">
											    </div>
											</div>
									       <div class="form-group">
											    <label class="control-label col-sm-3" for="pwd">First Name:</label>
											    <div class="col-sm-6"> 
											      <input type="text" name="firstName" value="${user.firstName }" class="form-control" id="pwd" placeholder="Enter first name">
											    </div>
											</div>
											<div class="form-group">
											    <label class="control-label col-sm-3" for="pwd">Last Name:</label>
											    <div class="col-sm-6"> 
											      <input type="text" name="lastName" value="${user.lastName }" class="form-control" id="pwd" placeholder="Enter last name">
											    </div>
											</div>
											<div class="form-group">
											    <label class="control-label col-sm-3" for="pwd">Role:</label>
											    <div class="col-sm-6"> 
											      <input type="text"  name="role" value="${user.role }" class="form-control" id="pwd" placeholder="Enter user role">
											    </div>
											</div>
											<div class="form-group">
											   <div class="col-sm-offset-3 col-sm-8">
											      <button type="submit" class="btn btn-default">Save</button>
											      <button type="reset" class="btn btn-default">Cancel</button>
											   </div>  
											</div>   
									   </form>		    
									<!-- </div> -->
							   </div>
					      </div>
					      <div class="clearfix"></div>
				</div>		
				
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