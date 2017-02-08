<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PowershellExecutor.Pages.SNMP.OIDValueFetcher" %>

    <head runat="server">
<title>Login Form</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<table align="center">
<tr>
<td colspan="2" height="200px"></td>
</tr>
<tr>
<td>
</td>
<td>
<b>Login Form</b> 
</td>
</tr>
<tr>
<td>
Username:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
<asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
</td>
</tr>
</table>
</div>
</form>
</body>
</html>
