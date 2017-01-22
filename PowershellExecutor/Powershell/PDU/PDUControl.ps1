Param (
[Parameter(ValueFromPipeline=$true)]
[string]$Action ="Enabled",
[string]$PDUNumber = "",
[string]$Port = "23",
[int]$WaitTime = 1000,
[string]$OutputPath = "E:\Desktop\tmp.txt",
[int] $Outlet = ""
)


if ($Action -eq "Enabled") 
        {
        [String[]]$Commands = @("apc","apc","1","2","1","$Outlet","1","1","YES","{ENTER}")
        }
if ($Action -eq "Disabled")
        {
        [String[]]$Commands = @("apc","apc","1","2","1","$Outlet","1","2","YES","{ENTER}")
        }
if ($PDUNumber -eq "1")
        {
        $PDUIP = "172.16.1.3"
        }
if ($PDUNumber -eq "1")
        {
        $PDUIP = "172.16.1.4"
        }
       
   
    #Attach to the remote device, setup streaming requirements
    $Socket = New-Object System.Net.Sockets.TcpClient($PDUIP, $Port)
    If ($Socket)
    {   $Stream = $Socket.GetStream()
        $Writer = New-Object System.IO.StreamWriter($Stream)
        $Buffer = New-Object System.Byte[] 1024 
        $Encoding = New-Object System.Text.AsciiEncoding

        #Now start issuing the commands
        ForEach ($Command in $Commands)
        {   $Writer.WriteLine($Command) 
            $Writer.Flush()
            Start-Sleep -Milliseconds $WaitTime
        }
        #All commands issued, but since the last command is usually going to be
        #the longest let's wait a little longer for it to finish
        Start-Sleep -Milliseconds ($WaitTime * 4)
        $Result = ""
        #Save all the results
        While($Stream.DataAvailable) 
        {   $Read = $Stream.Read($Buffer, 0, 1024) 
            $Result += ($Encoding.GetString($Buffer, 0, $Read))
        }
    }
    Else     
    {   $Result = "Unable to connect to host: $($PDUIP):$Port"
    }
    #Done, now save the results to a file
    $Result | Out-File $OutputPath
    if ($OutletState -eq "Disabled")
        {
        Write-Host -ForegroundColor Red "Outlet $outlet Disabled"
        }
    if ($OutletState -eq "Enabled")
        {
        Write-Host -ForegroundColor Green "Outlet $outlet Enabled"
        }