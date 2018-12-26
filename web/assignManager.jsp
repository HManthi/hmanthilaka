<%-- 
    Document   : assignManager
    Created on : Dec 22, 2018, 1:36:38 PM
    Author     : User
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <titleAssign Manager</title>
        <s:include value="menu.jsp"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="js/noCache.js"></script>
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/positionCss.css" />
        <script src="js/modernizr.custom.js"></script>
        <script type="text/javascript" src="js/searchBtn.js"></script>
    </head>
    <body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Assign Manager</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Manager :</s:label></td>
                            <td><s:textfield id="manager" key="manager" style="text-transform:uppercase"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Vehicle No :</s:label></td>
                            <td><s:textfield id="vehicleNo" key="vehicleNo" style="text-transform:uppercase"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Driver :</s:label></td>
                            <td><s:textfield id="driver" key="driver" style="text-transform:uppercase"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Contact :</s:label></td>
                            <td><s:textfield id="contact" key="contact" style="text-transform:uppercase"></s:textfield></td>
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
            <br><br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()" style="text-transform:uppercase"></s:textfield></p>
            <h4>Manager Details</h4>
                <br>
                <s:form theme="simple">
                <table border="1" width="60%" id="myTable" class="dataTable">
                    <thead>
                        <tr>
                            <th><s:label for="manager">Manager</s:label></th>
                            <th><s:label for="vehicleNo">Vehicle No</s:label></th>
                            <th><s:label for="driver">Driver</s:label></th>
                            <th><s:label for="contact">Contact</s:label></th>
                            <th><s:label for="edit">Edit</s:label></th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                        <br><br>
                            <s:submit value="Previous"></s:submit>&nbsp;<s:submit value="Next"></s:submit>
            </s:form>
        </center>
        </s:div>
    </font>
    </body>
</html>
 