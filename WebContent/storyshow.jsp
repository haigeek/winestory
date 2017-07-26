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
    <title>${storyshow.story_title}-winestory</title>
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
                            <div class="mdui-card-primary-subtitle"><fmt:formatDate value="${storyshow.date}" pattern='yyyy-MM-dd HH:mm'/></div>
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
                            <c:if test="${commentshow.size()==0}">
                                <div class=" alert " role="alert">还没有评论哦 (●ˇ∀ˇ●)，快抢沙发！理性发言，互联网时代，要自由，更要遵守秩序！！！</div>
                            </c:if>
                            <c:forEach items="${commentshow }" var="comment">
                            <ul class="mdui-list mdui-list-dense">
                                    <li class="mdui-list-item ">
                                       <img style=" width:50px;height:50px;border-radius:50%; margin-right: 10px" src="${comment.user.avatar}"/>
                                        <div class="mdui-list-item-content">
                                            <div class="mdui-list-item-title">${comment.commentContent}</div>
                                            <div class="mdui-list-item-text mdui-list-item-one-line"> <a href="${pageContext.request.contextPath }/user_usershow.action?user.uid=${comment.user.uid}">${comment.user.username}</a>回复于${comment.commentDate}
                                            </div>
                                        </div>
                                    </li>
                                </a>
                            </ul>
                            </c:forEach>
                        </div>
                    </div>
                    <form id="commentForm" action="${pageContext.request.contextPath }/comment_add.action?comment.story.storyId=${storyshow.story_id }" method="post">
                        <input type="hidden" name="comment.user.uid" value="${user.uid }"/>
                        <input type="hidden" name="comment.story.story_id" value="${storyshow.story_id }"/>
                        <div class="panel panel-default">
                            <div class="panel-heading">说点什么</div>
                            <div class="panel-body">
                                <div class="mdui-textfield">
                                    <textarea id="comment" class="mdui-textfield-input" name="comment.commentContent"
                                              placeholder="说点什么"></textarea>
                                </div>
                                <button type="button" onclick="addcomment()" class="mdui-btn mdui-color-blue  mdui-float-right mdui-btn-dense">
                                    回复
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="mdui-col-xs-12 mdui-col-sm-2"></div>
            </div>
        </div>
    </div>
</main>
<%@include file="footer.jsp" %>
</body>
<script src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    function addcomment() {
        var content = document.getElementById("comment").value;
        if(${user.uid==null}){
            $('#pleaseLogin').modal('toggle');
            return false;
        }
        if(content == ""){
            $('#pleaseDoNotSendNull').modal('toggle');
            return false;
        }
        document.getElementById("commentForm").submit();
    }
</script>
<%--Dialogs--%>
<div id="pleaseLogin" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-title">
                <h1 class="text-center">抱歉😥
                </h1>
            </div>
            <div class="modal-body">
                <h4 style="text-align: center;">请先登录</h4>
            </div>
        </div>
    </div>
</div>
<div id="pleaseDoNotSendNull" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-title">
                <h1 class="text-center">抱歉😥
                </h1>
            </div>
            <div class="modal-body">
                <h4 style="text-align: center;">发送内容不能为空</h4>
            </div>
        </div>
    </div>
</div>
</html>