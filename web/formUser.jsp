<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Form</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
         <script type="text/javascript" src="js/noCache.js"></script>
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>


</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    <s:include value="menu.jsp"/>
        <font color="white">
<center>
<s:div>
    <s:div>
        
        <h1>User Registration</h1>
            
        <s:form theme="simple" action="userAdd" method="POST">
           <table width="45%">
               <tbody>
                   <tr>
                       <td><s:label>User Name :</s:label></td>
                       <td><s:textfield id="userName" key="userName"></s:textfield></td>
                       <td><s:label>First Name :</s:label></td>
                       <td><s:textfield id="firstName" key="firstName"></s:textfield></td>
                   </tr>
                   <tr>
                       <td><s:label>Last Name :</s:label></td>
                       <td><s:textfield id="lastName" key="lastName"></s:textfield></td>
                       <td><s:label>Password :</s:label></td>
                       <td><s:textfield id="password" key="password"></s:textfield></td>
                   </tr>
                   <tr>
                       <td><s:label>Contact No :</s:label></td>
                       <td><s:textfield id="contactNo" key="contactNo"></s:textfield></td>
                       <td><s:label>Role :</s:label></td>
                       <td><s:select id="role" list="{'AAAA','FFFFF','RRRRRR'}"></s:select></td>
                       
                   </tr>
                   <tr>
                       <td><s:label>Department :</s:label></td>
                       <td><s:select id="department" list="{'AAAA','FFFFF','RRRRRR'}"></s:select></td>
                       <td><s:label>Branch :</s:label></td>
                       <td><s:select id="branch" list="{'AAAA','FFFFF','RRRRRR'}"></s:select></td>
                       
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
                       <td><s:submit value="Add"></s:submit>&nbsp;<s:submit value="Clean"></s:submit></td>
                        <td>&nbsp;</td>
                   </tr>
               </tbody>
           </table>
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
</font>
</body>
</html>
