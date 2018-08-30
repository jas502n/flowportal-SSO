<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <style>BODY {
	FONT-SIZE: 13px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 13px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 13px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
}
TD {
	PADDING-RIGHT: 0px; PADDING-LEFT: 2px; BORDER-LEFT-COLOR: #d1dedf; BORDER-BOTTOM-COLOR: #d1dedf; PADDING-BOTTOM: 0px; BORDER-TOP-COLOR: #d1dedf; BORDER-RIGHT-COLOR: #d1dedf
}
TD.NoPadding {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
.BOXCSS {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid
}
.MYHEAD {
	BORDER-RIGHT: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; BORDER-LEFT: #000000 0px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYHEAD2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 12px; BORDER-LEFT: #000000 1px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYTABLE {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 0px solid
}
.MYTABLE2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid
}
TABLE.AA {
	BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-COLLAPSE: separate; BACKGROUND-COLOR: #d1dedf; BORDER-RIGHT-WIDTH: 0px
}
TABLE.AA TD {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid; HEIGHT: 15px
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #f0f0f0
}
TABLE.AA TR.HeaderRow TD {
	HEIGHT: 25px; TEXT-ALIGN: left
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.StepNameColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.SignColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.ActionColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.DateColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.CommentsColumn {
	PADDING-RIGHT: 15px; FONT-WEIGHT: bold; WIDTH: 99%
}
TABLE.AA TR.DataRow {
	BACKGROUND-COLOR: #ffffff
}
TABLE.AA TR.DataRow TD {
	HEIGHT: 25px; TEXT-ALIGN: left
}
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.StepNameCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.SignCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.ActionCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.DateCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.CommentsCell {
	COLOR: blue; TEXT-ALIGN: left
}
TABLE.AA TR.Running TD.NoCell {
	BACKGROUND-COLOR: #e0efe6
}
TABLE.AA TR.Running TD.SignCell {
	COLOR: #999999
}
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body bottommargin="0" leftmargin="0" rightmargin="0" topmargin="0">
    <form runat="server">
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="217">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="403" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Small" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="35" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="工作日志" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Insert content here -->
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="72">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" text="申  请  人：" Width="100%"></aspxform:XLabel>
                            </p>
                        </td>
                        <td height="20" width="130">
                            <aspxform:XTextBox id="XTextBox44" runat="server" Width="100px" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="FW_WorkDiary.AppHRName" BorderWidth="0px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" Width="20px" XDataBind="FW_WorkDiary.AppHRID" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                        <td width="74">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Width="66px" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="130">
                            <aspxform:XTextBox id="XTextBox45" runat="server" Width="120px" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="FW_WorkDiary.AppDate" BorderWidth="0px"></aspxform:XTextBox>
                        </td>
                        <td width="59">
                            <p align="right">
                                流水号：
                            </p>
                        </td>
                        <td width="257">
                            <aspxform:XTextBox id="XTextBox46" runat="server" Width="120px" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="FW_WorkDiary.AppSN" BorderWidth="0px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            主营机顶盒业务</td>
                    </tr>
                    <tr>
                        <td height="45" width="102">
                            <strong>合同审查和起草</strong></td>
                        <td width="691">
                            <aspxform:XTextBox id="XTextBox1" runat="server" Width="100%" XDataBind="FW_WorkDiary.STB_Item1" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="FW_WorkDiary.STB_File_Item1"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>诉讼案件</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox2" runat="server" Width="100%" XDataBind="FW_WorkDiary.STB_Item2" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="FW_WorkDiary.STB_File_Item2"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>其 他</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox11" runat="server" Width="100%" XDataBind="FW_WorkDiary.STB_Other" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="FW_WorkDiary.STB_File_Other"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            IPTV机顶盒业务
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>合同审查和起草</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" Width="100%" XDataBind="FW_WorkDiary.IPTV_Item1" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="FW_WorkDiary.IPTV_File_Item1"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>诉讼案件</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox4" runat="server" Width="100%" XDataBind="FW_WorkDiary.IPTV_Item2" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="FW_WorkDiary.IPTV_File_Item2"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>其 他</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox5" runat="server" Width="100%" XDataBind="FW_WorkDiary.IPTV_ItemOther" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="FW_WorkDiary.IPTV_File_ItemOther"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            子公司业务</td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>微 普 特</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox6" runat="server" Width="100%" XDataBind="FW_WorkDiary.Child_Item1" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments7" runat="server" XDataBind="FW_WorkDiary.Child_File_Item1"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>创维无线</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox7" runat="server" Width="100%" XDataBind="FW_WorkDiary.Child_Item2" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments8" runat="server" XDataBind="FW_WorkDiary.Child_File_Item2"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>才智商店</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox8" runat="server" Width="100%" XDataBind="FW_WorkDiary.Child_Item3" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments9" runat="server" XDataBind="FW_WorkDiary.Child_File_Item3"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>铭店壹佰</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox9" runat="server" Width="100%" XDataBind="FW_WorkDiary.Child_Item4" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments10" runat="server" XDataBind="FW_WorkDiary.Child_File_Item4"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="45">
                            <strong>其 他</strong></td>
                        <td>
                            <aspxform:XTextBox id="XTextBox10" runat="server" Width="100%" XDataBind="FW_WorkDiary.Child_ItemOther" BorderWidth="0px" BorderColor="#DCDCDC" Height="30px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments11" runat="server" XDataBind="FW_WorkDiary.Child_File_ItemOther"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="100%" BorderWidth="1px" BorderColor="Gainsboro" Height="35px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderWidth="0px" BorderColor="Transparent" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="263" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName == '开始'"></aspxform:XPrintButton>
                        </td>
                        <td width="533" align="left">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="WIDTH: 800px; BORDER-COLLAPSE: collapse" class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td height="15">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label style="COLOR: red; FONT-SIZE: medium" printout="False">本日工作内容填写最低要求</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            合同统计: 合同内容概述\份数\合同金额\重大风险\起草合同模板
                        </td>
                    </tr>
                    <tr>
                        <td>
                            案件: 案件各项信息(案号\案由\各方)\进度细节\已出具的法律文\各阶段证据和法律文件扫描
                        </td>
                    </tr>
                    <tr>
                        <td>
                            商标: 申请记录\维护记录\各阶段法律文件扫描
                        </td>
                    </tr>
                    <tr>
                        <td>
                            其他: 包括但不限于债务重整\债权处理\劳动纠纷等汇报和文件扫描
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td>
                            <script type="text/javascript" src="../jquery-1.9.1.min.js"></script>
                            <script type="text/javascript">
                                document.write('<script type="text/javascript" charset="gb2312"   src="' + rootUrl + 'MyApp/Demo/TaskComment/taskcomment.js"><\/script>');
                            </script>
                        </td>
                    </tr>
                </tbody>
                <div>
                </div>
            </table>
        </div>
        <script language="javascript" defer>
                var u=document.getElementsByTagName("input");
                for(var i=0;i<u.length;i++)
                {
                    if(u[i].type=="text")
                    {
                        u[i].style.borderTop = "0 solid #ffb3a7";
                        u[i].style.borderLeft = "0 solid #ffb3a7";
                        u[i].style.borderRight = "0 solid #ffb3a7";
                    }
                }
        </script>
    </form>
</body>
</html>
