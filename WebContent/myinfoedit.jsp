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
    <title>修改资料</title>
</head>
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed mdui-theme-accent-blue"
">
<%@include file="bootstrapTop.jsp" %>
<br>
<main>
    <div class="mdui-container-fluid">
        <div class="mdui-class">
            <div class="mdui-row">
                <div class="mdui-col-xs-4 mdui-col-sm-2"></div>
                <div class="mdui-col-xs-12 mdui-col-sm-6">
                    <form action="${pageContext.request.contextPath }/user_update.action?user.usid=${user.uid}"
                          method=post>
                        <input type="hidden" name="user.uid" value="${user.uid }"/>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="mdui-card-header">
                                    <img class="mdui-card-header-avatar" src="${user.avatar}"/>
                                    <div class="mdui-card-header-title">haigeek</div>
                                    <div class="mdui-card-header-subtitle">第1号会员，加入于2017.06.07</div>
                                </div>
                                <div class="mdui-container">
                                    <div class="mdui-textfield">
                                        <i class="mdui-icon material-icons">&#xe853;</i>
                                        <label class="mdui-textfield-label">User name</label>
                                        <input class="mdui-textfield-input" type="text" name="user.username"
                                               value="${user.username }"/>
                                    </div>
                                    <div class="mdui-textfield">
                                        <i class="mdui-icon material-icons">&#xe0be;</i>
                                        <label class="mdui-textfield-label">email</label>
                                        <input class="mdui-textfield-input" type="text" name="user.email"
                                               value="${user.email }"/>
                                    </div>
                                    <div class="mdui-textfield">
                                        <i class="mdui-icon material-icons">&#xe87c;</i>
                                        <label class="mdui-textfield-label">个人简介</label>
                                        <input class="mdui-textfield-input" type="text" name="user.aboutme"
                                               value="${user.aboutme }"/>
                                    </div>
                                    <div class="mdui-textfield">
                                        <i class="mdui-icon material-icons">&#xe0c8;</i>
                                        <label class="mdui-textfield-label">地区</label>
                                        <input class="mdui-textfield-input" type="text" name="user.address"
                                               value="${user.address }"/>
                                    </div>
                                    <div class="mdui-textfield">
                                        <i class="mdui-icon material-icons">&#xe853;</i>
                                        <label class="mdui-textfield-label">weibo</label>
                                        <input class="mdui-textfield-input" type="text" name="user.weibo"
                                               value="${user.weibo }"/>
                                    </div>
                                    <div class="mdui-textfield">
                                        <i class="mdui-icon material-icons">&#xe019;</i>
                                        <label class="mdui-textfield-label">网易云id</label>
                                        <input class="mdui-textfield-input" type="text" name="user.music"
                                               value="${user.music }"/>
                                    </div>
                                    <div class="mdui-textfield">
                                        <i class="mdui-icon material-icons">&#xe894;</i>
                                        <label class="mdui-textfield-label">个人站点</label>
                                        <input class="mdui-textfield-input" type="text" name="user.website"
                                               value="${user.website }"/>
                                    </div>
                                    <br>
                                    <button class="mdui-btn mdui-btn-dense mdui-color-blue mdui-float-right mdui-m-a-2"
                                            type="submit">保存
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <br>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <br>
                            <div class="mdui-card-header-title">更改密码</div>
                            <div class="mdui-container">
                                <div class="mdui-textfield">
                                    <i class="mdui-icon material-icons">&#xe897;</i>
                                    <label class="mdui-textfield-label">new password</label>
                                    <input class="mdui-textfield-input" type="text"/>
                                </div>
                                <div class="mdui-textfield">
                                    <i class="mdui-icon material-icons">&#xe897;</i>
                                    <label class="mdui-textfield-label">confirm</label>
                                    <input class="mdui-textfield-input" type="text"/>
                                </div>

                                <button class="mdui-btn mdui-btn-dense mdui-color-blue mdui-float-right mdui-m-a-2"
                                        type="submit">保存
                                </button>
                            </div>
                        </div>
                    </div>
                    <br>
                    <form action="${pageContext.request.contextPath }/user_updateavatar.action?user.usid=${user.uid}"
                          method=post enctype="multipart/form-data">
                        <input type="hidden" name="user.uid" value="${user.uid }"/>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <br>
                                <div class="mdui-card-header-title">头像上传</div>
                                <div class="mdui-container">
                                    <br>
                                    <img src="${user.avatar}" width="150px" height="150px">
                                    <img src="${user.avatar}" width="100" height="100">
                                    <img src="${user.avatar}" width="50px" height="50px">
                                    <br>
                                    <br>
                                    <input type="file" name="avatar">
                                    <button class="mdui-btn mdui-btn-dense mdui-color-blue mdui-float-right mdui-m-a-2">
                                        保存
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <br>
                    <div class="mdui-divider"></div>
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