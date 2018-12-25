<%-- 
    Document   : assignDrivers
    Created on : Dec 22, 2018, 1:06:03 PM
    Author     : User
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Assign Drivers</title>
        <s:include value="menu.jsp"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="js/noCache.js"></script>
        <script type="text/javascript" src="js/searchBtn.js"></script>
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/positionCss.css" />
        <script src="js/modernizr.custom.js"></script>
        <link rel="stylesheet" type="text/css" href="css/tableColor.css" />
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Accident Details</h3>
            <br>
            <s:form theme="simple" class="form-style-7"  action="register" method="post">
                <s:div cssStyle="table100.ver2">
                <table width="35">
                    <tbody>
                        <tr>
                            <td><s:label>Vehicle&nbsp;No :</s:label></td>
                            <td><s:textfield id="vehicleNo" label="Vehicle No" key="vehicleNo"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Driver :</s:label></td>
                            <td><s:textfield id="driver" key="driver"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Reason :</s:label></td>
                            <td><s:textfield id="reason" key="reason"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Cost :</s:label></td>
                            <td><s:textfield id="cost" key="cost"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Location :</s:label></td>
                            <td><s:textfield id="location" key="location"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Claim&nbsp;Amount :</s:label></td>
                            <td><s:textfield id="claimAmount" key="claimAmount"></s:textfield></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><s:submit value="Save"></s:submit>&nbsp;<s:submit value="Clean"></s:submit></td>
                        </tr>
                    </tbody>
                </table>
                </s:div>
            </s:form>
            <br>
            <hr>
            <br><br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()"></s:textfield></p>
            <br>
            <s:form theme="simple">
                <center>
                <table border="1" width="50%" id="myTable">
                    <thead>
                        <tr>
                            <th><s:label for="vehicle">Vehicle No</s:label></th>
                            <th><s:label for="driver">Driver</s:label></th>
                            <th><s:label for="reason">Reason</s:label></th>
                            <th><s:label for="cost">Cost</s:label></th>
                            <th><s:label for="location">Location</s:label></th>
                            <th><s:label for="claimAmount">Claim Amount</s:label></th> 
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
