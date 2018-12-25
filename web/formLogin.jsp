<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript" src="js/noCache.js"></script>
  <link rel="stylesheet" type="text/css" href="css/demo.css" />
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" class="login" data-page="login">
<center>
    <font color="white">
    <img src="images/user-login-icon.png" width="125" height="125" alt="user-login-icon"/>
    <s:div id="login-block">
    <s:div>
        <s:div>
            <s:div>
                <s:div>

                    <hr>
                        <s:div>
                            <s:form theme="simple" id="login-form" action="loginUser" method="POST">
                                <h1>Login</h1>
                                <table width="25%">
                                    <tbody>
                                        <tr>
                                            <td><img src="images/user_1.png" width="25" height="25" alt="user_1"/></td>
                                            <td><s:label>User Name :</s:label></td>
                                            <td><s:textfield id="userName" placeHolder="Username" key="userName"></s:textfield></td>
                                        </tr>
                                        <tr>
                                            <td><img src="images/lock.png" width="25" height="25" alt="lock"/></td>
                                            <td><s:label>Password :</s:label></td>
                                            <td><s:password id="password" placeHolder="Password" key="password"></s:password></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td><s:submit value="Login" method="userLogin"></s:submit></td>
                                        </tr>
                                </tbody>
                            </table>
                             </s:form>
                        </s:div>
                </s:div>
            </s:div>
        </s:div>
    </s:div>
</s:div>
</font>
</center>
</body>
</html>
