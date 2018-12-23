<%-- 
    Document   : branchDetails
    Created on : Dec 22, 2018, 2:04:07 PM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[If lt IE 7]> <html class="no-js sidebar-large lt-ie9 lt-ie8 llt-ie7"> <!endif]-->
<!--[If IE 7]><html class="no-js sidebar-large lt-ie9 lt-ie8"> <!endif]-->
<!--[If IE 8]><html class="no-js sidebar-large lt-ie9"> <!endif]-->
<!--[If gt IE 8 ]> <!-->
<html class="no-js sidebar-large">
<!--<!endif]-->
    <head>
        <title>Leave Details</title>
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
    </head>
    <body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Leave Details</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Driver ID :</s:label></td>
                            <td><s:textfield id="driverId" key="driverId"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Driver Name :</s:label></td>
                            <td><s:textfield id="driverName" key="driverName"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>From :</s:label></td>
                            <td><s:textfield id="from" key="from"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>To :</s:label></td>
                            <td><s:textfield id="to" key="to"></s:textfield></td>
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
                <h4>Leave Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%">
                    <thead>
                        <tr>
                            <th><s:label for="driverId">Driver ID</s:label></th>
                            <th><s:label for="driverName">Driver Name</s:label></th>
                            <th><s:label for="from">From</s:label></th>
                            <th><s:label for="to">To</s:label></th>
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
