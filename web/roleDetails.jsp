<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Role Details</title>
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

    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <s:div>
        <center>
            <h3>Enter Role Details</h3>
            <br>
            <s:div>
                  <s:form class="form-style-7" action="register" method="post">
                    <s:textfield id="roleName" label="Role Name" key="roleName" ></s:textfield>
                  </s:form>   
                    <br>
                    <s:form theme="simple">
                <s:submit value="Save"></s:submit><s:submit value="Clean"></s:submit>
                    </s:form>
            </s:div>   
            <hr>
            <h4>Role Details</h4>

            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>

            <br>
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
</html>