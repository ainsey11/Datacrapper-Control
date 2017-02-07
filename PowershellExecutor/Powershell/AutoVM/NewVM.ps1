param (
$VmwareServer = "172.16.1.12",
$VmName,
$VMCD = $true,
$VMDatastore,
$VMDescription,
$VMDiskMB,
$VMDiskStorageFormat = "Thin",
$VMGuestID,
$VMMemoryMB,
$VMNumCPU
)

if ( !(Get-Module -Name VMware.VimAutomation.Core -ErrorAction SilentlyContinue) ) {
    if (Test-Path -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\VMware, Inc.\VMware vSphere PowerCLI' ) {
        $Regkey = 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\VMware, Inc.\VMware vSphere PowerCLI'
       
    } else {
        $Regkey = 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\VMware, Inc.\VMware vSphere PowerCLI'
    }
    . (join-path -path (Get-ItemProperty  $Regkey).InstallPath -childpath 'Scripts\Initialize-PowerCLIEnvironment.ps1')
}
if ( !(Get-Module -Name VMware.VimAutomation.Core -ErrorAction SilentlyContinue) ) {
    Write-Host "VMware modules not loaded/unable to load"
    Exit 99
}
[string] $password = 1A2D5^7*kbD02v
Connect-VIServer 172.16.1.12 -User datacrapper -Password $password


New-VM -Name $VmName -CD -Datastore $VMDatastore -Description $VMDescription -DiskGB $VMDiskGB -DiskStorageFormat $VMDiskStorageFormat -GuestId $VMGuestID -MemoryGB $VMMemoryGB -NumCPU $VMNumCPU -VMHost $VmwareServer
return "VM $VMName has been created"