<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/css/mdui.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/simditor.css" />
    <link rel="stylesheet" href="css/story.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
</head>
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed mdui-theme-accent-blue"">
     <%@include file="bootstrapTop.jsp"%>
    <br>
    <main>
    <form action="${pageContext.request.contextPath }/story_add.action" method="post">
        <div class="mdui-container-fluid">
        <div class="mdui-class">
        <div class="mdui-row">
            <div class="mdui-col-xs-12 mdui-col-sm-2"></div>
            <div class="mdui-col-xs-12 mdui-col-sm-8">
                    <div class="mdui-card-header">
                        <img class="mdui-card-header-avatar" src="logo.png" />
                        <div class="mdui-card-header-title">发表新的主题</div>
                        <div class="mdui-card-header-subtitle"></div>
                        <input type="hidden" name="user.uid" value="${user.uid }" />


                    </div>
                    <div class="mdui-container">

                        <div class="mdui-card-context">
                            <div class="mdui-textfield">
                                <label class="mdui-textfield-label">标题</label>
                                <input class="mdui-textfield-input" type="text"  name="story_title" />
                            </div>

                                <label class="mdui-textfield-label">内容</label>
                                <textarea id="editor" name="story_content" placeholder="Balabala" autofocus></textarea>
                            <br>
                            <select name="infoType">
                                <c:forEach items="${infoTypes}" var="type">
                                    <option value="${type.typeId}">${type.typeName}</option>
                                </c:forEach>
                            </select>
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="true">
                                    选择一个节点
                                    <span class="caret"></span>
                                </button>
                                <c:forEach items="${infoTypes}" var="type">
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" >
                                    <li>${type.typeName}</li>
                                    <%--<li><a href="#">Another action</a></li>--%>
                                    <%--<li><a href="#">Something else here</a></li>--%>
                                    <%--<li role="separator" class="divider"></li>--%>
                                    <%--<li><a href="#">Separated link</a></li>--%>
                                </ul>
                                </c:forEach>
                                <br>
                                <br>
                            </div>
                            <button class="mdui-btn mdui-btn-dense mdui-color-black mdui-ripple mdui-float-right mdui-m-a-2">放弃</button>
                            <button class="mdui-btn mdui-btn-dense mdui-color-black mdui-ripple mdui-float-right mdui-m-a-2">发布</button>
                        </div>
                    </div>
                </div>
                <br>
                <div class="mdui-card">
                    <div class="mdui-card-context">                      
                    </div>
                </div>
            </div>
            <div class="mdui-col-xs-12 mdui-col-sm-3">

            </div>
        </div>
    </div>
            </div>
   </form>
    </main>
     <%@include file="footer.jsp"%>
</body>
<script src="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/js/mdui.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="scripts/module.js"></script>
<script type="text/javascript" src="scripts/hotkeys.js"></script>
<script type="text/javascript" src="scripts/uploader.js"></script>
<script type="text/javascript" src="scripts/simditor.js"></script>
<script>
    var editor = new Simditor({
        textarea: $('#editor')
        //optional options

    });
</script>
</html>