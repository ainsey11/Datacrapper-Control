<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewVM.aspx.cs" Inherits="PowershellExecutor.Pages.AutoVM.NewVM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Datacrapper Control Panel</title>
     </head>
<body>
    <form id="form1" runat="server">
    <div id ="main">
    <h3> Please fill out the below form to provision a new VM</h3>
       <br />
        <asp:Button ID="Check_VM_Ping" runat="server" Text="Check VM Host Status" Width="600" onclick="VmwarePing_ExecuteCode_Click" />
        <asp:TextBox ID="Output_VM_Ping" runat="server" style="border:none"/>
       <br />
        <h4> Please Enter a name for this VM </h4>
        <asp:TextBox ID="Input_VmName" runat ="server" TextMode="SingleLine" Width="200px" Height="20px" ></asp:TextBox>
        <br />
        <h4> Please Enter a description for this vm (This can be a function or purpose) </h4>
        <asp:TextBox ID="Input_VMDescription" runat ="server" TextMode="SingleLine" Width="200px" Height="20px" ></asp:TextBox>
        <br />
        <h4> Does this VM need a DVD device for ISO installation?</h4>
        <asp:RadioButtonList id="Input_VMCD" runat="server">
                 <asp:ListItem value="true">Yes</asp:ListItem>
                 <asp:ListItem value="false">No</asp:ListItem>
                 </asp:RadioButtonList>
        <br />
        <h4> What Datastore should this reside on?</h4>
        <asp:RadioButtonList id="Input_VMDatastore" runat="server">
                 <asp:ListItem value="[A11-VH-1-DS-1]">[A11-VH-1-DS-1]</asp:ListItem>
                 </asp:RadioButtonList>
        <br />
        <h4>Please enter disk size in MB</h4>
        <asp:TextBox ID="Input_VMDiskMB" runat ="server" TextMode="SingleLine" Width="50px" Height="20px" ></asp:TextBox>
        <br />       
        <h4> Please select disk storage format (default is Thin if none selected)</h4>
         <asp:RadioButtonList id="Input_VMDiskStorageFormat" runat="server">
                 <asp:ListItem value="Thick">Thick</asp:ListItem>
                 <asp:ListItem value="Thin">Thin</asp:ListItem>
                 </asp:RadioButtonList>
       
        <h4> Please select a Guest ID (OS Type)</h4>
            <asp:RadioButtonList id="Input_VMGuestID" runat="server">
                 <asp:ListItem value="ubuntu64Guest">Ubuntu 64 Bit</asp:ListItem>
                 <asp:ListItem value="debian6_64Guest">Debian 64 Bit</asp:ListItem>
                <asp:ListItem value="windows8Server64Guest">Windows Server 64 Bit</asp:ListItem>
                 </asp:RadioButtonList>
        
        <h4> Please enter desired amount of RAM in MB</h4>
        <asp:TextBox ID="Input_VMMemoryMB" runat ="server" TextMode="SingleLine" Width="50px" Height="20px" ></asp:TextBox>
        <h4> Please enter desired number of vCPU Cores</h4>
        <asp:TextBox ID="Input_VMNumCPU" runat ="server" TextMode="SingleLine" Width="10px" Height="20px" ></asp:TextBox>
        <br />
        <asp:Button ID="Action_CreateVM" runat="server" Text="Create new VM" Width="250" onclick="NewVM_ExecuteCode_Click" />  
        <br />
        <h3>Status:</h3>
        <asp:TextBox ID="Output_VMCreation_resultbox" runat="server" style="border:none"/>
    </div>
    </form>
</body>
</html>
