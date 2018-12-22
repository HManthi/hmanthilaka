<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Form</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>


</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    <s:include value="menu.jsp"/>
        
<center>
<s:div>
    <s:div>
        <h1>User Registration</h1>
            
       <s:form action="userAdd" method="POST">
       <s:textfield id="userName" label="User Name" key="userName"></s:textfield>
       <s:textfield id="fullName" label="Full Name" key="fullName"></s:textfield>
       <s:textfield id="contactNo" label="Contact No" key="contactNo"></s:textfield>
       <s:select id="role" label="Role" list="{'AAAA','FFFFF','RRRRRR'}"></s:select>
       <s:select id="department" label="Department" list="{'AAAA','FFFFF','RRRRRR'}"></s:select>
       <s:select id="branch" label="Branch" list="{'AAAA','FFFFF','RRRRRR'}"></s:select>
       </s:form>
       <s:form theme="simple">
        <s:submit value="Add"></s:submit>
        <s:submit value="Clean"></s:submit>
        </s:form>
    
    </s:div>
<hr>
            <h4>User Details</h4>

            <br>
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="search" label="Search" key="search"></s:textfield></p>

            <br>
            <s:form theme="simple">
                <table border="1" width="60%">
                    <thead>
                        <tr>
                            <th><s:label for="userName">User Name</s:label></th>
                            <th><s:label for="fullName">Full Name</s:label></th>
                            <th><s:label for="contactNo">Contact No</s:label></th>
                            <th><s:label for="role">Role</s:label></th>
                            <th><s:label for="department">Department</s:label></th>
                            <th><s:label for="branch">Branch</s:label></th>
                            <th><s:label for="edit">Edit</s:label></th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                        <br><br>
                            <s:submit value="Previous"></s:submit>&nbsp;<s:submit value="Next"></s:submit>
            </s:form>
  </s:div>
</center>
    
</body>
</html>
