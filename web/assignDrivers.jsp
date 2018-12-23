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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/positionCss.css" />
        <script src="js/modernizr.custom.js"></script>
        <script>
            $(document).ready(function (){
                $("tr:even").css("background-color","lighblue");
                })
        </script>
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Assign Driver</h3>
            <br>
            <s:form theme="simple" class="form-style-7" action="register" method="post">
                <s:label>Vehicle No :</s:label><s:textarea id="vehicleNo" key="vehicleNo"></s:textarea><br>
                <s:label>Driver :</s:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textarea id="driver" key="driver"></s:textarea><br><br>
                <table width="25" class=".TFtable">
                    <tbody>
                        <tr>
                            <td><s:submit value="Save"></s:submit></td>
                            <td><s:submit value="Clean"></s:submit></td>
                        </tr>
                    </tbody>
                </table>
            </s:form>
            <br>
            <hr>
            <br><br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>
            <br>
            <s:form theme="simple">
                <table border="1" width="60%">
                    <thead>
                        <tr>
                            <th><s:label for="vehicle">Vehicle</s:label></th>
                            <th><s:label for="driver">Driver</s:label></th>
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
