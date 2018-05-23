<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Content :: Digital Signage Solution</title>
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
<script> 
    $(function(){
      $("#loadHeader").load("header.html"); 
    });
    
    $(function(){
        $("#sidebar").load("sidebar_menu.html"); 
      });
    
    $(function(){
        $("#footer").load("footer.html"); 
      });
    
    </script>
</head>
<body>
	<div class="page-container">
		<div class="left-content">
			<div class="mother-grid-inner" >
			    <div id="loadHeader"></div>
				
				<div class="inner-block" >
				 <div class="chit-chat-layer1">
							<div class="col-md-12 chit-chat-layer1-left">
								<div class="work-progres">
								<div class="chit-chat-heading">Groups</div>
									<!-- <div class="table-responsive"> -->
									<form action="/content.html" class="form-horizontal">
									       <div class="form-group">
											    <label class="control-label col-sm-3" for="pwd">Group Name:</label>
											    <div class="col-sm-6"> 
											      <input type="text" class="form-control" id="pwd" placeholder="Enter group name">
											    </div>
											</div>
											
											
											
											<div class="form-group">
											   <div class="col-sm-offset-3 col-sm-8">
											      <button type="submit" class="btn btn-default">Save</button>
											      <button type="submit" class="btn btn-default">Edit</button>
											      <button type="submit" class="btn btn-default">Delete</button>
											      <button type="submit" class="btn btn-default">Cancel</button>
											   </div>  
											</div>   
									   </form>		    
									<!-- </div> -->
							   </div>
					      </div>
					      <div class="clearfix"></div>
				</div>		
					    
				
				<!-- <div class="login-page">
				    <div class="login-main" style="width: 50%;">
				        <div class="login-block" >
						   	
							  <div class="form-group"> 
							    <div class="col-sm-offset-3 col-sm-8">
							      <button type="submit" class="btn btn-default">Save</button>
							      <button type="submit" class="btn btn-default">Edit</button>
							      <button type="submit" class="btn btn-default">Delete</button>
							      <button type="submit" class="btn btn-default">Cancel</button>
							    </div>
							  </div>
							
						</div>
					  </div>
					</div> -->
		        </div>
		<!-- End here multiple user accounts -->
		<div id="footer"></div>
	</div>
	</div>
	<!-- SIDE BAR MENU ADD HERE -->
	<div id="sidebar"></div>
	
	</div>
</body>
</html>