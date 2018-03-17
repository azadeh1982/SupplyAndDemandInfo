<%--
  Created by IntelliJ IDEA.
  User: miracle
  Date: 2018/3/17
  Time: 上午10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head><title>后台-侧栏</title></head>
<body background="../images/back.gif">
<center>
    <table border="0" width="220" height="100%" cellspacing="0" cellpadding="0" style="margin-top:7">
        <!-- 显示方式 -->
        <tr height="30" bgcolor="#F0F0F0">
            <td style="text-indent:5;border:1 solid"><font color="#004790"><b>■显示方式</b></font></td>
        </tr>
        <tr height="1">
            <td></td>
        </tr>

        <form id="admin_ListShow_action?" name="admin_ListShow.action?" onSubmit="return true;"
              action="reviewlist.jsp" method="post">
            <tr>
                <td align="center" valign="top" style="border:1 solid">
                    <table border="0" width="220" height="150" rules="all" cellspacing="0">
                        <tr>
                            <td align="center" colspan="2">
                                <fieldset style="height:60;width:210">
                                    <legend>★付费状态</legend>
                                    <br>
                                    <input type="radio" name="payforType"
                                           id="admin_ListShow_action?_showType_payforType0"
                                           value="0"/><label
                                        for="admin_ListShow_action?_showType_payforType0">未付费</label>
                                    <input type="radio" name="payforType"
                                           id="admin_ListShow_action?_showType_payforType1"
                                           value="1"/><label
                                        for="admin_ListShow_action?_showType_payforType1">已付费</label>
                                    <input type="radio" name="payforType"
                                           id="admin_ListShow_action?_showType_payforTypeall" value="-1"
                                           checked/><label
                                        for="admin_ListShow_action?_showType_payforTypeall">全部</label>

                                </fieldset>
                                <fieldset style="height:60;width:210">
                                    <legend>★审核状态</legend>
                                    <br>
                                    <input type="radio" name="stateType"
                                           id="admin_ListShow_action?_showType_stateType0"
                                           value="0"/><label
                                        for="admin_ListShow_action?_showType_stateType0">未审核</label>
                                    <input type="radio" name="stateType"
                                           id="admin_ListShow_action?_showType_stateType1"
                                           value="1"/><label
                                        for="admin_ListShow_action?_showType_stateType1">已审核</label>
                                    <input type="radio" name="stateType"
                                           id="admin_ListShow_action?_showType_stateTypeall" value="-1"
                                           checked/><label
                                        for="admin_ListShow_action?_showType_stateTypeall">全部</label>

                                </fieldset>
                            </td>
                        </tr>
                        <tr align="center" height="30" bgcolor="lightgrey">
                            <td>
                                信息类别：
                                <select name="showType.infoType"
                                        id="admin_ListShow_action?_showType_infoType">
                                    <option value="0">全部</option>
                                    <option value="1">招聘信息</option>
                                    <option value="2">培训信息</option>
                                    <option value="3">房屋信息</option>
                                    <option value="4">求购信息</option>
                                    <option value="5">招商引资</option>
                                    <option value="6">公寓信息</option>
                                    <option value="7">求职信息</option>
                                    <option value="8">家教信息</option>
                                    <option value="9">车辆信息</option>
                                    <option value="10">出售信息</option>
                                    <option value="11">寻找启示</option>


                                </select>
                                <input type="submit" id="admin_ListShow_action?_0" value="显示"/>

                            </td>
                        </tr>

                    </table>
                </td>
            </tr>
        </form>


        <tr height="5">
            <td></td>
        </tr>
        <!-- 设置已付费信息 -->
        <tr height="30" bgcolor="#F0F0F0">
            <td style="text-indent:5" style="border:1 solid"><font color="#004790"><b>■付费设置</b></font>
            </td>
        </tr>
        <tr height="1">
            <td></td>
        </tr>
        <form action="payinfo.jsp">
            <tr>
                <td align="center" valign="top" style="border:1 solid">
                    <table border="0" width="220" height="80" cellspacing="0" rules="none">
                        <tr height="25">
                            <td align="center" valign="bottom">请输入要设为已付费状态的信息ID：</td>
                        </tr>
                        <tr height="40">
                            <td align="center">
                                <input type="text" name="moneyID" value="" size="24"/>
                                <input type="submit" value="查询"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </form>
        <tr height="5">
            <td></td>
        </tr>
        <tr height="30" bgcolor="#F0F0F0">
            <td style="text-indent:5;border:1 solid"><font color="#004790"><b>■日历</b></font></td>
        </tr>
        <tr height="1">
            <td></td>
        </tr>
        <!-- 日历 -->
        <tr height="130">
            <td valign="top" style="border:1 solid">


                <html>
                <head>
                    <title>简易万年历</title>
                    <link type="text/css" rel="stylesheet" href="../css/style.css">
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
    </table>
</center>
</body>
</html>
