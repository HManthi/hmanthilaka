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
        <title>Update Fuel Station</title>
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
            <h3>Update Fuel Station</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Station :</s:label></td>
                            <td><s:select list="{'AAA','BBB','CCC'}" style="text-transform:uppercase"></s:select></td>
                        </tr>
                        <tr>
                            <td><s:label>Cash In :</s:label></td>
                            <td><s:textfield id="cashIn" key="cashIn" style="text-transform:uppercase"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Current Deposits :</s:label></td>
                            <td><s:textfield id="currentDeposits" key="currentDeposits" style="text-transform:uppercase"></s:textfield></td>
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
                <h4>Update Fuel Station Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%" id="myTable" class="dataTable">
                    <thead>
                        <tr>
                            <th><s:label for="station">Station</s:label></th>
                            <th><s:label for="cashIn">Cash In</s:label></th>
                            <th><s:label for="currentDeposits">Current Deposits</s:label></th>
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
