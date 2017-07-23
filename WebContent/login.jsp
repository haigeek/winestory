<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet"
          href="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/css/mdui.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>登录</title>
</head>
<main>
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed mdui-theme-accent-blue"">
<%@include file="bootstrapTop.jsp" %>

<div class="mdui-container-fluid">
    <form action="${pageContext.request.contextPath }/user_login.action" method="post">
        <br> <br> <br> <br>

        <div class="mdui-row">
            <div class="mdui-col-xs-12 mdui-col-sm-3"></div>
            <div class="mdui-col-xs-12 mdui-col-sm-5">

                <div class="mdui-card-content ">
                    <div class="mdui-textfield mdui-textfield-floating-label">
                        <i class="mdui-icon material-icons ">&#xe853;</i>
                        <label class="mdui-textfield-label">User name</label>
                        <input class="mdui-textfield-input" type="text" name="user.username"/>
                    </div>

                    <div class="mdui-textfield mdui-textfield-floating-label">
                        <i class="mdui-icon material-icons">&#xe897;</i>
                        <label class="mdui-textfield-label">Password</label>
                        <input class="mdui-textfield-input" type="password" name="user.password"/>
                    </div>
                    <br>
                    <button class="mdui-btn mdui-color-blue mdui-ripple mdui-center" type="submit">登录</button>
                    <a href="register.jsp" class="mdui-float-right">没有账号，点我注册</a>
                </div>

            </div>
            <div class="mdui-col-xs-6 mdui-col-sm-4"></div>

        </div>
        <script
                src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
    </form>
</div>
<%@include file="footer.jsp" %>
</body>
</main>
</html>