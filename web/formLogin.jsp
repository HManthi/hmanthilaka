<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript" src="js/noCache.js"></script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" class="login" data-page="login">
<s:div id="login-block">
    <s:div>
        <s:div>
            <s:div>
                <s:div>

                    <hr>
                        <s:div>
                            <s:form id="login-form" action="loginUser" method="POST">
                              <s:textfield id="userName" placeHolder="Username" key="userName"></s:textfield>
                              <s:password id="password" placeHolder="Password" key="password"></s:password>
                              <s:submit value="Login" method="userLogin"></s:submit>
                            </s:form>
                        </s:div>
                </s:div>
            </s:div>
        </s:div>
    </s:div>
</s:div>
</body>
</html>
