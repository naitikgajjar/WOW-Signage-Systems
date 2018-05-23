<div class="sidebar-menu">
	<div class="logo">
		<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
		</a> <a href="#"> <span id="logo"></span> <!--<img id="logo" src="" alt="Logo"/>-->
		</a>
	</div>
	<div class="menu">
		<ul id="menu">
			<li id="menu-home"><a href="/userHome"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
			
			<li><a href="#"><i class="fa fa-user"></i><span>User</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul>
					<li><a href="/addUser">Add</a></li>
					<li><a href="/viewUsers">View</a></li>
					<li><a href="/createGroup">Create Group</a></li>
					<li><a href="/addLocation">Location</a></li>
				</ul></li>
				
			<li><a href="#"><i class="fa fa-exchange"></i><span>Screen</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul>
					<li><a href="#">Add New</a></li>
					<li><a href="#">View</a></li>
					
				</ul></li>
			<li><a href="#"><i class="fa fa-info-circle"></i><span>Helps</span><span
					class="fa fa-angle-right" style="float: right"></span></a>
				<ul>
					<li><a href="#">Help</a></li>
					<li><a href="#">Shortcut Key</a></li>
					<li><a href="#">About</a></li>
				</ul></li>


		</ul>
	</div>
</div>
<div class="clearfix"></div>
<!--slide bar menu end here-->
<script>
	var toggle = true;

	$(".sidebar-icon").click(
			function() {
				if (toggle) {
					$(".page-container").addClass("sidebar-collapsed")
							.removeClass("sidebar-collapsed-back");
					$("#menu span").css({
						"position" : "absolute"
					});
				} else {
					$(".page-container").removeClass("sidebar-collapsed")
							.addClass("sidebar-collapsed-back");
					setTimeout(function() {
						$("#menu span").css({
							"position" : "relative"
						});
					}, 400);
				}
				toggle = !toggle;
			});
</script>
<!--scrolling js-->
<script src="resources/js/jquery.nicescroll.js"></script>
<script src="resources/js/scripts.js"></script>
<!--//scrolling js-->
<script src="resources/js/bootstrap.js"></script>
<!-- mother grid end here-->