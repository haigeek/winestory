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
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed">
<%@include file="bootstrapTop.jsp" %>
<br>
<main>
<div class="mdui-container-fluid">
    <div class="mdui-class">
        <div class="mdui-row">
            <div class="mdui-col-xs-4 mdui-col-sm-2"></div>
            <div class="mdui-col-xs-12 mdui-col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="mdui-card-header">
                            <img class="mdui-card-header-avatar" src="${user.avatar}"/>
                            <div class="mdui-card-header-title">${user.username}</div>
                            <div class="mdui-card-header-subtitle">第${user.uid}号会员，加入于${user.joindate}</div>
                            <a href="${pageContext.request.contextPath }/user_showUserinfo.action?user.uid=${user.uid}">
                                <c:if test="${user.uid.equals(sessionScope.user.uid)}">
                                <button class="mdui-btn mdui-btn-dense mdui-color-blue mdui-float-right mdui-m-a-2">
                                    修改资料
                                </button>
                                </c:if>
                            </a>
                        </div>

                        <div class="mdui-card-context">
                            <%--<div class="mdui-chip">--%>
                            <%--<span class="mdui-chip-icon mdui-color-white"><i class="mdui-icon material-icons">&#xe87c;</i></span>--%>
                            <%--<span class="mdui-chip-title">${userinfo.website }</span>--%>
                            <%--</div>--%>
                            <br>
                            <br>
                            <div class="mdui-divider">
                            </div>
                            <br>
                            <p><i class="mdui-icon material-icons">&#xe853;</i> 个人简介：${user.aboutme }</p>
                            <p><i class="mdui-icon material-icons">&#xe0c8;</i> 位置：${user.address }</p>
                            <p><i class="mdui-icon material-icons">&#xe0be;</i> 联系方式：${user.email}</p>
                            <p><i class="mdui-icon material-icons">&#xe853;</i> weibo：${user.weibo }</p>
                            <p><i class="mdui-icon material-icons">&#xe853;</i> 网易云音乐：${user.music }</p>
                            <%--<p><i class="mdui-icon material-icons">&#xe8dc;</i> 积分：周周在记着呢</p>--%>


                        </div>
                    </div>


                </div>
                <br>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="mdui-card-context">
                            <div class="mdui-tab" mdui-tab>
                                <a href="#example1-tab1" class="mdui-ripple">我的文章</a>
                                <a href="#example1-tab2" class="mdui-ripple">我创建的主题</a>
                                <a href="#example1-tab3" class="mdui-ripple">我的回复</a>
                            </div>

                            <div id="example1-tab1" class="mdui-p-a-2">
                                <c:forEach items="${userstory }" var="story">
                                    ${story.story_title }
                                    <br>
                                    <br>
                                </c:forEach>
                            </div>
                            <div id="example1-tab2" class="mdui-p-a-2"></div>
                            <div id="example1-tab3" class="mdui-p-a-2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mdui-col-xs-12 mdui-col-sm-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="mdui-card-content">
                            winestory是一个有温度的故事社区
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</main>
<%@include file="footer.jsp" %>
</body>

<script src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
</html>