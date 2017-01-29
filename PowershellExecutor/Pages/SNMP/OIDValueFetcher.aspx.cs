using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management.Automation;
using System.Collections.ObjectModel;
using System.Text;
using System.Management.Automation.Runspaces;

namespace PowershellExecutor.Pages.SNMP
{
    public partial class OIDValueFetcher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SNMP_ExecCode_OnClick(object sender, EventArgs e)
        {
            Runspace snmpoidrunspace = RunspaceFactory.CreateRunspace();
            snmpoidrunspace.Open();
            var Shell = PowerShell.Create()
            .AddCommand(@"C:\Users\Robert\Documents\GitHub\DataCrapper-Control\PowershellExecutor\Powershell\Generic\SNMP\SNMPValueFetcher.ps1")
            .AddParameter("PDUNumber", IP.SelectedValue);
            var results = Shell.Invoke();

        }
    }
}