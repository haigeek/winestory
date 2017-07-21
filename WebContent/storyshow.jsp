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
    <title>login</title>
</head>
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed mdui-theme-accent-blue">
<%@include file="bootstrapTop.jsp" %>
<br>
<main>
<div class="mdui-container-fluid">
    <div class="mdui-class">
        <div class="mdui-row">
            <div class="mdui-col-xs-12 mdui-col-sm-3"></div>
            <div class="mdui-col-xs-12 mdui-col-sm-5">

                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="mdui-card-primary-title">${storyshow.story_title}</div>
                        <div class="mdui-card-primary-subtitle">${storyshow.user.username}</div>
                        <div class="mdui-card-primary-subtitle">${storyshow.date}</div>
                    </div>
                    <div class="mdui-card-content">

                        ${storyshow.story_content}


                    </div>
                </div>
            </div>
            <div class="mdui-col-xs-12 mdui-col-sm-2">
            </div>
        </div>
    </div>
    <div class="mdui-class">
        <div class="mdui-row">
            <div class="mdui-col-xs-12 mdui-col-sm-3"></div>
            <div class="mdui-col-xs-12 mdui-col-sm-5">
                <div class="panel panel-default">
                    <div class="panel-heading">评论</div>
                    <div class="panel-body">
                        <p>发表一条回复</p>
                        <div class="mdui-textfield">
                            <textarea class="mdui-textfield-input" placeholder="说点什么"></textarea>
                        </div>
                        <button class="mdui-btn mdui-color-blue  mdui-float-right mdui-btn-dense">回复</button>
                    </div>

                </div>
            </div>
            <div class="mdui-col-xs-12 mdui-col-sm-2"></div>
        </div>
    </div>
</div>
</main>
<%@include file="footer.jsp" %>
</body>

<script src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
</html>