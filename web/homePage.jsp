<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="menu.jsp"/>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vehicle Management System</title>
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <link rel="stylesheet" type="text/css" href="css/formsCss.css"/>
        <script src="js/modernizr.custom.js"></script>
    </head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    <s:div class="container">
        <header>
            <h3>User Registration Form</h3>
        </header>
    </s:div>

     <script src="js/classie.js"></script>
     <script src="js/gnmenu.js"></script>
     <script>
          new gnMenu(document.getElementById('gn-menu'));
     </script>

</body>
</html>