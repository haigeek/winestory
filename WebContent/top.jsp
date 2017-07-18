<%@page pageEncoding="UTF-8"%>
<div class="mdui-row">
    <div class="mdui-col-xs-12">
            <div class="mdui-appbar mdui-shadow-0 mdui-appbar-fixed mdui-color-black">
                <div class="mdui-container">
                    <div class="mdui-toolbar mdui-color-theme">
                        
                        <a href="${pageContext.request.contextPath }/story_indexlist.action"><span class="mdui-typo-title mdui-color-black" >winestory</span></a>
                        <div class="mdui-toolbar-spacer"></div>
                        <!-- 已登录 -->
                         <c:if test="${sessionScope.user.username != null}">
                       
                        <a  href="${pageContext.request.contextPath }/user_usershow.action?uid=${user.uid}" >${sessionScope.user.username } </a>
                        <%--<a href="" class="mdui-btn mdui-ripple mdui-ripple-white">退出</a>--%>
                         <a href="${pageContext.request.contextPath }/story_toAddPage.action" >发布</a>
                        </c:if>
                        <c:if test="${sessionScope.user.username == null}">
                        <a href="login.jsp" class="mdui-btn mdui-ripple mdui-ripple-white">登录/注册</a>
                         </c:if>
                       

                    </div>
                </div>
            </div>
        </div>
    </div>