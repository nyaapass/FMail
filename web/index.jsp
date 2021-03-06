<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import="bean.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>邮件系统 - 收件箱</title>
    <link rel="stylesheet" href="css/mdui.min.css">
    <link rel="stylesheet" href="css/mail.css">
    <link rel="icon" type="image/png" href="icons/mail_favicon.png">
</head>

<body class="mdui-appbar-with-toolbar mdui-theme-primary-blue mdui-theme-accent-pink">

    <header class="mdui-appbar mdui-appbar-fixed">
        <div class="mdui-toolbar mdui-color-theme">
            <span class="mdui-btn mdui-btn-icon mdui-ripple mdui-ripple-white" mdui-drawer="{target: '#drawer'}">
                <i class="mdui-icon material-icons">&#xe5d2;</i>
            </span>
            <span class="mdui-typo-title">收件箱</span>
        </div>
    </header>

    <div class="mdui-drawer mdui-drawer-close" id="drawer">
        <ul class="mdui-list">
            <li class="mdui-subheader">邮件管理</li>
            <a href="index.jsp" class="mdui-list-item mdui-ripple">
                <i class="mdui-list-item-icon mdui-icon material-icons">&#xe156;</i>
                <div class="mdui-list-item-content">收件箱</div>
            </a>
            <a href="newmail.html" class="mdui-list-item mdui-ripple">
                <i class="mdui-list-item-icon mdui-icon material-icons">&#xe0e1;</i>
                <div class="mdui-list-item-content">写邮件</div>
            </a>
            <a href="sent.html" class="mdui-list-item mdui-ripple">
                <i class="mdui-list-item-icon mdui-icon material-icons">&#xe163;</i>
                <div class="mdui-list-item-content">已发邮件</div>
            </a>
            <li class="mdui-subheader">用户管理</li>
            <a href="passwd.html" class="mdui-list-item mdui-ripple">
                <i class="mdui-list-item-icon mdui-icon material-icons">&#xe32a;</i>
                <div class="mdui-list-item-content">修改密码</div>
            </a>
            <a href="login.jsp" class="mdui-list-item mdui-ripple">
                <i class="mdui-list-item-icon mdui-icon material-icons">&#xe879;</i>
                <div class="mdui-list-item-content">退出用户</div>
            </a>
        </ul>
    </div>

    <div class="mdui-container mail-container mdui-col-md-8 mdui-col-offset-md-2 mdui-col-lg-8 mdui-col-offset-lg-2">
        <div class="mdui-panel mdui-panel-popout" mdui-panel="{accordion: true}">
            <div class="mdui-panel-item">
                <div class="mdui-panel-item-header mail-header">
                    <div class="mdui-panel-item-title mdui-col-offset-sm-1">张三</div>
                    <div class="mdui-panel-item-summary">求职邮件</div>
                    <div class="mdui-panel-item-summary text-right">5月31日</div>
                    <i class="mdui-panel-item-arrow mdui-icon material-icons">&#xe313;</i>
                </div>
                <div class="mdui-panel-item-body mdui-typo mail-details">
                    <!-- <h1>求职邮件</h1>
                    <div class="mdui-divider mail-divider"></div>
                    <p>您好。</p>
                    <p>我是xx大学xx专业的本科生，2018年6月毕业。看到贵公司正招聘实习生，并一直期望有机会加盟贵公司。</p>
                    <p>我性格开朗，具备IT人士所必需的适应高强度的工作压力的能力。现将我的简历一并附上，希望你能考虑我的应聘要求。</p>
                    <p>最后，不管您是否选择我都请您接受我​最诚挚的谢意。</p>
                    <p>谨祝贵公司越办越好!</p> -->
                </div>
            </div>
        </div>
    </div>

    <button class="mdui-fab mdui-color-theme-accent mdui-ripple mdui-fab-fixed newmail-btn" mdui-tooltip="{content: '写邮件', position: 'left'}">
        <i class="mdui-icon material-icons">&#xe145;</i>
    </button>

    <script src="js/mdui.min.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/index-and-sent.js"></script>
</body>

</html>
