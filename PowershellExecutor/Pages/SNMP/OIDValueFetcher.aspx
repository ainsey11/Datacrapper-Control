<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OIDValueFetcher.aspx.cs" Inherits="PowershellExecutor.Pages.SNMP.OIDValueFetcher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang ="English">
<head runat="server">
    <title>Datacrapper </title>
</head>
<body>
   <form id="form1" runat="server">
    <div id="main">
                <h3>Please Select SNMP Version </h3> 
                 <asp:RadioButtonList id="Input_snmp_version" runat="server">
                 <asp:ListItem value="1">1</asp:ListItem>
                 <asp:ListItem value="2">2</asp:ListItem>
                 </asp:RadioButtonList>  
                 <br />
                 <h3> Please Enter Device IP Address</h3>
                 <br />
                 <asp:TextBox ID="Input_snmp_ip" runat="server" TextMode="SingleLine" Width="350px" Height="20px" ></asp:TextBox>
                 <br />
                <h3> Please Enter Device SNMP Community</h3>
                 <br />
                 <asp:TextBox ID="Input_snmp_community" runat="server" TextMode="SingleLine" Width="350px" Height="20px" ></asp:TextBox>
                 <br />
                <h3> Please Enter OID for the value you wish to view</h3>
                 <br />
                 <asp:TextBox ID="Input_snmp_oid" runat="server" TextMode="SingleLine" Width="350px" Height="20px" ></asp:TextBox>
                 <br />
                <h3>(Optional) Please Enter SNMP Timeout </h3> <h4>(This is set to 2000ms if no value is set)</h4>
                 <asp:TextBox ID="Input_snmp_timeout" runat="server" TextMode="SingleLine" Width="350px" Height="20px" ></asp:TextBox>
                 <br />
                <h3>(Optional) Please Enter Amount of Retries </h3> <h4>(This is set to 1 if no value is set)</h4>
                 <asp:TextBox ID="Input_snmp_retries" runat="server" TextMode="SingleLine" Width="350px" Height="20px" ></asp:TextBox>
                 <br />
                <h3>(Optional) Please Enter Wait time </h3> <h4>(This is set to 300ms if no value is set)</h4>
                 <asp:TextBox ID="Input_snmp_wait" runat="server" TextMode="SingleLine" Width="350px" Height="20px" ></asp:TextBox>
                 <br />
                <h3>(Optional) Please Enter Port </h3> <h4>(This is set to 161 if no value is set)</h4>
                 <asp:TextBox ID="Input_snmp_port" runat="server" TextMode="SingleLine" Width="350px" Height="20px" ></asp:TextBox>
                 <br />
                <asp:Button ID="Action_SNMP" runat="server" Text="Get SNMP Value" Width="250" onclick="SNMP_ExecCode_OnClick" />  
                <br />
                <h3>The SNMP Value returned is:</h3>
                <asp:TextBox ID="Output_snmp_resultbox" runat="server" style="border:none"/>

    </div>
    </form>
</body>
</html>
