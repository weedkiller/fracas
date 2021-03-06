﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=6.2.12.1017, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<script runat="server">      
    public override void VerifyRenderingInServerForm(Control control)
    {
        // to avoid the server form (<form runat="server">) requirement
    }

    protected override void OnLoad(EventArgs e)
    {
        // bind the report viewer
        base.OnLoad(e);
        ReportViewerAvailibility.Report = new StarEnergi.Reporting.Availibility();
    }
</script>
<html>
    <head title="Availibility" id="Head1" runat="server"></head>
    <body>
        <form clientidmode="Static" id="frep" runat="server">
        <telerik:ReportViewer ID="ReportViewerAvailibility" runat="server" Width="718px"/>
        </form>
    </body>
</html>


