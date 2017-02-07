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
using System.Net.NetworkInformation;

namespace PowershellExecutor.Pages.AutoVM
{
    public partial class NewVM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var VMHostIP = "172.16.1.12";
            Ping p1 = new Ping();
            PingReply PR = p1.Send(VMHostIP);
            // check when the ping is not success
            while (!PR.Status.ToString().Equals("Success"))
            {
                Console.WriteLine(PR.Status.ToString());
                PR = p1.Send(VMHostIP);
            }
            // check after the ping is n success
            while (PR.Status.ToString().Equals("Success"))
            {
                Console.WriteLine(PR.Status.ToString());
                PR = p1.Send(VMHostIP);
            }
        }
        protected void NewVM_ExecuteCode_Click(object sender, EventArgs e)
        {
            Runspace runspace = RunspaceFactory.CreateRunspace();
            runspace.Open();
            var Shell = PowerShell.Create()
            .AddCommand(@"C:\Users\Robert\Documents\GitHub\DataCrapper-Control\PowershellExecutor\Powershell\AutoVM\NewVM.ps1")
            .AddParameter("VMName", Input_VmName.Text)
            .AddParameter("VMCD", Input_VMCD.SelectedValue)
            .AddParameter("VMDatastore", Input_VMDatastore.SelectedValue)
            .AddParameter("VMDescription",Input_VMDescription.Text)
            .AddParameter("VMDiskMB", Input_VMDiskMB.Text)
            .AddParameter("VMDiskStorageFormat", Input_VMDiskStorageFormat)
            .AddParameter("VMGuestID", Input_VMGuestID)
            .AddParameter("VMMemoryMB", Input_VMMemoryMB )
            .AddParameter("VMNumCPU", Input_VMNumCPU);
            var results = Shell.Invoke();
            StringBuilder stringBuilder = new StringBuilder();
            foreach (PSObject obj in results)
            {
                stringBuilder.AppendLine(obj.ToString());
            }
           Output_VMCreation_resultbox.Text = stringBuilder.ToString();
            runspace.Close();
        }
    }
}