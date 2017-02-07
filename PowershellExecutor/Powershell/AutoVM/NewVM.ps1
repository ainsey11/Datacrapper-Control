param (
$VmwareServer = "172.16.1.12",
$VmName = "test" ,
$VMDatastore = "A11-VH-1-DS-1",
$VMDescription = "BLAH",
$VMDiskGB = "10",
$VMDiskStorageFormat = "Thin",
$VMGuestID = "ubuntu64Guest",
$VMMemoryGB = "1",
$VMNumCPU = "1",
[string] $password = "1A2D5^7*kbD02v"
)
Add-PsSnapin VMware.VimAutomation.Core -ErrorAction Stop
Connect-VIServer 172.16.1.12 -User datacrapper -Password $password -WarningAction SilentlyContinue -ErrorAction Stop


Try
{
echo "AutoVM Is Starting with the following Params : Vmware Server = $vmwareserver, VM Name = $vmName, Vm Datastore = $VmDatastore,VM Description = $vmdesc, VM Disk GB = $VMDiskGB, VM Disk Storage Format = $VmDiskStorageFormat, VmGuestID = $vmguestID, VM Memory = $VmMemoryGB, VM CPU = $Vmnumcpu" >> C:\Users\robert\Desktop\output.txt
New-VM -Name $VmName -CD -Datastore $VMDatastore -Description $VMDescription -DiskGB $VMDiskGB -DiskStorageFormat $VMDiskStorageFormat -GuestId $VMGuestID -MemoryGB $VMMemoryGB -NumCPU $VMNumCPU -VMHost $VmwareServer >> C:\Users\robert\Desktop\output.txt
}

Catch
{
echo "Something went wrong whilst running AutoVM. Please check all params are correct" >> C:\Users\robert\Desktop\output.txt
Return "Oh Noes! Something went wrong!"
Disconnect-VIServer -Force
}
Return "$VMName has been created"
Disconnect-VIServer -Force