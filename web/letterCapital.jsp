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
                <script src="js/letterCap.js"></script>
                <script src="js/textNumber.js"></script>
                <script type="text/javascript" src="js/searchBtn.js"></script>

</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    <s:include value="menu.jsp"/>
        <font color="white">
<center>
<s:div>
    <s:div>
        
        <h1>Textfield validations</h1>
            
        <s:form theme="simple" action="userAdd" method="POST">
           <table width="45%">
               <tbody>
                   <tr>
                       <td><s:label>User Name :</s:label></td>
                       <td><s:textfield id="userName" key="userName" style="text-transform:uppercase"></s:textfield></td>
                       <td><s:label>Contact No :</s:label></td>
                       <td><s:textfield id="firstName" key="firstName" onkeypress="return isNumber(event)" maxlength="10"></s:textfield></td>
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
            <s:select label="Show" list="{'10','50','100'}"></s:select>&nbsp;entries&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield id="myInput" label="Search" key="search" onkeyup="myFunction()"></s:textfield></p>

            <br>
            <s:form theme="simple">
                <table border="1" width="60%" id="myTable" class="dataTable">
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
