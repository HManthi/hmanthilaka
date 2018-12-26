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
        <title>Emission Details</title>
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
            <h3>Enter Emission Details</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Vehicle No :</s:label></td>
                            <td><s:textfield id="vehicleNo" key="vehicleNo" style="text-transform:uppercase"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Company :</s:label></td>
                            <td><s:select list="{'ABC','DEF'}" style="text-transform:uppercase"></s:select></td>
                        </tr>
                        <tr>
                            <td><s:label>Serial No :</s:label></td>
                            <td><s:textfield id="serialNo"  key="serialNo" style="text-transform:uppercase"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Status :</s:label></td>
                            <td><s:select list="{'AAA','BBB','CCC'}" style="text-transform:uppercase"></s:select></td>
                        </tr>
                        <tr>
                            <td><s:label>Valid Period :</s:label></td>
                            <td><s:textfield id="validPeriod" key="validPeriod" style="text-transform:uppercase"></s:textfield></td>
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
                <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()" style="text-transform:uppercase"></s:textfield></p>
                <h4>Emission Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%" id="myTable" class="dataTable">
                    <thead>
                        <tr>
                            <th><s:label for="vehicleNo">Vehicle No</s:label></th>
                            <th><s:label for="company">Company</s:label></th>
                            <th><s:label for="serialNo">Serial No</s:label></th>
                            <th><s:label for="status">Status</s:label></th>
                            <th><s:label for="validPeriod">Valid Period</s:label></th>
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
