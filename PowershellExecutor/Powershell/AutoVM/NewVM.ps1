param (
$VmwareServer = "172.16.1.12",
$VmName ,
$VMDatastore,
$VMDescription,
$VMDiskGB,
$VMDiskStorageFormat,
$VMGuestID,
$VMMemoryGB,
$VMNumCPU,
[string] $password = "1A2D5^7*kbD02v"
)
Add-PsSnapin VMware.VimAutomation.Core -ErrorAction Stop
Connect-VIServer 172.16.1.12 -User datacrapper -Password $password -WarningAction SilentlyContinue -ErrorAction Stop
Try
{
New-VM -Name $VmName -CD -Datastore $VMDatastore -Description $VMDescription -DiskGB $VMDiskGB -DiskStorageFormat $VMDiskStorageFormat -GuestId $VMGuestID -MemoryGB $VMMemoryGB -NumCPU $VMNumCPU -VMHost $VmwareServer -Erroraction Stop
}
Catch
{
Return "Oh Noes! Something went wrong!"
Disconnect-VIServer -Force
}
Return "$VMName has been created"
Disconnect-VIServer -Force