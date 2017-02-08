<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web.Security" %>

<script runat="server">
  void Logon_Click(object sender, EventArgs e)
  {
    if ((UserEmail.Text == "robert@ainsey11.com") && 
            (UserPass.Text == "Ainsey"))
      {
          FormsAuthentication.RedirectFromLoginPage 
             (UserEmail.Text, Persist.Checked);
      }
      else
      {
          Msg.Text = "Invalid credentials. Please try again.";
      }
  }
</script>
<html>
<head id="Head1" runat="server">
  <title>Forms Authentication - Login</title>
</head>
<body>
      <form id="form1" runat="server">
     
    <h3>Datacrapper Control Panel Logon Page</h3>
    <br />
        Username:
    <br />
    <asp:TextBox ID="UserEmail" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserEmail"
            Display="Dynamic" 
            ErrorMessage="Cannot be empty." 
            runat="server" />
    <br />
       Password:
    <br />
    <asp:TextBox ID="UserPass" TextMode="Password" 
             runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="UserPass"
            ErrorMessage="Cannot be empty." 
            runat="server" />
     <br />
         Remember me?
     <asp:CheckBox ID="Persist" runat="server" />
     <br />
     <br />
     <asp:Button ID="Submit1" OnClick="Logon_Click" Text="Log On to the Datacrapper Control Panel" 
       runat="server" />
    <p>
      <asp:Label ID="Msg" ForeColor="red" runat="server" />
    </p>
  </form>
</body>
</html>