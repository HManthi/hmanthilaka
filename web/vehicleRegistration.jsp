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
        <title>Vehicle Registration</title>
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
            <h3>Enter Vehicle Registration</h3>
            <br>
            <s:form theme="simple" class="form-style-7"  action="register" method="post">
                <table width="30%">
                    <tbody>
                        <tr>
                            <td><s:label>Branch :</s:label></td>
                            <td><s:select list="{'aaa','ddddd'}"></s:select></td>
                            <td><s:label>Vehicle&nbsp;No :</s:label></td>
                            <td><s:textfield id="vehicleNo" key="vehicleNo"></s:textfield></td>
                            </tr>
                            <tr>
                            <td><s:label>Manufactured&nbsp;Year :</s:label></td>
                            <td><s:textfield id="manifacturedYear" key="manifacturedYear"></s:textfield></td>
                            <td><s:label>Type :</s:label></td>
                            <td><s:textfield id="type" key="type"></s:textfield></td>
                            </tr>

                            <tr>
                            <td><s:label>Brand :</s:label></td>
                            <td><s:textfield id="brand" key="brand"></s:textfield></td>
                            <td><s:label>Model :</s:label></td>
                            <td><s:textfield id="model" key="model"></s:textfield></td>
                            </tr>

                            <tr>
                            <td><s:label>Purchase&nbsp;Date :</s:label></td>
                            <td><sj:datepicker id="purchaseDate"></sj:datepicker></td>
                            <td><s:label>Purchase&nbsp;Price :</s:label></td>
                            <td><s:textfield id="purchasePrice" key="purchasePrice"></s:textfield></td>
                            </tr>

                            <tr>
                            <td><s:label>Owner :</s:label></td>
                            <td><s:textfield id="owner" key="owner"></s:textfield></td>
                            <td><s:label>Address :</s:label></td>
                            <td><s:textfield id="address" key="address"></s:textfield></td>
                            </tr>

                            <tr>
                            <td><s:label>Contact No :</s:label></td>
                            <td><s:textfield id="contactNo" key="contactNo"></s:textfield></td>
                            <td><s:label>Vender :</s:label></td>
                            <td><s:textfield id="vender" key="vender"></s:textfield></td>
                            </tr>

                            <tr>
                            <td><s:label>Status :</s:label></td>
                            <td><s:select list="{'aaa','ddddd'}"></s:select></td>
                            <td><s:label>Vehicle&nbsp;Book :</s:label></td>
                            <td><s:file name="upload"></s:file></td>
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
            <h4>Vehicle Registration</h4>
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>
                <br>

            <s:form theme="simple">
                <center>
                    <table border="1" width="60%">
                        <thead>
                            <tr>
                                <th><s:label for="branch">Branch</s:label></th>
                                <th><s:label for="vehicleNo">Vehicle No</s:label></th>
                                <th><s:label for="manifacturedYear">Manufactured Year</s:label></th>
                                <th><s:label for="type">Type</s:label></th>
                                <th><s:label for="brand">Brand</s:label></th>
                                <th><s:label for="model">Model</s:label></th>
                                <th><s:label for="vender">Vender</s:label></th>
                                <th><s:label for="owner">Owner</s:label></th>
                                <th><s:label for="address">Address</s:label></th>
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
