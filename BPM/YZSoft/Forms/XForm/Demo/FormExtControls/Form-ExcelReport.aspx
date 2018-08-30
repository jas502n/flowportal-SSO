<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <title>BPM Form</title>
    <script src="../../../../Reports/Panel/ExcelReportPanel.js" type="text/javascript"></script>
    <style>
    BODY {FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TABLE {border-collapse: collapse; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    P {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TD {PADDING-RIGHT: 0px; PADDING-LEFT: 2px; PADDING-BOTTOM: 0px}
    TD.NoPadding {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px}
    INPUT {HEIGHT: 20px}
    INPUT.UL {BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid}
    TEXTAREA {FONT-SIZE:12px}
    </style>
    <script type="text/javascript">
        var excelPanel;
        YZSoft.XForm.ExcelReportPanel = {
            Init: function (el) {
                el.cnt = new Ext.Element(el).next('div', true); //el.nextSibling;
                el.mhtml = new YZSoft.Reports.ExcelReportPanel({
                    ExcelFile: "~/YZSoft/BPM/Excel/SystemUsage.xls",
                    listeners: {
                        scope: this,
                        beforereportload: function (store) {
                            store.baseParams['Year'] = document.getElementById('_txtYear').value;
                            store.baseParams['ReportDate'] = (new Date()).toString();
                        },
                        afterrender: function () {
                            el.mhtml.store.reload({ params: { start: 0} });
                        }
                    }

                });
                el.mhtml.render(el.cnt);
                excelPanel = el.mhtml;
            }
        };
        YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_ExcelReport_Init', YZSoft.XForm.ExcelReportPanel.Init);

        function Update() {
            excelPanel.store.reload({ params: { start: 0} });
        }
   </script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <div><input type="text" XDataBind="vara1" InitFunc="YZSoft_XForm_ExcelReport_Init" style="display:none;" />
        <div style="height:200px;width:701px;"></div></div>
        <input type="text" id='_txtYear' value='2012'/><input type="button" value="¸üÐÂ" onclick="Update();" />
        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
    </form>
</body>
</html>
