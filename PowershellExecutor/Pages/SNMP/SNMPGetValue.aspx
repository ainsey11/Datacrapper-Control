%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDUControl.aspx.cs" Inherits="PowerShellExecution.Default" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Datacrapper Control Panel</title>
     </head>
    
<body>
<form id="form1" runat="server">
    <div id="main">
                <h3>Please Enter IP of device </h3> 
                    <br />
                <asp:TextBox ID="SNMP_IP" runat="server" TextMode="SingleLine" Width="300px" Height="20px" ></asp:TextBox>               
                    <br />
                <h3>Please select snmp version</h3>
                    <br />
                <asp:RadioButtonList id="SNMPVersion" runat="server">
                <asp:ListItem value="V1">V1</asp:ListItem>
                <asp:ListItem value="V2">V2</asp:ListItem>
                </asp:RadioButtonList>
                    <br /> 
                <h3>Please Enter OID for the value you wish to view</h3>                    
                    <br />
                <asp:TextBox ID="SNMP_OID" runat="server" TextMode="SingleLine" Width="300px" Height="20px" ></asp:TextBox>
                    <br />
                <h3> (Optional) Enter timeout value </h3>
                    <br />
                <asp:TextBox ID="SNMP_Timeout" runat="server" TextMode="SingleLine" Width="50px" Height="20px" ></asp:TextBox>
                    <br />
                <h3> (Optional) Enter Number of retries </h3>
                    <br />
                <asp:TextBox ID="SNMP_Retries" runat="server" TextMode="SingleLine" Width="50px" Height="20px" ></asp:TextBox>
                    <br />
                <asp:Button ID="SNMP_ExecCode" runat="server" Text="Get SNMP Value" Width="250" onclick="SNMP_ExecCode_OnClick" />           
                    <br />           
                <asp:TextBox ID="SNMP_Result" runat="server" style="border:none"/>
    </div>
</form>
</body>
</html>