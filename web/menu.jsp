<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Vehicle Management System</title>
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>     
	<body>
            <s:div class="container">
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<s:a class="gn-icon gn-icon-menu"><span>Menu</span></s:a>
					<nav class="gn-menu-wrapper">
						<s:div class="gn-scroller">
							<ul class="gn-menu">
								<li><s:a class="gn-icon gn-icon-cog" href="accidentDetails.jsp">Accident Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="assignDrivers.jsp">Assign Driver</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="assignManager.jsp">Assign Manager</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="branchDetails.jsp">Branch Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="departmentDetails.jsp">Department Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="driverDetails.jsp">Driver Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="emissonDetails.jsp">Emisson Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="endTripDetails.jsp">End Trip Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="fuelStationDetails.jsp">Fuel Station Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="insuranceDetails.jsp">Insurance Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="leaveDetails.jsp">Leave Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="maintenanceDetails.jsp">Maintenance Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="navigationDetails.jsp">Navigation Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="requestFuel.jsp">Request Fuel</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="revenue.jsp">Revenue</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="roleDetails.jsp">Role Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="tripRequest.jsp">Trip Request</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="updateFuelStation.jsp">Update Fuel Station</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="formRegister.jsp">User Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="vehicleRegistration.jsp">Vehicle Registration</s:a></li>
							</ul>
						</s:div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><s:a><span>Welcome</span></s:a></li>
				<li><s:a class="codrops-icon codrops-icon-drop"><span>Vehicle Management System</span></s:a></li>
			</ul>
                </s:div><!-- /container -->
        
                
                
		<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
	</body>
</html>