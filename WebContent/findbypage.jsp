<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
    <title>winestory的全部帖子</title>
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
                            <a href="/?tab=all" class="topic-tab current-tab">全部</a>

                            <a href="/?tab=good" class="topic-tab ">故事</a>

                            <a href="/?tab=share" class="topic-tab ">发现</a>

                            <a href="/?tab=ask" class="topic-tab ">问与答</a>

                            <a href="/?tab=job" class="topic-tab ">生活</a>

                            <a href="/?tab=dev" class="topic-tab "></a>
                        </div>
                        <div class="panel-body">
                            <%--<c:forEach items="${StoryList }" var="story">--%>
                            <s:iterator value="pageBean.stories">
                                <ul class="mdui-list">
                                    <a href="${pageContext.request.contextPath }/story_show.action?story_id=<s:property value="id"/> ">
                                        <li class="mdui-list-item mdui-ripple">
                                            <div class="mdui-list-item-avatar"><img src="avatar1.jpg"/></div>
                                            <div class="mdui-list-item-content">
                                                <div class="mdui-list-item-title mdui-list-item-two-line"><s:property value="story_title"/></div>
                                                <%--<div class="mdui-list-item-text mdui-list-item-one-line"> <s:property value="user.username"/>发表在说天谈地--%>
                                                    <%--最后回复：haigeek 2017.06.07</div>--%>
                                                <%--</div>--%>
                                        </li>
                                    </a>
                                </ul>
                            <%--</c:forEach>--%>
                            </s:iterator>
                                <%--<s:set name="page" value="#request.page"></s:set>--%>
                                <%--<nav aria-label="Page navigation">--%>
                                    <%--<ul class="pagination">--%>
                                        <%--<li>--%>
                                            <%--<a href=getAllStory?pageNow=<s:property value="#page.pageNow-1"/>  "  aria-label="Previous">--%>
                                                <%--<span aria-hidden="true">&laquo;</span>--%>
                                            <%--</a>--%>

                                        <%--</li>--%>
                                        <%--<li><a href="story_getAllStory?pageNow=1">1</a></li>--%>
                                        <%--<li><a href="story_getAllStory?pageNow=2">2</a></li>--%>
                                        <%--<li><a href="story_getAllStory?pageNow=3">3</a></li>--%>
                                        <%--<li><a href="#">4</a></li>--%>
                                        <%--<li><a href="#">5</a></li>--%>
                                        <%--<li>--%>
                                            <%--<a href="story_getAllStory?pageNow=<s:property value="#page.pageNow+1" /> " aria-label="Next">--%>
                                                <%--<span aria-hidden="true">&raquo;</span>--%>
                                            <%--</a>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</nav>--%>
                        </div>
                    </div>
                </div>
                <div class="mdui-col-xs-12 mdui-col-sm-2">
                    <div class="panel panel-default">

                        <div class="panel-body">
                            <div class="mdui-card-header">
                                <img class="mdui-card-header-avatar" src="logo.png"/>
                                <div class="mdui-card-header-title">haigeek</div>
                                <div class="mdui-card-header-subtitle">第1号会员，加入于2017.06.07</div>

                            </div>
                        </div>
                    </div>
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