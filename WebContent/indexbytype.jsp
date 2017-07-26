<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet"
          href="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/css/mdui.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/story.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>winestory</title>
</head>

<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed">
<%@include file="bootstrapTop.jsp" %>
<br>
<main>
    <div class="mdui-container-fluid">
        <div class="mdui-class">
            <div class="mdui-row">
                <div class="mdui-col-xs-12 mdui-col-sm-2"></div>
                <div class="mdui-col-xs-12 mdui-col-sm-7">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a href="${pageContext.request.contextPath }/story_indexlist.action" class="topic-tab ">首页</a>
                            <a href="${pageContext.request.contextPath }/story_indexbytype?infoType.typeId=1" class="topic-tab ">故事</a>

                            <a href="${pageContext.request.contextPath }/story_indexbytype?infoType.typeId=2" class="topic-tab ">发现</a>

                            <a href="${pageContext.request.contextPath }/story_indexbytype?infoType.typeId=3" class="topic-tab ">问与答</a>

                            <a href="${pageContext.request.contextPath }/story_indexbytype?infoType.typeId=4" class="topic-tab ">生活</a>

                            <a href="${pageContext.request.contextPath }/story_indexbytype?infoType.typeId=5" class="topic-tab ">音乐</a>
                        </div>
                        <div class="panel-body">
                            <c:if test="${storyList.size()<=20}">
                                    <ul class="mdui-list">
                                        <c:forEach items="${storyList }" var="story">

                                            <li class="mdui-list-item ">
                                                <div class="mdui-list-item-avatar"><img src="${story.user.avatar}"/>
                                                </div>
                                                <div class="mdui-list-item-content">
                                                    <div class="mdui-list-item-title mdui-list-item-two-line">  <a href="${pageContext.request.contextPath }/story_show.action?story_id=${story.story_id}">${story.story_title} </a></div>
                                                    <div class="mdui-list-item-text mdui-list-item-two-line"> <a href="${pageContext.request.contextPath }/user_usershow.action?user.uid=${story.user.uid}">${story.user.username}</a>发表在${story.infoType.typeName} 在${story.date}
                                                    </div>
                                                </div>
                                                <span class="badge"> ${story.commentcount}</span>
                                            </li>
                                </c:forEach>
                                            <li class="mdui-list-item">
                                                <div class="mdui-list-item-content"> <a href="${pageContext.request.contextPath }/story_getAllStory.action">查看更多</a></div>
                                            </li>

                                    </ul>

                            </c:if>
                            <c:if test="${storyList.size()>20}">

                                    <ul class="mdui-list ">
                                        <c:forEach items="${storyList }" var="story" end="20">
                                            <li class="mdui-list-item ">
                                                <img style=" width:50px;height:50px;border-radius:50%; margin-right: 10px" src="${story.user.avatar}"/>

                                                <div class="mdui-list-item-content">
                                                    <div class="mdui-list-item-title "><a href="${pageContext.request.contextPath }/story_show.action?story_id=${story.story_id}">${story.story_title}</a></div>
                                                    <div class="mdui-list-item-text mdui-list-item-two-line">
                                                        <a href="${pageContext.request.contextPath }/user_usershow.action?user.uid=${story.user.uid}">${story.user.username}</a> 发表在${story.infoType.typeName} <fmt:formatDate
                                                            value="${story.date}" pattern='yyyy-MM-dd HH:mm'/>
                                                    </div>
                                                </div>
                                                <span class="badge">${story.commentcount}</span>
                                            </li>
                                </c:forEach>
                                        <li class="mdui-list-item">
                                            <div class="mdui-list-item-content"> <a href="${pageContext.request.contextPath }/story_getAllStory.action">查看更多</a></div>
                                        </li>
                                    </ul>

                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="mdui-col-xs-12 mdui-col-sm-2">
                    <br>
                    <div class="panel panel-default">

                        <div class="panel-body">
                            winestory是一个有温度的故事社区
                            <br> 在这里，你可以相信这里的小伙伴
                            <br> 我们可以很认真的分享
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
</main>
<%@include file="footer.jsp" %>
</body>

<script src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
</html>