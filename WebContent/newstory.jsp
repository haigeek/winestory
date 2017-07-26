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
    <link rel="stylesheet" href="css/story.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>发布新的story</title>
</head>
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed mdui-theme-accent-blue"
">
<%@include file="bootstrapTop.jsp" %>
<br>
<main>
    <form id="storyForm" action="${pageContext.request.contextPath }/story_add.action" method="post">
        <div class="mdui-container-fluid">
            <div class="mdui-class">
                <div class="mdui-row">
                    <div class="mdui-col-xs-12 mdui-col-sm-2"></div>
                    <div class="mdui-col-xs-12 mdui-col-sm-7">
                        <div class="mdui-card-header">
                            <img class="mdui-card-header-avatar" src="${sessionScope.user.avatar}"/>
                            <div class="mdui-card-header-title">发表新的主题</div>
                            <div class="mdui-card-header-subtitle"></div>
                            <input type="hidden" name="user.uid" value="${user.uid }"/>

                        </div>
                        <div class="mdui-container">

                            <div class="mdui-card-context">
                                <div class="mdui-textfield">
                                    <label class="mdui-textfield-label">标题</label>
                                    <input id="title" class="mdui-textfield-input" type="text" name="story_title"/>
                                </div>

                                <label class="mdui-textfield-label">内容</label>
                                <div id="editor" contentEditable="true">
                                    <p>Input your text here...</p>
                                </div>
                                <input type="hidden" value="" id="story_content" name="story_content">
                                <br>
                                <p>选择一个节点</p>
                                <select  name="infoType.typeId">
                                <c:forEach items="${infoTypes}" var="type">
                                <option  value="${type.typeId}">${type.typeName}</option>
                                </c:forEach>
                                </select>
                                <br>
                                <br>
                            </div>
                            <button type="button" onclick="addstory()" class="mdui-btn mdui-btn-dense mdui-color-black  mdui-float-right mdui-m-a-2">发布</button>
                        </div>
                    </div>
                    <div class="mdui-col-xs-12 mdui-col-sm-2">
                        <br>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <ul>
                                    <h3 >tips</h3>
                               <li>发帖注意不要为空，内容可以为空</li>
                                <li>文本编辑器是一个很好玩的东西，但你可能需要了解一下这份<a href="http://blog.leanote.com/post/freewalk/Markdown-%E8%AF%AD%E6%B3%95%E6%89%8B%E5%86%8C" target="_blank">markdown语法指南</a></li>
                                <li>这是一个输入后自动转化的编辑器，按照markdown的语法输入后，会自动转化为你熟悉的格式</li>
                                <li>当然可以正常输入，不过没有什么格式，上述适合需要排版的长文章</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>

</main>
<%@include file="footer.jsp" %>
</body>
<script src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://build.laobubu.net/MarkdownIME/MarkdownIME.min.js"></script>

<script>
    var editor = document.getElementById('editor');
    MarkdownIME.Enhance(editor);
</script>
<script>
    function addstory() {
        var title2 = document.getElementById("title").value;
        if(${user.uid==null}){
            $('#pleaseLogin').modal('toggle');
            return false;
        }
        if(title2 == ""){
            $('#pleaseDoNotSendNull').modal('toggle');
            return false;
        }
        var editor = document.getElementById("editor").innerHTML;
        document.getElementById("story_content").value = editor;
        document.getElementById("storyForm").submit();
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
                <h4 style="text-align: center;">标题不能为空</h4>
            </div>
        </div>
    </div>
</div>
</html>

</html>