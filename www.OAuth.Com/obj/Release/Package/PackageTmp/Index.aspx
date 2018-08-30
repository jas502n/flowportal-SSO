<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="www.OAuth.Com.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎光临创维数字内部主页</title>
    <link href="CSS/css.css" rel="stylesheet" type="text/css" />
    <link href="CSS/lanrenzhijia.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script src="Scripts/jquery.KinSlideshow-1.1.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function () {
            $("#KinSlideshow").KinSlideshow({
                moveStyle: "down",
                intervalTime: 6,
                mouseEvent: "mouseclick",
                titleFont: { TitleFont_size: 12, TitleFont_color: "#FFFFFF" }
            });
        })
    </script>

</head>
<body>
    <form id="TheForm" runat="server">
        <div>
            <div style="width: 990px; height: 55px; position: relative; margin: 0 auto;">
                <div style="width: 268px; height: 38px; position: absolute; text-align: left; bottom: 1px; left: 0px;">
                    <img style="vertical-align: bottom; border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"
                        src="Images/Logo.png" />
                </div>

                <div style="position: absolute; text-align: right; bottom: 3px; right: 12px; float: right">

                    <div id="TopLoginWindows" runat="server">
                        <ul>
                            <li class="ICON">
                                <img src="Images/UserID.jpg" /></li>
                            <li>
                                <asp:TextBox ID="UserName" runat="server" CssClass="TextBox" ></asp:TextBox></li>

                            <li class="ICON">
                                <img src="Images/UserPwd.jpg" />
                            </li>

                            <li >
                                <asp:TextBox ID="UserPwd" runat="server" TextMode="Password" CssClass="TextBox"></asp:TextBox></li>

                            <li>
                                <asp:Button ID="BtnSubmit" runat="server" Text="BPM登录" CssClass="BtnBackBG" OnClick="BtnSubmit_Click" /></li>

                        </ul>

                    </div>

                    <div id="TopLoginAccount" runat="server" visible="false">
                         <div style="padding-bottom:10px; font-size:14px;"> 
                           欢迎 <asp:Literal ID="LiUserAccount" runat="server"></asp:Literal> ,统一认证成功！
                             <asp:Button ID="BtnLogOut" runat="server" Text="退出登录" OnClick="BtnLogOut_Click" CssClass="BtnBackBG" />
                            
                          </div>

                    </div>

                </div>

                <%-- 
           
            <div style="width: 150px; position: absolute; text-align: right; bottom: 3px; right: 12px; left: 828px;">
                <a onclick="var strHref=window.location.href;this.style.behavior='url(#default#homepage)';this.setHomePage(location.href);"
                    href="#">设为首页</font></a> | <a onclick="window.external.AddFavorite(location.href,document.title);"
                        href="#">加入收藏</a>
            </div>
            
                --%>
            </div>
            <div id="menu" style="width: 990px; position: inherit; margin: 0 auto;">
                <ul class="menu">
                    <li><a href="HomePage.aspx" class="parent"><span>首页</span></a></li>
                    <li><a href="ArticleList.aspx?ArticleType=通知公告" class="parent"><span>通知公告</span></a></li>
                    <li><a href="ArticleList.aspx?ArticleType=公司动态" class="parent"><span>公司动态</span></a></li>
                    <li><a href="ArticleList.aspx?ArticleType=员工天地" class="parent"><span>员工天地</span></a></li>
                    <li><a href="#"><span>常用信息</span></a>
                        <ul>
                            <li><a href="DocumentShow.aspx?ArticleType=常用表单" target="_self"><span>常用表单</span></a></li>
                            <li><a href="DocumentShow.aspx?ArticleType=制度文件" target="_self"><span>制度文件</span></a></li>
                            <%--<li><a href="#" target="_self" onclick="alert('正在建设中...');"><span>办事指南</span></a></li>--%>
                        </ul>
                    </li>
                    <li><a href="AddressBook.aspx" class="parent"><span>数字通讯录</span></a></li>
                    <%--<li class="last"><a href="#" class="parent" onclick="alert('正在建设中...');"><span>便民服务</span></a></li>--%>
                </ul>
            </div>

            <div id="Div1" style="width: 990px; height: 280px; position: relative; margin: 0 auto;">
                <div id="KinSlideshow" style="visibility: hidden;">
                    <asp:Repeater ID="RepeaterPic" runat="server">
                        <ItemTemplate>
                            <a href="<%#(string.IsNullOrEmpty(Eval("H_PageUrl").ToString())?"#": Eval("H_PageUrl").ToString())%>">
                                <img src="images/ImgHome/<%# Eval("H_PicUrl") %>" alt="<%# Eval("H_Title") %>"
                                    width="990" height="280" /></a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div style="position: relative; margin: 0 auto; width: 990px; height: 245px; border-bottom: 1px solid #e8e9eb; background: url(Images/title_bg.jpg) #f8f9fb top repeat-x;">
                <div style="width: 980px; line-height: 2em; padding: 0 5px; margin: 0 auto;">
                    <div style="width: 370px; float: left; height: 240px; padding-top: 7px; position: relative; line-height: 2em;">
                        <div style="height: 16px; line-height: 16px; font-weight: bold; color: #195A94; margin-left: 10px; padding: 0 0 0 10px; border-left: 4px solid #195A94;">
                            通知公告 <a style="position: absolute; text-align: right; right: 28px;" target="_self"
                                href="ArticleList.aspx?ArticleType=通知公告">更多...</a>
                        </div>
                        <div>
                            <asp:Repeater ID="RepeaterGG" runat="server">
                                <HeaderTemplate>
                                    <ul style="padding: 10px 2px;">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li style="padding-left: 10px; background: <%# Eval("IsNew").ToString()=="1" ? "url(Home/images/newgif.gif)": "url(Home/images/new_point.png)"%> left 12px no-repeat;">
                                        <span style="color: #48A682">
                                            <%# Eval("IsNew").ToString() == "1" ? "&nbsp;&nbsp;&nbsp;" + Eval("AddDate", "{0:yy-MM-dd}") : Eval("AddDate", "{0:yyyy-MM-dd}")%></span>&nbsp;<a
                                                href="ArticleShow.aspx?ArticleID=<%# Eval("ArticleID")%>" target="_blank" title="<%# Eval("ArticleTitle")%>">
                                                <%# Eval("ArticleTitle").ToString().Length > 23 ? Eval("ArticleTitle").ToString().Substring(0, 22) + "..." : Eval("ArticleTitle").ToString()%></a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div style="width: 370px; float: left; height: 240px; padding-top: 7px; position: relative; background: url(Images/line_bg.gif) left repeat-y;">
                        <div style="height: 16px; line-height: 16px; font-weight: bold; color: #195A94; margin-left: 10px; padding: 0 0 0 10px; border-left: 4px solid #195A94;">
                            公司动态 <a style="position: absolute; text-align: right; right: 28px;" target="_self"
                                href="ArticleList.aspx?ArticleType=公司动态">更多...</a>
                        </div>
                        <div>
                            <asp:Repeater ID="RepeaterGS" runat="server">
                                <HeaderTemplate>
                                    <ul style="padding: 10px 5px;">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li style="padding-left: 10px; background: <%# Eval("IsNew").ToString()=="1" ? "url(Home/images/newgif.gif)": "url(Home/images/new_point.png)"%> left 12px no-repeat;">
                                        <span style="color: #48A682">
                                            <%# Eval("IsNew").ToString() == "1" ? "&nbsp;&nbsp;&nbsp;" + Eval("AddDate", "{0:yy-MM-dd}") : Eval("AddDate", "{0:yyyy-MM-dd}")%></span>&nbsp;<a
                                                href="ArticleShow.aspx?ArticleID=<%# Eval("ArticleID")%>" target="_blank" title="<%# Eval("ArticleTitle")%>">
                                                <%# Eval("ArticleTitle").ToString().Length > 23 ? Eval("ArticleTitle").ToString().Substring(0, 22) + "..." : Eval("ArticleTitle").ToString()%></a>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div style="width: 238px; float: left; height: 240px; padding-top: 7px; position: relative; background: url(Home/Images/line_bg.gif) left repeat-y;">
                        <div style="height: 16px; line-height: 16px; font-weight: bold; color: #195A94; margin-left: 10px; padding: 0 0 0 10px; border-left: 4px solid #195A94;">
                            <asp:Label ID="LabLogTitle" runat="server" Text="系统链接"></asp:Label>
                        </div>
                        <div id="LoginWindows" runat="server" visible="false">
                            <table style="width: 230px; text-align: left;" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="height: 35px; width: 120px; vertical-align: bottom;">账号：
                                    </td>
                                    <td style="vertical-align: bottom;"></td>
                                </tr>
                                <tr>
                                    <td style="height: 35px; width: 120px; vertical-align: bottom;">密码：
                                    </td>
                                    <td style="vertical-align: bottom;"></td>
                                </tr>
                            </table>
                        </div>
                        <div style="padding-left: 12px;" id="LoginSucess" runat="server">
                            <table style="width: 230px; text-align: left;" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="height: 35px; width: 120px; vertical-align: bottom;">
                                        <a href="http://www.BPM.com/SSOLogin.aspx" target="_blank">BPM业务管理系统</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href="http://192.168.0.108/pm" target="_blank">EasyTrack系统</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; vertical-align: bottom;">
                                        <a href="http://oa.skyworth.com" target="_blank">集团OA系统</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href="http://192.168.8.206:8080 " target="_blank">Jira系统</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; vertical-align: bottom;">
                                        <a href="http://www.EHR.com/SSOLogin.aspx" target="_blank">E-HR管理系统</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href="http://192.168.0.245:8080/ppl" target="_blank">PPL系统</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; vertical-align: bottom;">
                                        <a href="http://192.168.0.96" target="_blank">档案资产管理系统</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href="http://192.168.8.201/cx" target="_blank">EDE查询</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; vertical-align: bottom;">
                                        <a href="http://192.168.8.201/crm" target="_blank">CRM销售管理系统</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href="http://192.168.0.119" target="_blank">研发wiki知识库</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; vertical-align: bottom;">
                                        <a href="http://192.168.8.201/sweb" target="_blank">用服系统</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href="http://192.168.0.119:8080" target="_blank">研发中心文库</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; vertical-align: bottom;">
                                        <a href="http://58.60.184.235/" target="_blank">SRM供应商管理</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href="http://192.168.0.252:8080" target="_blank">序列号管理系统</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; vertical-align: bottom;">
                                        <a href="http://172.28.0.17:8888/backoffice" target="_blank">竞价系统(一采通)</a>
                                    </td>
                                    <td style="vertical-align: bottom;">
                                        <a href=" http://192.168.35.2:8080" target="_blank">MES(查询系统)</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div style="position: relative; margin: 0 auto; width: 990px; height: 240px; border-bottom: 1px solid #e8e9eb; background: url(Images/title_bg.jpg) #f8f9fb top repeat-x;">
                <div style="width: 980px; line-height: 2em; padding: 0 5px; margin: 0 auto;">
                    <div style="width: 740px; float: left; height: 235px; padding-top: 7px; position: relative; line-height: 2em;">
                        <div style="height: 16px; line-height: 16px; font-weight: bold; color: #195A94; margin-left: 10px; padding: 0 0 0 10px; border-left: 4px solid #195A94;">
                            员工天地 <a style="position: absolute; text-align: right; left: 305px;" target="_self"
                                href="ArticleList.aspx?ArticleType=员工天地">更多...</a>
                        </div>
                        <div>
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td style="width: 370px" valign="top">
                                            <asp:Repeater ID="RepeaterGH" runat="server">
                                                <HeaderTemplate>
                                                    <ul style="padding: 5px 2px;">
                                                        <li style="font-weight: bold">【工会活动】</li>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <li style="padding-left: 10px; background: <%# Eval("IsNew").ToString()=="1" ? "url(Home/images/newgif.gif)": "url(Home/images/new_point.png)"%> left 12px no-repeat;">
                                                        <span style="color: #48A682">
                                                            <%# Eval("IsNew").ToString() == "1" ? "&nbsp;&nbsp;&nbsp;" + Eval("AddDate", "{0:yy-MM-dd}") : Eval("AddDate", "{0:yyyy-MM-dd}")%></span>&nbsp;<a
                                                                href="ArticleShow.aspx?ArticleID=<%# Eval("ArticleID")%>" target="_blank" title="<%# Eval("ArticleTitle")%>">
                                                                <%# Eval("ArticleTitle").ToString().Length > 23 ? Eval("ArticleTitle").ToString().Substring(0, 22) + "..." : Eval("ArticleTitle").ToString()%></a>
                                                    </li>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </td>
                                        <td valign="top">
                                            <asp:Repeater ID="RepeaterSun" runat="server">
                                                <HeaderTemplate>
                                                    <ul style="padding: 5px 5px;">
                                                        <li style="font-weight: bold">【Sunny小站】</li>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <li style="padding-left: 10px; background: <%# Eval("IsNew").ToString()=="1" ? "url(Home/images/newgif.gif)": "url(Home/images/new_point.png)"%> left 12px no-repeat;">
                                                        <span style="color: #48A682">
                                                            <%# Eval("IsNew").ToString() == "1" ? "&nbsp;&nbsp;&nbsp;" + Eval("AddDate", "{0:yy-MM-dd}") : Eval("AddDate", "{0:yyyy-MM-dd}")%></span>&nbsp;<a
                                                                href="ArticleShow.aspx?ArticleID=<%# Eval("ArticleID")%>" target="_blank" title="<%# Eval("ArticleTitle")%>">
                                                                <%# Eval("ArticleTitle").ToString().Length > 23 ? Eval("ArticleTitle").ToString().Substring(0, 22) + "..." : Eval("ArticleTitle").ToString()%></a>
                                                    </li>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </ul>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div style="width: 238px; float: left; height: 235px; padding-top: 7px; position: relative; background: url(Home/Images/line_bg.gif) left repeat-y;">
                        <div style="height: 16px; line-height: 16px; font-weight: bold; color: #195A94; margin-left: 10px; padding: 0 0 0 10px; border-left: 4px solid #195A94;">
                            其他资源
                        </div>
                        <div style="padding-left: 12px;">
                            <table style="width: 230px; text-align: left; font-size: 12px; color: #195a94;" border="0"
                                cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="height: 32px; vertical-align: bottom;">打印/扫描/软件共享：<a href="file://192.168.8.254" target="_blank">\\192.168.8.254</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 28px; vertical-align: bottom;">公共文件共享：<a href="file://192.168.8.210" target="_blank">\\192.168.8.210</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 28px; vertical-align: bottom;">研发文件服务：<a href="file://192.168.0.252" target="_blank">\\192.168.0.252</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 28px; vertical-align: bottom;">VSS服务：<a href="file://192.168.0.248" target="_blank">\\192.168.0.248</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 28px; vertical-align: bottom;">
                                        <a href="http://192.168.8.254/iisadmpwd" target="_search"><span>域密码修改（Digital）</span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 28px; vertical-align: bottom;">
                                        <a href="http://Mail.skyworth.com" target="_blank"><span>邮件密码修改</span></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div style="clear:both"></div>
            <div style="width: 990px; height: 60px; margin: 0 auto; vertical-align: bottom;">
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td width="10">&nbsp;
                            </td>
                            <td align="center" valign="bottom" height="30">
                                <a href="http://www.skyworth.com" target="_blank" style="color: #4691B9">创维集团网站</a> | 
                            <a href="http://www.skyworthdigital.com.cn" target="_blank" style="color: #4691B9">创维数字网站</a> | 
                            <a href="http://cn.skyworthwireless.com" target="_blank" style="color: #4691B9">创维无线网站</a> | 
                            <a href="http://www.mobee.tv" target="_blank" style="color: #4691B9">微普特网站</a> | 
                            <a href="http://www.skyworth-hightong.com" target="_blank" style="color: #4691B9">创维海通</a> | 
                            <a href="http://www.skyworthauto.com" target="_blank" style="color: #4691B9">汽车电子</a> | 
                            <a href="http://www.ineigo.com" target="_blank" style="color: #4691B9">爱内购</a> | 
                            <a href="http://www.baidu.com" target="_blank" style="color: #4691B9">百度 </a>| 
                            <a href="http://www.google.com" target="_blank" style="color: #4691B9">Google</a>
                            </td>
                            <td width="10">&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td width="10"></td>
                            <td align="center" height="30">
                                <span style="color: #4691B9; font-size: 12px;">Copyright @ 2013&nbsp;&nbsp;深圳创维数字技术股份有限公司&nbsp;&nbsp;版权所有</span>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="color: #4691B9; font-size: 12px;">在线人数：<% = Application["online"]%>人</span>
                                <span style="color: #4691B9; font-size: 12px;">总访问量：<% = Application["total"]%></span>
                            </td>
                            <td width="10"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>