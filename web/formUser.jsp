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
    
<s:div>
    
    
    <s:div>
        
    <center>
       <s:form action="userAdd" method="POST">

       <s:textfield id="userName" label="User Name" key="userName"></s:textfield>
       <s:textfield id="firstName" label="First Name" key="firstName"></s:textfield>
       <s:textfield id="lastName" label="Last Name" key="lastName"></s:textfield>
       <s:password id="password" label="Password" key="password"></s:password>
       <s:textfield id="email" label="Email" key="email"></s:textfield>
       <s:textfield id="phone" label="Contact No" key="phone"></s:textfield>



       <s:submit value="Add"></s:submit>

       </s:form>
    </center>
   
                            
            
    </s:div>
      
</s:div>
    
</body>
</html>
