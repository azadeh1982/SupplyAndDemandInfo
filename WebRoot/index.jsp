<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<html>
<head>
    <title>都市信息网</title>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
</head>
<body background="images/back.gif">
<center>
    <table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white">
        <tr>
            <td colspan="2">


                <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                    <title>页眉</title>
                </head>
                <body>
                <center>
                    <table border="0" width="100%" cellspacing="0" cellpadding="0">
                        <!-- 顶部菜单 -->
                        <tr height="20">
                            <td style="text-indent:10" valign="bottom">
                                <a href="publish.jsp" style="color:gray">[发布信息]</a>
                                <a href="admin/login.html" style="color:gray">[进入后台]</a>
                            </td>
                            <td align="right" valign="bottom">
                                <a href="#" style="color:gray"
                                   onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://localhost:8080/CityInfo');">设为主页
                                    -</a>
                                <a href="javascript:window.external.AddFavorite('http://localhost:8080/CityInfo','都市供求信息网')"
                                   style="color:gray">收藏本页 -</a>
                                <a href="mailto:123@***.com.cn" style="color:gray">联系我们</a>
                                &nbsp;
                            </td>
                        </tr>
                        <!-- 导航菜单 -->
                        <tr height="56">
                            <td align="center" width="220" background="images/logo.gif"></td>
                            <td align="right" background="images/menu.gif">


                                <table border="0" width="600">
                                    <tr align="center">
                                        <td width="100"><a href="goindex.action" style="color:white">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></font>
                                        </td>

                                        <td width="100"><a href="招聘信息.html" style="color:white">招聘信息</a></td>


                                        <td width="100"><a href="培训信息.html" style="color:white">培训信息</a></td>


                                        <td width="100"><a href="info_ListShow.action?infoType=3" style="color:white">房屋信息</a>
                                        </td>


                                        <td width="100"><a href="info_ListShow.action?infoType=4" style="color:white">求购信息</a>
                                        </td>


                                        <td width="100"><a href="info_ListShow.action?infoType=5" style="color:white">招商引资</a>
                                        </td>
                                    </tr>
                                    <tr align="center">

                                        <td width="100"><a href="info_ListShow.action?infoType=6" style="color:white">公寓信息</a>
                                        </td>


                                        <td width="100"><a href="info_ListShow.action?infoType=7" style="color:white">求职信息</a>
                                        </td>


                                        <td width="100"><a href="info_ListShow.action?infoType=8" style="color:white">家教信息</a>
                                        </td>


                                        <td width="100"><a href="info_ListShow.action?infoType=9" style="color:white">车辆信息</a>
                                        </td>


                                        <td width="100"><a href="info_ListShow.action?infoType=10" style="color:white">出售信息</a>
                                        </td>


                                        <td width="100"><a href="info_ListShow.action?infoType=11" style="color:white">寻找启示</a>
                                        </td>


                                    </tr>
                                </table>

                            </td>
                        </tr>
                    </table>
                    <table border="0" width="100%" height="90" cellspacing="0" cellpadding="0" style="margin-top:1">
                        <tr>
                            <td align="center"><img src="images/pcard1.jpg"></td>
                        </tr>
                    </table>
                </center>
                </body>
                </html>
            </td>
        </tr>
        <tr>
            <td width="230" valign="top" align="center">


                <html>
                <head>
                    <title>侧栏</title>
                </head>
                <body>
                <center>
                    <table border="0" width="225" height="100%" cellspacing="0" cellpadding="0">
                        <tr height="30">
                            <td style="text-indent:5" valign="bottom"><font color="#004790"><b>■日历</b></font></td>
                        </tr>
                        <tr height="1">
                            <td></td>
                        </tr>
                        <tr height="215">
                            <td valign="top" background="images/leftD.jpg">


                                <html>
                                <head>
                                    <title>简易万年历</title>
                                    <link type="text/css" rel="stylesheet" href="css/style.css">
                                    <script type="text/javascript">
                                        function showTime(showWhere) {
                                            var now = new Date();
                                            var hour = now.getHours();
                                            var minu = now.getMinutes();
                                            var sec = now.getSeconds();

                                            if (hour < 10) hour = "0" + hour;
                                            if (minu < 10) minu = "0" + minu;
                                            if (sec < 10) sec = "0" + sec;

                                            showWhere.value = hour + ":" + minu + ":" + sec;
                                            setTimeout("showTime(time)", 1000)
                                        }
                                    </script>
                                </head>
                                <body onload="showTime(time)">
                                <table width="210" border="0" align="center" cellspacing="1">
                                    <tr height="25">
                                        <td colspan="7" align="center" style="border:0 solid">2015年6月2日 星期二 <input
                                                type="text" style="border:0;background-color:#F9F9F9" disable="true"
                                                id="time" size="9"></td>
                                    </tr>
                                    <tr height="25" bgcolor="#F0F0F0" align="center">
                                        <td style="border:1 solid">日</td>
                                        <td style="border:1 solid">一</td>
                                        <td style="border:1 solid">二</td>
                                        <td style="border:1 solid">三</td>
                                        <td style="border:1 solid">四</td>
                                        <td style="border:1 solid">五</td>
                                        <td style="border:1 solid">六</td>
                                    </tr>
                                    <tr height="4">
                                        <td colspan="7"></td>
                                    </tr>

                                    <tr>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid">1</td>

                                        <td width="30" height="23" align="center" bgcolor="gray" style="border:1 solid">
                                            <font color="#FFFFFF"><b>2</b></font></td>

                                        <td width="30" height="23" align="center" style="border:1 solid">3</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">4</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">5</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">6</td>

                                    </tr>

                                    <tr>

                                        <td width="30" height="23" align="center" style="border:1 solid">7</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">8</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">9</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">10</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">11</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">12</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">13</td>

                                    </tr>

                                    <tr>

                                        <td width="30" height="23" align="center" style="border:1 solid">14</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">15</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">16</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">17</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">18</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">19</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">20</td>

                                    </tr>

                                    <tr>

                                        <td width="30" height="23" align="center" style="border:1 solid">21</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">22</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">23</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">24</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">25</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">26</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">27</td>

                                    </tr>

                                    <tr>

                                        <td width="30" height="23" align="center" style="border:1 solid">28</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">29</td>

                                        <td width="30" height="23" align="center" style="border:1 solid">30</td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                    </tr>

                                    <tr>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                        <td width="30" height="23" align="center" style="border:1 solid"></td>

                                    </tr>

                                    <tr height="10">
                                        <td colspan="7"></td>
                                    </tr>
                                </table>
                                </body>
                                </html>
                            </td>
                        </tr>
                        <tr height="1">
                            <td></td>
                        </tr>
                        <tr height="30">
                            <td style="text-indent:5" valign="bottom"><font color="#004790"><b>■信息快速搜索</b></font></td>
                        </tr>
                        <tr height="1">
                            <td></td>
                        </tr>
                        <tr height="103">
                            <td align="center" valign="top" background="images/leftS.jpg">
                                <table border="0" width="99%" height="100%" cellspacing="0">

                                    <form id="info_SearchShow_action" name="info_SearchShow.action"
                                          onSubmit="return true;" action="/01/info_SearchShow.action" method="post">
                                        <tr height="10">
                                            <td colspan="3"></td>
                                        </tr>
                                        <tr>
                                            <td align="right" width="70">关键字：</td>
                                            <td colspan="2" width="200"><input type="text" name="searchInfo.sqlvalue"
                                                                               size="21" value=""
                                                                               id="info_SearchShow_action_searchInfo_sqlvalue"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">条&nbsp;&nbsp;件：</td>
                                            <td>
                                                <select name="searchInfo.subsql"
                                                        id="info_SearchShow_action_searchInfo_subsql">
                                                    <option value=""></option>
                                                    <option value="info_email">E-mail地址</option>
                                                    <option value="id">ID值</option>
                                                    <option value="info_content">信息内容</option>
                                                    <option value="info_title">信息标题</option>
                                                    <option value="info_linkman">联系人</option>
                                                    <option value="info_phone">联系电话</option>


                                                </select>
                                            </td>
                                            <td align="center" width="30"><input type="submit"
                                                                                 id="info_SearchShow_action_0"
                                                                                 value="搜索"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">搜索类型：</td>
                                            <td colspan="2">
                                                <input type="radio" name="searchInfo.type"
                                                       id="info_SearchShow_action_searchInfo_typeall"
                                                       value="all"/><label
                                                    for="info_SearchShow_action_searchInfo_typeall">全字匹配</label>
                                                <input type="radio" name="searchInfo.type"
                                                       id="info_SearchShow_action_searchInfo_typelike" checked="checked"
                                                       value="like"/><label
                                                    for="info_SearchShow_action_searchInfo_typelike">模糊搜索</label>

                                            </td>
                                        </tr>
                                        <tr height="10">
                                            <td colspan="3"></td>
                                        </tr>
                                    </form>


                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </center>
                </body>
                </html>
            </td>
            <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">


                <html>
                <head><title>首页</title></head>
                <body>
                <center>
                    <!-- 缴费专区 -->

                    <table border="0" width="670" cellspacing="0" cellpadding="5">
                        <tr height="35">
                            <td style="text-indent:5" valign="bottom"><font color="#004790"><b>■推荐信息</b>『缴费专区』</font>
                            </td>
                        </tr>
                        <tr bgcolor="#FAFCF5">
                            <td style="border:1 solid">
                                <table border="0" width="100%" cellspacing="0" cellpadding="0">


                                    <tr height="23">
                                        <td width="50%">『<b>寻找启示</b>』<a href="info_SingleShow.action?id=121">寻找启示标题</a>
                                        </td>


                                        <td width="50%">『<b>出售信息</b>』<a href="info_SingleShow.action?id=120">出售信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="23">
                                        <td width="50%">『<b>车辆信息</b>』<a href="info_SingleShow.action?id=119">车辆信息标题</a>
                                        </td>


                                        <td width="50%">『<b>家教信息</b>』<a href="info_SingleShow.action?id=118">家教信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="23">
                                        <td width="50%">『<b>求职信息</b>』<a href="info_SingleShow.action?id=117">求职信息标题</a>
                                        </td>


                                        <td width="50%">『<b>公寓信息</b>』<a href="info_SingleShow.action?id=116">公寓信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="23">
                                        <td width="50%">『<b>招商引资</b>』<a href="info_SingleShow.action?id=115">招商引资标题</a>
                                        </td>


                                        <td width="50%">『<b>求购信息</b>』<a href="info_SingleShow.action?id=114">求购信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="23">
                                        <td width="50%">『<b>房屋信息</b>』<a href="info_SingleShow.action?id=113">房屋信息标题</a>
                                        </td>


                                        <td width="50%">『<b>培训信息</b>』<a href="info_SingleShow.action?id=112">培训信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="23">
                                        <td width="50%">『<b>招聘信息</b>』<a href="info_SingleShow.action?id=111">招聘信息标题</a>
                                        </td>


                                </table>
                            </td>
                        </tr>
                    </table>
                    <!-- 广告 -->
                    <table border="0" width="670" cellspacing="0" cellpadding="0" style="margin-top:1">
                        <tr>
                            <td align="center"><img src="images/pcard2.jpg"></td>
                        </tr>
                    </table>
                    <!-- 免费专区 -->

                    <table border="0" width="670" cellspacing="2" cellpadding="0">
                        <tr height="35">
                            <td colspan="2" style="text-indent:5" valign="bottom"><font color="#004790"><b>■最新信息</b>『免费专区』</font>
                            </td>
                        </tr>


                        <tr>
                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲招聘信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=134">发布招聘信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=1">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>


                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲培训信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=123">发布培训信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=2">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲房屋信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=124">发布屋信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=3">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>


                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲求购信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=125">发布求购信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=4">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲招商引资</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=126">发布招商引资标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=5">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>


                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲公寓信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=127">发布公寓信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=6">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲求职信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=128">发布求职信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=7">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>


                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲家教信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=130">发布家教信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=8">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲车辆信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=131">发布车辆信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=9">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>


                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲出售信息</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=132">发布出售信息标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=10">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none"
                                       bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">


                                    <tr bgcolor="#00B48F" height="30">
                                        <td style="text-indent:10"><b><font color="white">▲寻找启示</font></b></td>
                                    </tr>

                                    <tr bgcolor="#FAFCF5">
                                        <td style="text-indent:3">★ <a href="info_SingleShow.action?id=133">发布寻找启示标题</a>
                                        </td>
                                    </tr>

                                    <tr height="20" bgcolor="#FAFCF5">
                                        <td align="right"><a href="info_ListShow.action?infoType=11">更多...</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>


                                </table>
                            </td>


                    </table>
                    <br>
                </center>
                </body>
                </html>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <html>
                <head>
                    <title>页尾</title>
                </head>
                <body>
                <center>
                    <table border="0" width="100%" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center"><img src="images/end.jpg"></td>
                        </tr>
                    </table>
                </center>
                </body>
                </html>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
