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
        <title>Revenue</title>
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
            <h3>Enter Revenue Registration</h3>
            <br>
            <s:form theme="simple" class="form-style-7"  action="register" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Vehicle No :</s:label></td>
                            <td><s:textfield id="vehicleNo" key="vehicleNo"></s:textfield></td>
                            <td><s:label>License No :</s:label></td>
                            <td><s:textfield id="licenseNo" key="licenseNo"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Valid Period :</s:label></td>
                            <td><sj:datepicker id="validPeriod"></sj:datepicker></td>
                            <td><s:label>Issue Date :</s:label></td>
                            <td><sj:datepicker id="issueDate"></sj:datepicker></td>
                        </tr>
                        <tr>
                            <td><s:label>Annual Fee :</s:label></td>
                            <td><s:textfield id="annualFee" key="annualFee"></s:textfield></td>
                            <td><s:label>Arrears :</s:label></td>
                            <td><s:textfield id="arrears" key="arrears"></s:textfield></td>
                        </tr>
                        <tr>
                            <td><s:label>Fines :</s:label></td>
                            <td><s:textfield id="fines" key="fines"></s:textfield></td>
                            <td><s:label>Total Paid :</s:label></td>
                            <td><s:textfield id="totalPaid" key="totalPaid"></s:textfield></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><s:submit value="Save"></s:submit></td>
                            <td><s:submit value="Clean"></s:submit></td>
                            
                        </tr>
                    </tbody>
                </table>

            </s:form>
            <br>
            <hr>
            <h4>Revenue Details</h4>
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>
                <br>

            <s:form theme="simple">
                <center>
                    <table border="1" width="60%">
                        <thead>
                            <tr>
                                <th><s:label for="vehicleNo">Vehicle No</s:label></th>
                                <th><s:label for="licenseNo">License No</s:label></th>
                                <th><s:label for="validPeriod">Valid Period</s:label></th>
                                <th><s:label for="issueDate">Issue Date</s:label></th>
                                <th><s:label for="annualFee">Annual Fee</s:label></th>
                                <th><s:label for="arrears">Arrears</s:label></th>
                                <th><s:label for="fines">Fines</s:label></th>
                                <th><s:label for="totalPaid">Total Paid</s:label></th>
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
