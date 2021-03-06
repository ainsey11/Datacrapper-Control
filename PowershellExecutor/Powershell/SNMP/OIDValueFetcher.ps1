Param (
[String]$Version,
[string]$IP,
[String]$Community = "public",
[String]$OID=$null,
[int]$WaitTime = 300,
[int]$TimeOut = 2000,
[int]$Port=161  
      )

[reflection.assembly]::LoadFrom( (Resolve-Path "C:\Users\robert\documents\Github\DataCrapper-Control\PowershellExecutor\ReferenceDLL\TritonSNMP\SharpSnmpLib.dll") )

$SimpleSnmp = New-Object -TypeName SnmpSharpNet.SimpleSnmp
$SimpleSnmp.Community = $Community
$SimpleSnmp.Retry = $Retry
$SimpleSnmp.PeerPort = $Port
$SimpleSnmp.Timeout = $TimeOut
[SnmpSharpNet.SnmpVersion]$ver = [SnmpSharpNet.SnmpVersion]::Ver2
Switch($Version) {
1 {$Ver = [SnmpSharpNet.SnmpVersion]::Ver1 }
2 {$Ver = [SnmpSharpNet.SnmpVersion]::Ver2 }
default {$Ver = [SnmpSharpNet.SnmpVersion]::Ver2 }
}

ForEach($Node in $IP)  {
			$SimpleSnmp.PeerIP = $Node
				ForEach($x in $OID) {
					$Response = $SimpleSnmp.Get($Ver,$x)
						if ($Response) {
							if ($Response.Count -gt 0) {
								foreach ($var in $Response.GetEnumerator()) {
									Write-Output -InputObject ([PSCustomObject] @{
										Node = $Node
										OID = $var.Key.ToString()
										Type = [snmpsharpnet.SnmpConstants]::GetTypeName($var.Value.Type)
										Value = $var.Value.ToString()
										})
									$returnedvalue = $var.Value.ToString()
									return $returnedvalue
									}
								}
							}
					Else { 
					return "$Node returned Null"
						 }
					}
			  }