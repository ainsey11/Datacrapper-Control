using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lextm.SharpSnmpLib;
using Lextm.SharpSnmpLib.Messaging;

namespace PowershellExecutor.Pages.PDU
{
    public partial class PDUStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = Messenger.Set(VersionCode.V1,
                                       new IP(("172.16.1.4"), 161),
                                       new OctetString("public"),
                                       new List<Variable> { new Variable(new ObjectIdentifier("1.3.6.1.2.1.1.6.0"), new OctetString("Shanghai")) },
                                       60000);

        }
    }