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
                                    <s:a href="#"><span>Welcome</span></s:a>
					
                                            <s:div class="gn-scroller">
                                <ul class="gn-menu">
                                <li><s:a class="gn-icon gn-icon-cog" href="accidentDetails.jsp">&nbsp;&nbsp;<img src="images/accident_details.png" height="24" width="24"/>&nbsp;&nbsp;Accident Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="assignDrivers.jsp">&nbsp;&nbsp;<img src="images/user.png" height="24" width="24"/>&nbsp;&nbsp;Assign Driver</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="assignManager.jsp">&nbsp;&nbsp;<img src="images/manager.png" height="24" width="24"/>&nbsp;&nbsp;Assign Manager</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="branchFetch">&nbsp;&nbsp;<img src="images/branch.png" height="24" width="24"/>&nbsp;&nbsp;Branch Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="departmentDetails.jsp">&nbsp;&nbsp;<img src="images/department.png" height="24" width="24"/>&nbsp;&nbsp;Department Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="driverDetails.jsp">&nbsp;&nbsp;<img src="images/driver_details.png" height="24" width="24"/>&nbsp;&nbsp;Driver Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="emissonDetails.jsp">&nbsp;&nbsp;<img src="images/emission.png" height="24" width="24"/>&nbsp;&nbsp;Emisson Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="endTripDetails.jsp">&nbsp;&nbsp;<img src="images/endtrip.png" height="24" width="24"/>&nbsp;&nbsp;End Trip Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="fuelStationDetails.jsp">&nbsp;&nbsp;<img src="images/fuelstation.png" height="24" width="24"/>&nbsp;&nbsp;Fuel Station Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="insuranceDetails.jsp">&nbsp;&nbsp;<img src="images/ve_insuarance.png" height="24" width="24"/>&nbsp;&nbsp;Insurance Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="leaveDetails.jsp">&nbsp;&nbsp;<img src="images/leave.png" height="24" width="24"/>&nbsp;&nbsp;Leave Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="maintenanceDetails.jsp">&nbsp;&nbsp;<img src="images/maintain.png" height="24" width="24"/>&nbsp;&nbsp;Maintenance Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="navigationDetails.jsp">&nbsp;&nbsp;<img src="images/navigation.png" height="24" width="24"/>&nbsp;&nbsp;Navigation Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="requestFuel.jsp">&nbsp;&nbsp;<img src="images/req_fuel.png" height="24" width="24"/>&nbsp;&nbsp;Request Fuel</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="revenue.jsp">&nbsp;&nbsp;<img src="images/revenue.png" height="24" width="24"/>&nbsp;&nbsp;Revenue</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="roleDetails.jsp">&nbsp;&nbsp;<img src="images/role.png" height="24" width="24"/>&nbsp;&nbsp;Role Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="tripRequest.jsp">&nbsp;&nbsp;<img src="images/trip_req.png" height="24" width="24"/>&nbsp;&nbsp;Trip Request</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="updateFuelStation.jsp">&nbsp;&nbsp;<img src="images/fuelstation.png" height="24" width="24"/>&nbsp;&nbsp;Update Fuel Station</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="formUser.jsp">&nbsp;&nbsp;<img src="images/user_details.png" height="24" width="24"/>&nbsp;&nbsp;User Details</s:a></li>
                                <li><s:a class="gn-icon gn-icon-cog" href="vehicleRegistration.jsp">&nbsp;&nbsp;<img src="images/vehicle_reg.png" height="24" width="24"/>&nbsp;&nbsp;Vehicle Registration</s:a></li>
							</ul>
						</s:div><!-- /gn-scroller -->
					
				</li>
				<li><s:a href="#"><span>Vehicle Management System</span><s:property value="#session.userName"/></span></s:a></li>
                <li><s:a class="codrops-icon codrops-icon-drop" href="#">Logout</s:a></li>
			</ul>
                </s:div><!-- /container -->
        
                
                
		<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
	</body>
</html>