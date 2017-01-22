using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management.Automation;
using System.Text;

namespace PowerShellExecution
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ExecuteCode_Click(object sender, EventArgs e)
        {
            // Initialize PowerShell engine
            var shell = PowerShell.Create();

            // Add the script to the PowerShell object
            shell.Commands.AddScript("\\Powershell\\PDU\\PDUControl.ps1");
            shell.Commands.AddParameter("-PDU", Input_PDUNumber.Text);
            shell.Commands.AddParameter("-Outlet", Input_PDUOutlet.Text);
            shell.Commands.AddParameter("-Action",Input_PDUAction.Text);

            // Execute the script
            var results = shell.Invoke();           
        }
    }
}