<%--
  Created by IntelliJ IDEA.
  User: haigeek
  Date: 2017/7/12
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet"
          href="http://cdnjs.cloudflare.com/ajax/libs/mdui/0.2.1/css/mdui.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/story.css">
    <link rel="icon" href="upload/favicon.ico" type="image/x-icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>关于winestory</title>
</head>
<body class="mdui-appbar-with-toolbar mdui-bottom-nav-fixed">
<header>
    <%@include file="bootstrapTop.jsp" %>
</header>


<br>
<main>
    <div class="mdui-container-fluid">
        <div class="mdui-class">
            <div class="mdui-row">
                <div class="mdui-col-xs-12 mdui-col-sm-2"></div>
                <div class="mdui-col-xs-12 mdui-col-sm-7">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="mdui-card-content">
                                <h4 id="什么是winestory"><b>什么是winestory</b></h4>
                                <image height="200px" width="200px" src="http://wx4.sinaimg.cn/mw690/d1843df9gy1fhx7tu8lxbj20e80e8t93.jpg"></image>
                                <p>winestory是一个有温度的故事社区，取名为winestory，wine为酒，而发音为温，也有一番我有故事，你有酒吗的味道。</p>

                                <h4 id="这里可以做什么"><b>这里可以做什么</b></h4>

                                <ul>
                                    <li>
                                        winestory的用户可能没有很多，希望这个是稍微重量级的朋友圈，我们总有那么一个瞬间希望写出心里的话，可以写给自己，同样可以在这里分享好玩的有意义的东西。
                                    </li>
                                    <li>推荐音乐，电影，好玩的东西，玩物，或者吐槽发泄，做什么都可以。</li>
                                    <li>在这里，我们可以认真分享故事，不服责任的吐槽，发现新的世界，结交新的朋友。</li>
                                </ul>


                                <h4 id="目前的功能"><b>目前的功能</b></h4>

                                <p>目前社区十分简陋，前后台由我一个半吊子选手负责开发建设，已经实现的基本功能有：</p>

                                <ul>
                                    <li>登录注册</li>
                                    <li>发帖（使用markdown编辑器）</li>
                                    <li>评论</li>
                                    <li>设置个人资料</li>
                                    <li>适配移动端</li>
                                    <li>其他功能会在闲暇时间开发完善</li>
                                </ul>

                                <h4 id="愿景"><b>愿景</b></h4>

                                <p>这个网站可能不会做大，但我希望用技术来记录我和我的朋友的生活。网站构造会改变，但是内容希望能一直保留。</p>

                                <h4 id="反馈建议和idea"><b>反馈、建议和idea</b></h4>

                                <p>如果你在使用过程中遇到什么问题，或者你有更好的建议和新奇的idea，欢迎<a href="/winestory/story_show.action?story_id=1">在这里</a>提交反馈，如果觉得不错，也欢迎留言给我，你们的支持是我努力下去的最大动力。</p>
                                <h4 id=""><b>致谢</b></h4>

                                <p>很多时候我们都是站在巨人的肩膀上，在winestory开发中，有很多需要感谢的地方</p>

                                <ul>
                                    <li>网站前台样式，基于<a href="http://v3.bootcss.com/" target="_blank">Bootstrap</a>和<a href="https://www.mdui.org/" target="_blank">MDUI</a></li>
                                    <li><a href="https://github.com/laobubu/MarkdownIME" target="_blank">MarkdownIME</a>markdown编辑器,很geek</li>
                                    <li>最喜欢的论坛<a href="https://www.v2ex.com" target="_blank">V2EX</a>的部分设计</li>
                                    <li>部分样式借鉴了好友<a href="http://www.xtlog.com/" target="_blank">xt</a>的<a href="http://120.24.92.198:8080/rant/home.action" target="_blank">Rant</a>的样式，也是在他的建议下坚持开发</li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="mdui-col-xs-12 mdui-col-sm-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            winestory是一个有温度的故事社区
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</main>
<%@include file="footer.jsp" %>
</body>
</div>

</html>
