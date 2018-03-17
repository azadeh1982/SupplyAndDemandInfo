<%--
  Created by IntelliJ IDEA.
  User: miracle
  Date: 2018/3/17
  Time: 上午9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <title>都市信息网-后台管理</title>

    <link type="text/css" rel="stylesheet" href="../css/style.css">
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
</head>
<body>
<center>
    <table border="0" width="920" cellspacing="0" bgcolor="white">
        <tr>
            <td colspan="2">
                <%@include file="top.jsp"%>
            </td>
        </tr>
        <tr height="10" bgcolor="lightgrey">
            <td colspan="2"></td>
        </tr>
        <tr>
            <td width="700" align="center" valign="top">
                <html>
                <head>
                    <title>后台首页</title>
                    <!--<base href="http://localhost:8080/01/">-->
                    <link type="text/css" rel="stylesheet" href="../css/style.css">
                </head>
                <body>
                <center>
                    <table border="0" cellpadding="0" cellspacing="0" width="688" height="100%">
                        <tr height="20">
                            <td><img src="../images/default_t.jpg"></td>
                        </tr>
                        <tr>
                            <td background="../images/default_m.jpg" valign="top">


                                <html>
                                <head><title>后台首页</title></head>
                                <body>
                                <center>
                                    <table border="0" cellpadding="0" cellspacing="0" width="650" height="300">
                                        <tr>
                                            <td align="center">欢迎登录 都市供求信息网后台！</td>
                                        </tr>
                                    </table>
                                </center>
                                </body>
                                </html>
                            </td>
                        </tr>
                        <tr height="26">
                            <td><img src="../images/default_e.jpg"></td>
                        </tr>
                    </table>
                </center>
                </body>
                </html>
            </td>
            <td width="200" align="center" valign="top">
                <%@include file="right.jsp"%>
            </td>
        </tr>
        <tr height="7" bgcolor="lightgrey">
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2">
                <%@include file="footer.jsp"%>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
