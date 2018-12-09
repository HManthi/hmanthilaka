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
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<s:div>
    <s:include value="menu.jsp"/>
    <s:div>
       <s:form action="userAction!addUser.action">
       <s:textfield name="name" label="UserName"></s:textfield>
       <s:password name="password" label="Password"></s:password>
       <s:textfield name="email" label="Email"></s:textfield>



       <s:submit value="Add"></s:submit>

       </s:form>
    </s:div>
</s:div>
</body>
</html>
