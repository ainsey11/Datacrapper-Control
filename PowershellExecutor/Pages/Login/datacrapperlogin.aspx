<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datacrapperlogin.aspx.cs" Inherits="PowershellExecutor.Pages.Login.datacrapperlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h4> Please Enter your username</h4>
    <asp:TextBox ID="txtUserName" runat="server"/>
    <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />
    <br />
    <h4>Please Enter your password</h4>
    <asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
    <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
