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
        <title>Department Details</title>
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
            <h3>Enter Department Details</h3>
            <br>
            <s:form theme="simple" action="branchAdd" method="POST">
                <s:label>Name :</s:label>&nbsp;<s:textfield id="name" label="Name" key="name"></s:textfield><br><br>
                <table width="25">
                    <thead>
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
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()"></s:textfield></p>
            <h4>Department Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%" id="myTable">
                    <thead>
                        <tr>
                            <th><s:label for="id">ID</s:label></th>
                            <th><s:label for="name">Name</s:label></th>
                            <th><s:label for="edit">Edit</s:label></th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </s:form>
                
        </center>
        </s:div>
        </font>
    </body>
</html>
