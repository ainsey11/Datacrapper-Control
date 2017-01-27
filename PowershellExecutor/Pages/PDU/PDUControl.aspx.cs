using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management.Automation;
using System.Collections.ObjectModel;
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
            var Shell = PowerShell.Create()
            .AddCommand(@"C:\Users\Robert\Documents\GitHub\DataCrapper-Control\PowershellExecutor\Powershell\PDU\PDUControl.ps1")
            .AddParameter("PDUNumber", PDUNumber.SelectedValue)
            .AddParameter("PDUOutlet", Input_PDUOutlet.Text)
            .AddParameter("PDUAction", PDUAction.SelectedValue)
            .Invoke();

           Lolzbox.Text = "lovin it";
        }
    }
}