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

namespace PowershellExecutor.Pages.AutoVM
{
    public partial class NewVM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void NewVM_ExecuteCode_Click(object sender, EventArgs e)
        {
            Runspace runspace = RunspaceFactory.CreateRunspace();
            runspace.Open();
            var Shell = PowerShell.Create()
            .AddCommand(@"C:\Users\Robert\Documents\GitHub\DataCrapper-Control\PowershellExecutor\Powershell\AutoVM\NewVM.ps1")
            .AddParameter("VMName", Input_VmName.Text)
            .AddParameter("VMCD", Input_VMCD.SelectedValue)
            .AddParameter("VMDatastore", Input_)
            .AddParameter("VMDescription",)
            .AddParameter("VMDiskMB", )
            .AddParameter("VMDiskStorageFormat", )
            .AddParameter("VMGuestID", )
            .AddParameter("VMMemoryMB", )
            .AddParameter("VMNumCPU", );
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