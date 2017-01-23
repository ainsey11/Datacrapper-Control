<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PowerShellExecution.Default" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Datacrapper Control Panel V1.0</title>
    
</head>
    
<body>
<form id="form1" runat="server">
    <div id="main">
                <h3>Please enter PDU Number. (1 or 2) </h3>
                <asp:TextBox ID="Input_PDUNumber" runat="server" TextMode="SingleLine" Width="20px" Height="20px" ></asp:TextBox>
                <br />
                <h3>Please enter PDU Oulet Number</h3>
                <asp:TextBox ID="Input_PDUOutlet" runat="server" TextMode="SingleLine" Width="20px" Height="20px" ></asp:TextBox>
                <br /> 
                <h3>Please enter PDU Oulet Action (On/Off)</h3>
                <asp:TextBox ID="Input_PDUAction" runat="server" TextMode="SingleLine" Width="50px" Height="20px" ></asp:TextBox>
                <br />
                <asp:Button ID="ExecuteCode" runat="server" Text="Action PDU Change" Width="200" onclick="ExecuteCode_Click" />           
    </div>
</form>
</body>
</html>