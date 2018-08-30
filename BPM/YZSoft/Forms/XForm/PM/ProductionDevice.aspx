<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head id="Head1" runat="server">
    <title>设备档案信息</title> <style>
    BODY {FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TABLE {border-collapse: collapse; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    P {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TD {PADDING-RIGHT: 0px; PADDING-LEFT: 2px; PADDING-BOTTOM: 0px}
    TD.NoPadding {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px}
    INPUT {HEIGHT: 20px}
    INPUT.UL {BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid}
    </style>
</head>
<body>
    <form id="Form1" runat="server">
        <table style="BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="formTable" width="650">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid" height="30" colspan="4">
                        <strong><font size="5" face="微软雅黑">设备档案信息</font></strong>
                    </td>
                </tr>
                <tr class="groupName">
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" bgcolor="#fcfcfc" height="20" colspan="4">
                        基本信息
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" width="119">
                        设备名称:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="206">
                        <aspxform:xtextbox id="txtName" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Name"></aspxform:xtextbox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="muti_row" rowspan="8" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" height="24">
                        设备分类:</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XDropDownList id="XDropDownList1" class="select select2" runat="server" XDataBind="iDemoDevice.TypeID" PromptText="请选择" XDataSource="TableName:iDemoDeviceType" DisplayColumn="Name" ValueColumn="ID">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" height="24">
                        内部编号:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="txtNumber0" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Number" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" height="24">
                        出厂编号:</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="txtNumber" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.FactoryNumber" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" height="24">
                        型号:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox4" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Model" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" height="22">
                        规格:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox14" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Standard" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        功率:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox7" class="input input3" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Power" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                        &nbsp;KW</td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        生产厂商:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox6" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Manufacture" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        出厂日期:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" class="input input_button input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" XDataBind="iDemoDevice.DateOfManufacture"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" width="105">
                        启用日期:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="207">
                        <aspxform:XDateTimePicker id="XDateTimePicker2" class="input input_button input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" XDataBind="iDemoDevice.StartDate"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        资产原值:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox5" class="input input3" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Price" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                        &nbsp;元</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        安装地点:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox11" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Location" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        供应商:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox8" class="input input2" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.Provider" disablecssclass="input input_disabled input2"></aspxform:xtextbox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        设备设龄:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:xtextbox id="XTextBox10" class="input input3" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDevice.IntendAge" disablecssclass="input input_disabled input3" min="0" max="0" hiddeninput="False"></aspxform:xtextbox>
                        &nbsp;年
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header" height="25">
                        所属系统:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="iDemoDevice.SystemID" XDataSource="TableName:iDemoDeviceSystem" DisplayColumn="Name" ValueColumn="ID" cssclass="select select2" onchange="javascript:XFormOnChange(this);">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="header">
                        状态:
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="iDemoDevice.Status" XDataSource="TableName:iDemoDeviceStatus" DisplayColumn="Name" ValueColumn="ID" cssclass="select select2">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="grid" width="650" emptygrid="KeepEmpty" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="#fcfcfc" height="20" colspan="3">
                            随机资料</td>
                    </tr>
                    <tr class="header">
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_id" bgcolor="transparent" height="18" width="48">
                            序号
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_item" bgcolor="transparent" width="386">
                            资料名称
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_desp" bgcolor="transparent" width="206">
                            说明
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="25">
                            <aspxform:xgridlineno id="XGridLineNo3" class="input input_show grid_id" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" ReadOnly="True" Width="100%">1</aspxform:xgridlineno>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox1" class="input grid_item" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceSpecification.Name" disablecssclass="input input_disabled grid_name" Width="100%"></aspxform:xtextbox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox2" class="input grid_desp" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceSpecification.Remark" disablecssclass="input input_disabled grid_desp" Width="100%"></aspxform:xtextbox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="grid" width="650" emptygrid="KeepEmpty" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="#fcfcfc" height="20" colspan="4">
                            巡检要求</td>
                    </tr>
                    <tr class="header">
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_id" bgcolor="transparent" height="18" width="48">
                            序号
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_item" bgcolor="transparent" width="195">
                            巡检项目
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_check" bgcolor="transparent" width="190">
                            检查要求
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_week" bgcolor="transparent" width="204">
                            检查周期(天)</td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="25">
                            <aspxform:xgridlineno id="XGridLineNo4" class="input input_show grid_id" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" Width="100%">1</aspxform:xgridlineno>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox16" class="input grid_item" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceRoutineCheckItem.Name" disablecssclass="input input_disabled grid_item" Width="100%"></aspxform:xtextbox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox17" class="input grid_check" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceRoutineCheckItem.Require" disablecssclass="input input_disabled grid_check" Width="100%"></aspxform:xtextbox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox18" class="input grid_week" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceRoutineCheckItem.Period" disablecssclass="input input_disabled grid_week" min="0" max="0" hiddeninput="False" Width="100%" Value ValueToDisplayText></aspxform:xtextbox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="grid" width="650" emptygrid="KeepEmpty" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="#fcfcfc" height="20" colspan="4">
                            润滑要求</td>
                    </tr>
                    <tr class="header">
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_id" bgcolor="transparent" height="17" width="48">
                            序号
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_item" bgcolor="transparent" width="195">
                            润滑项目
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_check" bgcolor="transparent" width="190">
                            润滑要求
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="grid grid_week" bgcolor="transparent" width="204">
                            润滑周期(天)</td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="25">
                            <aspxform:xgridlineno id="XGridLineNo5" class="input input_show grid_id" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" Width="100%">1</aspxform:xgridlineno>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox19" class="input grid_item" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceRoutineLubricateRequire.Name" disablecssclass="input input_disabled grid_item" Width="100%"></aspxform:xtextbox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox20" class="input grid_check" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceRoutineLubricateRequire.Require" disablecssclass="input input_disabled grid_check" Width="100%"></aspxform:xtextbox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:xtextbox id="XTextBox22" class="input grid_week" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" xdatabind="iDemoDeviceRoutineLubricateRequire.Period" Max="0" Min="0" disablecssclass="input input_disabled grid_week" Width="100%" Value ValueToDisplayText HiddenInput="False"></aspxform:xtextbox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p align="left">
            <aspxform:xprocessbuttonlist id="XProcessButtonList1" runat="server" systembtncssclass="button buttonSubmit" processbtncssclass="button" dorpdownlistcssclass="select"></aspxform:xprocessbuttonlist>
        </p>
        <p>
            <aspxform:XTextBox id="txtStationID" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="Gainsboro" XDataBind="iDemoDevice.StationID" HiddenInput="True"></aspxform:XTextBox>
            <aspxform:xrequiredfieldvalidator id="XRequiredFieldValidator1" runat="server" controltovalidate="txtName" errormessage="设备名称不能为空" display="None"></aspxform:xrequiredfieldvalidator>
            <aspxform:xrequiredfieldvalidator id="XRequiredFieldValidator2" runat="server" controltovalidate="txtNumber" errormessage="设备编号不能为空" display="None"></aspxform:xrequiredfieldvalidator>
        </p>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="650">
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
    </form>
</body>
</html>
