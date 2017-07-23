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
    <title>注册</title>
</head>
<main>
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed mdui-theme-accent-blue"">
<%@include file="bootstrapTop.jsp" %>

<div class="mdui-row">
    <div class="mdui-col-xs-12">
        <div class="mdui-appbar mdui-shadow-0 mdui-appbar-fixed mdui-color-black">
            <div class="mdui-container">
                <div class="mdui-toolbar mdui-color-theme">

                    <a href="${pageContext.request.contextPath }/story_indexlist.action"><span class="mdui-typo-title">winestory</span></a>
                    <div class="mdui-toolbar-spacer"></div>
                    <a href="login.jsp" class="mdui-btn mdui-ripple mdui-ripple-white">登录/注册</a>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="mdui-container-fluid">
    <form action="${pageContext.request.contextPath }/user_register.action" method="post">
        <br> <br> <br> <br>
        <div class="mdui-col-xs-12 mdui-col-sm-3"></div>
        <div class="mdui-col-xs-12 mdui-col-sm-5">

            <div class="mdui-card-content ">
                <div class="mdui-textfield mdui-textfield-floating-label">
                    <i class="mdui-icon material-icons ">&#xe853;</i>
                    <label class="mdui-textfield-label">User name</label>
                    <input class="mdui-textfield-input" type="text" name="user.username"/>
                </div>
                <!-- 固定标签 -->
                <div class="mdui-textfield mdui-textfield-floating-label">
                    <i class="mdui-icon material-icons">&#xe0be;</i>
                    <label class="mdui-textfield-label">Email</label>
                    <input class="mdui-textfield-input" type="text" name="user.email"/>
                </div>

                <!-- 浮动标签、多行文本框 -->
                <div class="mdui-textfield mdui-textfield-floating-label">
                    <i class="mdui-icon material-icons">&#xe897;</i>
                    <label class="mdui-textfield-label">Password</label>
                    <input class="mdui-textfield-input " type="password" name="user.password"/>
                </div>
                <br>
                <button class="mdui-btn mdui-color-blue mdui-ripple mdui-center" type="submit">注册</button>
                <a href="" class="mdui-float-right">已有账号，点我登录</a>
            </div>
        </div>

        <div class="mdui-col-xs-12 mdui-col-sm-4">
        </div>

        <script
                src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
    </form>
</div>
<%@include file="footer.jsp" %>
</body>
</main>
</html>