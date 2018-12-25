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
        <title>Navigation Details</title>
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
        <script type="text/javascript" src="js/searchBtn.js"></script>
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Navigation Details</h3>
            <br>
            <s:form theme="simple" class="form-style-7"  action="register" method="post">
                <table width="30%">
                    <tbody>
                        <tr>
                            <td><s:label>Parent Navigation Name :</s:label></td>
                            <td><s:select id="parentNavigationName" list="{'awedfddffd','ewredffdfdfdf'}"></s:select></td>
                        </tr>
                        <tr>
                            <td><s:label>Navigation Name :</s:label></td>
                            <td><s:textfield id="navigationName" key="navigationName"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Navigation Name(.ASPX) :</s:label></td>
                            <td><s:select id="parentNavigationNameAspx" list="{'aweddfdfdf','ewredfdfdfdff'}"></s:select></td>
                        </tr>
                        <tr>
                         <td><s:label>Active</s:label></td>
                        <td><s:checkbox name="active"/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
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
            <h4>Navigation Details</h4>
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()"></s:textfield></p>
                <br>

            <s:form theme="simple">
                <center>
                    <table border="1" width="55%" id="myTable" class="dataTable">
                        <thead>
                            <tr>
                                <th><s:label for="parentNavigationName">Parent Navigation Name</s:label></th>
                                <th><s:label for="navigationName">Navigation Name</s:label></th>
                                <th><s:label for="navigationNameAspx">Navigation Name(.ASPX)</s:label></th>
                                <th><s:label for="active">Active</s:label></th>
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
