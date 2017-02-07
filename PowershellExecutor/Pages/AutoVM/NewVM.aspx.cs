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
using System.Threading;


namespace PowershellExecutor.Pages.AutoVM
{
    public partial class NewVM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void VmwarePing_ExecuteCode_Click(object sender, EventArgs e)
        {
            string ip = "172.16.1.12";
            string nn = "1";
            int n = int.Parse(nn);
            Ping PingSender = new Ping();
            PingOptions PingOpt = new PingOptions();
            StringBuilder sb = new StringBuilder();
            PingReply reply = PingSender.Send(ip);
            var rt = reply.RoundtripTime;
            sb.Append("IP=" + "\t" + reply.Address + "\t" + "Time=" + rt);
            Output_VM_Ping.Text = sb.ToString();
            Thread.Sleep(50);
            
        }

        protected void NewVM_ExecuteCode_Click(object sender, EventArgs e)
        {
            Runspace runspace = RunspaceFactory.CreateRunspace();
            runspace.Open();
            var Shell = PowerShell.Create()
            .AddCommand(@"C:\Users\Robert\Documents\GitHub\DataCrapper-Control\PowershellExecutor\Powershell\AutoVM\NewVM.ps1")
            .AddParameter("VMName", Input_VmName.Text)
            .AddParameter("VMDatastore", Input_VMDatastore.SelectedValue)
            .AddParameter("VMDescription",Input_VMDescription.Text)
            .AddParameter("VMDiskGB", Input_VMDiskGB.Text)
            .AddParameter("VMDiskStorageFormat", Input_VMDiskStorageFormat)
            .AddParameter("VMGuestID", Input_VMGuestID)
            .AddParameter("VMMemoryGB", Input_VMMemoryGB )
            .AddParameter("VMNumCPU", Input_VMNumCPU);
            var results = Shell.Invoke();
            Thread.Sleep(1000);
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