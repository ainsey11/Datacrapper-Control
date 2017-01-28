<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDUControl.aspx.cs" Inherits="PowerShellExecution.Default" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Datacrapper Control Panel</title>
     <link rel="Stylesheet" href="PDUControl-Style.css" type="text/css" />
    
</head>
    
<body>
<form id="form1" runat="server">
    <div id="main">
                <h3>Please Select PDU </h3> 
                 <asp:RadioButtonList id="PDUNumber" runat="server">
                 <asp:ListItem value="1">PDU 1</asp:ListItem>
                 <asp:ListItem value="2">PDU 2</asp:ListItem>
                 </asp:RadioButtonList>                
                 <br />
                 <h3>Please enter PDU Oulet Number</h3>
                 <asp:TextBox ID="Input_PDUOutlet" runat="server" TextMode="SingleLine" Width="20px" Height="20px" ></asp:TextBox>
                 <br /> 
                 <h3>Please Select Action</h3>                    
                 <asp:RadioButtonList id="PDUAction" runat="server">
                 <asp:ListItem value="Enable">Enable</asp:ListItem>
                 <asp:ListItem value="Disable">Disable</asp:ListItem>
                 </asp:RadioButtonList>
                 <br />
                <asp:Button ID="ExecuteCode" runat="server" Text="Action PDU Change" Width="250" onclick="ExecuteCode_Click" />           
                <br />
                <br />
                <asp:TextBox ID="Resultbox" runat="server" onblur ="HideBorder()" onfocus="HideBorder()"/>
    </div>
</form>
</body>
</html>