param (
$VmwareServer = "172.16.1.12",
$VmName,
$VMDatastore,
$VMDescription,
$VMDiskMB,
$VMDiskStorageFormat = "Thin",
$VMGuestID,
$VMMemoryMB,
$VMNumCPU,
[string] $password = "1A2D5^7*kbD02v"
)
Add-PsSnapin VMware.VimAutomation.Core -ErrorAction Stop
Connect-VIServer 172.16.1.12 -User datacrapper -Password $password -WarningAction SilentlyContinue -ErrorAction Stop
New-VM -Name $VmName -CD -Datastore $VMDatastore -Description $VMDescription -DiskGB $VMDiskGB -DiskStorageFormat $VMDiskStorageFormat -GuestId $VMGuestID -MemoryGB $VMMemoryGB -NumCPU $VMNumCPU -VMHost $VmwareServer -ErrorVariable $errorvar

if ($errorvar)
{
Return $errorvar
}

else{
Return "$VMName has been created"
}
