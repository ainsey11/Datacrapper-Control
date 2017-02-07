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

namespace PowerShellExecution.Pages.AutoVM.NewVM
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewVM_ExecuteCode_Click(object sender, EventArgs e)
        {
            Runspace runspace = RunspaceFactory.CreateRunspace();
            runspace.Open();
            var Shell = PowerShell.Create()
            .AddCommand(@"C:\Users\Robert\Documents\GitHub\DataCrapper-Control\PowershellExecutor\Powershell\PDU\PDUControl.ps1")
            .AddParameter("PDUNumber", PDUNumber.SelectedValue)
            .AddParameter("PDUOutlet", Input_PDUOutlet.Text)
            .AddParameter("PDUAction", PDUAction.SelectedValue);
            var results = Shell.Invoke();
            StringBuilder stringBuilder = new StringBuilder();
            foreach (PSObject obj in results)
            {
                stringBuilder.AppendLine(obj.ToString());
            }
            Resultbox.Text = stringBuilder.ToString();
            runspace.Close();
        }
    }
}