<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Role Details</title>
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

    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <font color="white">
        <s:div>
        <center>
            <h3>Enter Role Details</h3>
            <br>
            <s:div>
                <s:form theme="simple" class="form-style-7" action="register" method="post">
                    <table>
                        <tbody>
                            <tr>
                                <td><s:label>Role Name :</s:label></td>
                                <td><s:textfield id="roleName" key="roleName" ></s:textfield></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><s:submit value="Save"></s:submit>&nbsp;<s:submit value="Clean" align="left"></s:submit></td>
                            </tr>
                        </tbody>
                    </table>
                </s:form>   
                    <br>
            </s:div>   
            <hr>
            <h4>Role Details</h4>

            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>

            <s:form theme="simple">
                <table border="1" width="60%">
                    <thead>
                        <tr>
                            <th><s:label for="roleName">Role Name</s:label></th>
                            <th><s:label for="edit">Edit</s:label></th>
                            <th><s:label for="remove">Remove</s:label></th>
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
  </body>
</font>
</html>
