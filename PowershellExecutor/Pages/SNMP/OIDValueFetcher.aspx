<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OIDValueFetcher.aspx.cs" Inherits="PowershellExecutor.Pages.SNMP.OIDValueFetcher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Datacrapper </title>
</head>
<body>
   <form id="form1" runat="server">
    <div id="main">
                <h3>Please Select SNMP Version </h3> 
                 <asp:RadioButtonList id="IP" runat="server">
                 <asp:ListItem value="1">1</asp:ListItem>
                 <asp:ListItem value="2">2</asp:ListItem>
                 </asp:RadioButtonList>  
    </div>
    </form>
</body>
</html>
