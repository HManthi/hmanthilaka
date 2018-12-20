<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>

</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    <s:div>
        <h1>Home page</h1>
        <s:include value="menu.jsp"/>

    </s:div>
</body>
</html>