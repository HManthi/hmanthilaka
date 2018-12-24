<%-- 
    Document   : assignDrivers
    Created on : Dec 22, 2018, 1:06:03 PM
    Author     : User
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Trip Request</title>
        <s:include value="menu.jsp"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/positionCss.css" />
        <script src="js/modernizr.custom.js"></script>
        <script src="js/datePicker.js"></script>
        <script type="text/javascript" src="js/noCache.js"></script>
        <sj:head/>

    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Trip Request</h3>
            <br>
            <s:form theme="simple" class="form-style-7"  action="register" method="post">
                <table width="50%">
                    <tbody>
                        <tr>
                            <td><s:label>Reason :</s:label></td>
                            <td><s:textfield id="reason" key="reason"></s:textfield></td>
                            <td><s:label>Location :</s:label></td>
                            <td><s:textfield id="location" key="location"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Department :</s:label></td>
                            <td><s:select id="department" list="{'sdsdsdsds','sdsdsdsdsdsd'}"></s:select></td>
                            <td><s:label>Details :</s:label></td>
                            <td><s:textfield id="details" key="details"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Status :</s:label></td>
                            <td><s:select  list="{'sdsdsdsds','sdsdsdsdsdsd'}"></s:select></td>
                            <td><s:label>Reason :</s:label></td>
                            <td><s:textfield id="statusReason" key="statusReason"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Date Time :</s:label></td>
                            <td><sj:datepicker id="dateTime"></sj:datepicker></td>
                            <td><s:label>Pickup Location :</s:label></td>
                            <td><s:textfield id="pickupLocation" key="pickupLocation"></s:textfield></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><s:submit value="Save"></s:submit></td>
                            <td><s:submit value="Clean"></s:submit></td>
                        </tr>
                    </tbody>
                </table>

            </s:form>
            <br>
            <hr>
            <h4>Trip Request Details</h4>
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>
                <br>

            <s:form theme="simple">
                <center>
                    <table border="1" width="55%">
                        <thead>
                            <tr>
                                <th><s:label for="reason">Reason</s:label></th>
                                <th><s:label for="location">Location</s:label></th>
                                <th><s:label for="department">Department</s:label></th>
                                <th><s:label for="details">Details</s:label></th>
                                <th><s:label for="dateTime">Date Time</s:label></th>
                                <th><s:label for="pickupLocation">Pickup Location</s:label></th>
                                <th><s:label for="endLocation">End Location</s:label></th>
                                <th><s:label for="tripType">Trip Type</s:label></th>
                                <th><s:label for="edit">Edit</s:label></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </center>
                    <br><br>
                <s:submit value="Previous"></s:submit>&nbsp;<s:submit value="Next"></s:submit>
            </s:form>
        </center>
    </s:div>
    </font>
</body>
</html>
