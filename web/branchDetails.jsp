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
        <title>Branch Details</title>
        <s:include value="menu.jsp"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="js/noCache.js"></script>
        <script type="text/javascript" src="js/searchBtn.js"></script>
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
            <h3>Enter Branch Details</h3>
            <br>

            <s:form theme="simple" action="branchAdd" method="POST">
                <table>
                    <tbody>
                        <tr>
                            <td><s:label>Branch Name :</s:label></td>
                            <td><s:textfield id="branchName" label="Name" key="branchName" style="text-transform:uppercase"></s:textfield></td>
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
                <hr>
            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()" style="text-transform:uppercase"></s:textfield></p>
            <h4>Branch Details</h4>
                
                <s:form theme="simple">
                    <table border="1" width="60%" id="myTable" class="dataTable">
                    <thead>
                        <tr>
                            <th><s:label for="id">ID</s:label></th>
                            <th><s:label for="name">Name</s:label></th>
                            <th><s:label for="edit">Edit</s:label></th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="branchList" var="branch">
                             <tr>
                                  <th><s:property value="#branch.branchId" /></th>
                                  <th><s:property value="#branch.branchName" /></th>
                                  <th><s:submit value="Edit"/></th>
                             </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </s:form>
        </center>
        </s:div>
    </font>
    </body>
</html>
