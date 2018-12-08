<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" class="login" data-page="login">
<s:div cssClass="container" id="login-block">
    <s:div cssClass="row">
        <s:div cssClass="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4">
            <s:div cssClass="login-box clearfix">
                <s:div cssClass="login-logo">

                    <hr>
                        <s:div cssClass="login-form">
                            <s:form id="login-form" action="login" method="POST">
                            <s:textfield id="userName" placeHolder="Username" key="userName" cssClass="input-field form-control user"></s:textfield>
                            <s:password id="password" placeHolder="Password" key="password" cssClass="input-field form-control password"></s:password>
                            <s:submit cssClass="btn btn-login" value="Login" method="execute"></s:submit>
                            </s:form>
                        </s:div>
                </s:div>
            </s:div>
        </s:div>
    </s:div>



</s:div>




</body>
</html>
