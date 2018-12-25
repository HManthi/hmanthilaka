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
        <title>Driver Details</title>
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
        
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Driver Details</h3>
            <br>
            <s:form theme="simple" class="form-style-7"  action="driverAction!driverAdd.action" method="post">
                <table width="400">
                <tbody>
                        <tr>
                            <td><s:label>Name :</s:label></td>
                            <td><s:textfield id="driverName" key="driverName"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Address :</s:label></td>
                            <td><s:textfield id="address" key="address"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Contact&nbsp;No :</s:label></td>
                            <td><s:textfield id="contactNo" key="contactNo"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>License&nbsp;No :</s:label></td>
                            <td><s:textfield id="licenseNo" key="licenseNo"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Gender :</s:label></td>
                            <td><s:radio name = "gender" list="{'MALE','FEMALE'}" /></td>
                        </tr>
                        <tr>
                            <td><s:label>Type :</s:label></td>
                            <td><s:select name="driverType" list="driverTypes" listKey="driverTypeId" listValue="driverType"/>
                            </td>
                        </tr>
                        <tr>
                        <td><s:label>Issue&nbsp;Date :</s:label></td>
                        <td><sj:datepicker id="issueDate" name="issueDate"></sj:datepicker></td>
                        </tr>
                        <tr>
                        <td><s:label>Expire&nbsp;Date :</s:label></td>
                        <td><sj:datepicker id="expireDate" name="expireDate"></sj:datepicker></td>
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
            <h4>Driver Details</h4>
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>
            <br>
            
            <s:form theme="simple">
                <center>
                <table border="1" width="60%">
                    <thead>
                        <tr>
                            <th><s:label for="driverId">Driver ID</s:label></th>
                            <th><s:label for="name">Name</s:label></th>
                            <th><s:label for="address">Address</s:label></th>
                            <th><s:label for="contactNo">Contact No</s:label></th>
                            <th><s:label for="type">Type</s:label></th>
                            <th><s:label for="licenseNo">License No</s:label></th>
                            <th><s:label for="issueDate">Issue Date</s:label></th>
                            <th><s:label for="expireDate">Expire Date</s:label></th>
                            <th><s:label for="edit">Edit</s:label></th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="driverList" var="driver">
                            <tr>
                                 <th><s:property value="#driver.driverId" /></th>
                                 <th><s:property value="#driver.driverName" /></th>
                                 <th><s:property value="#driver.address" /></th>
                                 <th><s:property value="#driver.contactNum" /></th>
                                 <th><s:property value="#driver.driverType" /></th>
                                 <th><s:property value="#driver.licenseNum" /></th>
                                 <th><s:date name="#driver.issueDate" format="MM/dd/yyyy" /></th>
                                 <th><s:date name="#driver.expireDate" format="MM/dd/yyyy" /></th>
                                 <th><s:submit value="Edit"/></th>
                            </tr>
                        </s:iterator>
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
