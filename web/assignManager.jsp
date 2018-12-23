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
            <h3>Assign Manager</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Manager :</s:label></td>
                            <td><s:textfield id="manager" key="manager"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Vehicle No :</s:label></td>
                            <td><s:textfield id="vehicleNo" key="vehicleNo"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Driver :</s:label></td>
                            <td><s:textfield id="driver" key="driver"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Contact :</s:label></td>
                            <td><s:textfield id="contact" key="contact"></s:textfield></td>
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
                
                <h4>Manager Details</h4>
                <br>
                <s:form theme="simple">
                <table border="1" width="60%">
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
 