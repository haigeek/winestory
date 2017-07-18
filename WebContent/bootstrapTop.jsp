<%--
  Created by IntelliJ IDEA.
  User: haigeek
  Date: 2017/7/12
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8"%>
<nav class="navbar  main-navbar navbar-inverse navbar-fixed-top"  style="background-color: black;" >
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="background-color: black">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="${pageContext.request.contextPath }/story_indexlist.action" class="navbar-brand brand-bootcdn" style="color: white">WineStory</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${sessionScope.user.username != null}">
                    <li> <a  href="${pageContext.request.contextPath }/user_usershow.action?uid=${user.uid}" >${sessionScope.user.username } </a></li>
                    <li><a  href="${pageContext.request.contextPath }/story_toAddPage.action"> 发布</a></li>
                </c:if>
                <c:if test="${sessionScope.user.username == null}">
                    <li><a  href="login.jsp"> 登陆/注册</a></li>
                </c:if>
                <li><a href="http://haigeek.cn/" onclick="" target="_blank">博客</a></li>
                <li><a href="about.jsp" onclick="">关于</a></li>
            </ul>
        </div>
    </div>
</nav>


<script src="scripts/jquery.min.js"></script>
<script src="scripts/bootstrap/bootstrap.min.js"></script>
