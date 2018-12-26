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
        <title>Driver Details</title>
        <s:include value="menu.jsp"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/positionCss.css" />
        <script src="js/modernizr.custom.js"></script>
        <script src="js/datePicker.js"></script>
        <script src="js/textNumber.js"></script>
        <script type="text/javascript" src="js/noCache.js"></script>
        <sj:head/>
        <script type="text/javascript" src="js/searchBtn.js"></script>
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Driver Details</h3>
            <br>
            <s:form theme="simple" class="form-style-7"  action="register" method="post">
                <table width="400">
                <tbody>
                        <tr>
                            <td><s:label>Driver&nbsp;ID :</s:label></td>
                            <td><s:textfield id="driverId" key="driverId" style="text-transform:uppercase"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Name :</s:label></td>
                            <td><s:textfield id="driverName" key="driverName" style="text-transform:uppercase" maxLength="45"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Address :</s:label></td>
                            <td><s:textfield id="address" key="address" style="text-transform:uppercase" maxLength="100"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Contact&nbsp;No :</s:label></td>
                            <td><s:textfield id="contactNo" key="contactNo" onkeypress="return isNumber(event)" maxlength="10"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>License&nbsp;No :</s:label></td>
                            <td><s:textfield id="licenseNo" key="licenseNo" style="text-transform:uppercase" maxLength="45"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Gender :</s:label></td>
                            <td><s:radio name = "gender" list="{'Male','Female'}" /></td>
                        </tr>
                        <tr>
                        <td><s:label>Issue&nbsp;Date :</s:label></td>
                        <td><sj:datepicker id="issueDate"></sj:datepicker></td>
                        </tr>
                        <tr>
                        <td><s:label>Expire&nbsp;Date :</s:label></td>
                        <td><sj:datepicker id="expireDate"></sj:datepicker></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><s:submit value="Save"></s:submit>&nbsp;<s:submit value="Clean"></s:submit></td>
                        </tr>
                    </tbody>
                </table>
            </s:form>
            <br>
            <hr>
            <h4>Driver Details</h4>
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()" style="text-transform:uppercase"></s:textfield></p>
            <br>
            
            <s:form theme="simple">
                <center>
                <table border="1" width="60%" id="myTable" class="dataTable">
                    <thead>
                        <tr>
                            <th><s:label for="driverId">Driver ID</s:label></th>
                            <th><s:label for="name">Name</s:label></th>
                            <th><s:label for="address">Address</s:label></th>
                            <th><s:label for="contactNo">Contact No</s:label></th>
                            <th><s:label for="type">Type</s:label></th>
                            <th><s:label for="licenseNo">License No</s:label></th>
                            <th><s:label for="issueDate">Issue Date</s:label></th>
                            <th><s:label for="expireDate">Expire Date</s:label></th>
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
