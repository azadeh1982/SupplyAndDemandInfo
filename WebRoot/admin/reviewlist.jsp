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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>都市信息网-后台管理</title>

    <link type="text/css" rel="stylesheet" href="css/style.css">
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
                    <!--<base href="http://localhost:8080/01/"> -->
                    <link type="text/css" rel="stylesheet" href="css/style.css">
                </head>
                <body>
                <center>
                    <table border="0" cellpadding="0" cellspacing="0" width="688" height="100%">
                        <tr height="20">
                            <td><img src="images/default_t.jpg"></td>
                        </tr>
                        <tr>
                            <td background="images/default_m.jpg" valign="top">


                                <html>
                                <head>
                                    <title>后台-查看信息列表</title>
                                    <script type="text/javascript" src="js/DeleteCheck.js"></script>
                                </head>
                                <body>
                                <center>
                                    <table border="0" width="650" cellspacing="0" cellpadding="0">


                                        <tr height="30">
                                            <td style="text-indent:8">审核[招聘信息]</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center" style="border:1 solid">
                                                <table border="0" width="100%" cellspacing="0" cellpadding="0">
                                                    <tr align="center" height="30" bgcolor="#F0F0F0">
                                                        <td width="7%"><b>序号</b></td>
                                                        <td width="8%"><b>信息ID</b></td>
                                                        <td width="35%"><b>信息标题</b></td>
                                                        <td width="20%"><b>发布时间</b></td>
                                                        <td width="8%"><b>付费</b></td>
                                                        <td width="8%"><b>审核</b></td>
                                                        <td width="14%" colspan="2"><b>操作</b></td>
                                                    </tr>
                                                    <c:if test="${requestScope.msg!=null }">${requestScope.msg }</c:if>
                                                    <c:forEach var="s" items="${requestScope.infos }" varStatus="vs">
                                                     <tr height="30">
                                                        <c:if test="${s!=null }">
                                                        <td align="center"><b>${vs.count}</b></td>
                                                        <td style="text-indent:10">${s.id }</td>
                                                        <td style="text-indent:5"><a href="reviewinfo.jsp">${s.infoTitle }</a></td>
                                                        <td align="center">${s.infoDate }</td>
                                                        <td align="center">${s.infoPayfor==1?"是":"否" }</td>
                                                        <td align="center"><b><font color="blue">${s.infoState==1?"是":"否" }</font></b></td>
                                                        <td align="center"><a href="admin_CheckShow.action?checkID=${s.id }">√审核</a>
                                                        </td>
                                                        <td align="center"><a href="admin_Delete.action?deleteID=${s.id }"
                                                                              onClick="return really()">×删除</a></td>
                                                        </c:if>
                                                    </tr>
                                                    </c:forEach>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr height="8">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">


                                                <html>
                                                <head><title>分页导航栏</title></head>
                                                <body>
                                                <table border="0" width="100%" cellspacing="0">
                                                    <tr>
                                                        <td width="60%"></td>
                                                        <td align="center" width="40%"></td>
                                                    </tr>
                                                </table>
                                                </body>
                                                </html>
                                            </td>
                                        </tr>

                                    </table>
                                </center>
                                </body>
                                </html>
                            </td>
                        </tr>
                        <tr height="26">
                            <td><img src="images/default_e.jpg"></td>
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