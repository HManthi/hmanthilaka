<%-- 
    Document   : branchDetails
    Created on : Dec 22, 2018, 2:04:07 PM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Fuel Station Details</title>
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
        <script src="js/textNumber.js"></script>
    </head>
    <body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Fuel Station Details</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Station Name :</s:label></td>
                            <td><s:textfield id="stationName" key="stationName" style="text-transform:uppercase" maxLength="45"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Location :</s:label></td>
                            <td><s:textfield id="location" key="location" style="text-transform:uppercase" maxLength="45"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Owner :</s:label></td>
                            <td><s:textfield id="owner" key="owner" style="text-transform:uppercase" maxLength="45"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Contact No :</s:label></td>
                            <td><s:textfield id="contactNo" key="contactNo" onkeypress="return isNumber(event)" maxlength="10"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Price :</s:label></td>
                            <td><s:textfield id="price" key="price" style="text-transform:uppercase" ></s:textfield></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><s:submit value="Save"></s:submit>&nbsp;<s:submit value="Clean" align="left"></s:submit></td>
                        </tr>
                    </tbody>
                </table>
            </s:form>
            <br>
                <hr>
                <br>
                <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()" style="text-transform:uppercase"></s:textfield></p>
                <h4>Fuel Station Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%" id="myTable" class="dataTable">
                    <thead>
                        <tr>
                            <th><s:label for="stationName">Station Name</s:label></th>
                            <th><s:label for="location">Location</s:label></th>
                            <th><s:label for="owner">Owner</s:label></th>
                            <th><s:label for="contactNo">Contact No</s:label></th>
                            <th><s:label for="price">Price</s:label></th>
                            <th><s:label for="edit">Edit</s:label></th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </s:form>
           </center>
        </s:div>
      </body>
      </font>
</html>
