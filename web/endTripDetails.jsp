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
        <title>End Trip Details</title>
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
            <h3>Enter End Trip Details</h3>
            <br>
            <s:form theme="simple">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Trip ID :</s:label></td>
                            <td><s:textfield id="tripId" label="Trip ID" key="tripId"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Trip Cost :</s:label></td>
                            <td><s:textfield id="tripCost" label="Trip Cost" key="tripCost"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Start Mileage :</s:label></td>
                            <td><s:textfield id="startMileage" label="Start Mileage" key="startMileage"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>End Mileage :</s:label></td>
                            <td><s:textfield id="endtMileage" label="End Mileage" key="endMileage"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>End Time :</s:label></td>
                            <td><s:textfield id="endTime" label="End Time" key="endTime"></s:textfield></td>
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
                <h4>End Trip Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%">
                    <thead>
                        <tr>
                            <th><s:label for="tripId">Trip ID</s:label></th>
                            <th><s:label for="tripCost">Trip Cost</s:label></th>
                            <th><s:label for="startMileage">Start Mileage</s:label></th>
                            <th><s:label for="endMileage">End Mileage</s:label></th>
                            <th><s:label for="endTime">End Time</s:label></th>
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
