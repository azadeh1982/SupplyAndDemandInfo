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
                    <!--<base href="http://localhost:8080/01/"> -->
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
                                <head>
                                    <title>后台-审核信息</title>
                                    <!--<base href="http://localhost:8080/01/">-->
                                    <script type="text/javascript" src="../js/DeleteCheck.js"></script>
                                </head>
                                <body>
                                <center>
                                    <br>

                                    <form id="admin_CheckShow" name="admin_CheckShow" onSubmit="return true;"
                                          action="/01/admin_CheckShow.action" method="post">
                                        <input type="hidden" name="checkID" value="135">
                                        <input type="hidden" name="deleteID" value="135">
                                        <table border="0" width="645" cellpadding="10" cellspacing="0"
                                               style="word-break:break-all">
                                            <tr height="30">
                                                <td style="text-indent:5"><b>审核信息 [ID值：135]</b></td>
                                                <td colspan="2" align="right"></td>
                                            </tr>
                                            <tr height="30" bgcolor="#F9F9F9">
                                                <td colspan="3" align="center" style="text-indent:5">信息详细内容</td>
                                            </tr>
                                            <tr height="30">
                                                <td width="25%" style="text-indent:10">信息类别：</td>
                                                <td>【招聘信息】</td>
                                                <td>付费状态：&nbsp;&nbsp;★ 已付费</td>
                                            </tr>
                                            <tr height="30">
                                                <td style="text-indent:10">发布时间：</td>
                                                <td>2015-06-01 14:19:28</td>
                                                <td>审核状态：&nbsp;&nbsp;● 未审核</td>
                                            </tr>
                                            <tr height="30">
                                                <td style="text-indent:10">信息标题：</td>
                                                <td colspan="2">测试</td>
                                            </tr>
                                            <tr height="40" bgcolor="#F9F9F9">
                                                <td style="text-indent:10">信息内容：</td>
                                                <td align="center">


                                                    <input type="submit" id="admin_CheckShow_admin_Check"
                                                           name="action:admin_Check" value="√通过审核"/>

                                                </td>
                                                <td align="center"><input type="submit"
                                                                          id="admin_CheckShow_admin_Delete"
                                                                          name="action:admin_Delete" value="&#xD7;删除信息"
                                                                          onClick="return really()"/>
                                                </td>
                                            </tr>
                                            <tr height="5">
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="border:1 solid">
                                                    <table border="0" width="630" cellspacing="0" cellpadding="10"
                                                           style="word-break:break-all">
                                                        <tr height="130">
                                                            <td colspan="3" valign="top">123</td>
                                                        </tr>
                                                        <tr height="30" align="center">
                                                            <td>联系电话：15802765152</td>
                                                            <td>联系人：1</td>
                                                            <td>E-mial：56337133@qq.com</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="3"><a
                                                        href="javascript:window.history.back(-1)">返回</a></td>
                                            </tr>
                                        </table>
                                    </form>


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