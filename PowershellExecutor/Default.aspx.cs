﻿using System;
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
                var Shell = PowerShell.Create();
                Shell.AddScript("E:\\Documents\\GitHub\\DataCrapper-Control\\PowershellExecutor\\Powershell\\PDU\\PDUControl.ps1");
                Shell.AddParameter("-PDUNumber", Input_PDUNumber.Text);
                Shell.AddParameter("-PDUOutlet", Input_PDUOutlet.Text);
                Shell.AddParameter("-PDUAction", Input_PDUAction.Text);
                Shell.Invoke();
        }
    }
}