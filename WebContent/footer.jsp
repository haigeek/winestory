<%--
  Created by IntelliJ IDEA.
  User: haigeek
  Date: 2017/7/12
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page   pageEncoding="utf-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<style>
    .footer {
        padding-top: 30px;
        padding-bottom: 30px;
        background: #1f1915;
        color: hsla(0, 0%, 100%, .75);
        font-weight: 100;
        text-align: center;
        position:absolute;bottom:0;width:100%;height:100px;;
    }
    html{height:100%;}
    body{min-height:100%;margin:0;padding:0;position:relative;}
    main{padding-bottom:100px;}/* main的padding-bottom值要等于或大于footer的height值 */
    /*footer{position:absolute;bottom:0;width:100%;height:100px;background-color: #ffc0cb;}*/
</style>
<div class="footer">
    <div class="mdui-row">
        <div class="mdui-container">
            <div class="mdui-col-xs-12 mdui-col-sm-6">
                <p>WineStory 一个温暖的故事社区</p>
            </div>
            <div class="mdui-col-xs-12 mdui-col-sm-3">
                <%--<P>友情链接：</P>--%>
            </div>
            <div class="mdui-col-xs-12 mdui-col-sm-1">
                <%--<p>联系我们</p>--%>
            </div>
        </div>
    </div>

    <%--<P>power by haigeek</P>--%>
</div>


