<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PowershellExecutor.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div>
    <asp:Literal ID="Literal1" runat="server" /><br />
    User Name: <asp:TextBox ID="UserName" runat="server" /><br />
    Password:  <asp:TextBox ID="Password" runat="server" /><br />
    <asp:Button ID="Login" runat="server"  Text="Log In" />
</div>
</form>
</body>
</html>
