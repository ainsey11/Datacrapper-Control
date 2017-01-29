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

namespace PowershellExecutor.Pages.PDU
{
    public partial class PDUStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ExecuteCode_Click(object sender, EventArgs e)
        {
            Runspace runspace = RunspaceFactory.CreateRunspace();
        runspace.Open();
            var Shell = PowerShell.Create()
            .AddCommand(@"C:\Users\Robert\Documents\GitHub\DataCrapper-Control\PowershellExecutor\Powershell\PDU\PDUSNMPFetch.ps1")
            .AddParameter("PDUNumber", PDUNumber.SelectedValue)
            .AddParameter("PDUOutlet", Input_PDUOutlet.Text)
            .AddParameter("PDUAction", PDUAction.SelectedValue);
            var results = Shell.Invoke();
        
        }
    }
}
