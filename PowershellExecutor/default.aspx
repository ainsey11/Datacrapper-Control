<%@ Page Language="C#" %>
<html>
<head>
  <title>Datacrapper Control Panel</title>
</head>

<script runat="server">
  void Page_Load(object sender, EventArgs e)
  {
    Welcome.Text = "You are logged in as: " + Context.User.Identity.Name;
  }

  void Signout_Click(object sender, EventArgs e)
  {
    FormsAuthentication.SignOut();
    Response.Redirect("Logon.aspx");
  }
</script>

<body>
  <h3> </h3>
  <asp:Label ID="Welcome" runat="server" />
  <form id="Form1" runat="server">
    <asp:Button ID="Submit1" OnClick="Signout_Click" 
       Text="Sign Out" runat="server" /><p>
    <a title="PDU Control" href="/Pages/PDU/PDUControl.aspx">PDU Control</a>
    <br />
    <a title="SNMP OID Value Fetcher" href="/Pages/SNMP/OIDValueFetcher.aspx">SNMP OID Value Fetcher</a>   
    <br />
    <a title="VM Creator" href="/Pages/AutoVM/NewVM.aspx">New VM Creation Page</a>   
  </form>
</body>
</html>