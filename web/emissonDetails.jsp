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
            <h3>Enter Emission Details</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Vehicle No :</s:label></td>
                            <td><s:textfield id="vehicleNo" key="vehicleNo"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Company :</s:label></td>
                            <td><s:select list="{'ABC','DEF'}"></s:select></td>
                        </tr>
                        <tr>
                            <td><s:label>Serial No :</s:label></td>
                            <td><s:textfield id="serialNo"  key="serialNo"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Status :</s:label></td>
                            <td><s:select list="{'AAA','BBB','CCC'}"></s:select></td>
                        </tr>
                        <tr>
                            <td><s:label>Valid Period :</s:label></td>
                            <td><s:textfield id="validPeriod" key="validPeriod"></s:textfield></td>
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
                <h4>Emission Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%">
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
