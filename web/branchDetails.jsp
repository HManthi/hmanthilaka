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
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/positionCss.css" />
        <script src="js/modernizr.custom.js"></script>
    </head>
    <body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
        <s:div>
        <center>
            <h3>Enter Branch Details</h3>
            <br>

            <br>
            <s:form theme="simple" action="branchAdd" method="POST">
                <s:textfield id="branchName" label="Name" key="branchName"></s:textfield>
                <s:submit value="Save"></s:submit>&nbsp;<s:submit value="Clean"></s:submit>
            </s:form>
                <br>
                <hr>
                
                <h4>Branch Details</h4>
                
                <s:form theme="simple">
                <table border="1" width="60%">
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
    </body>
</html>
