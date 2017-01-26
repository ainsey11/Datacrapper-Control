Param (
[string]$IP,
[string]$Community,
[string]$OID,
[int]$CommandAttempts = "2",
[int]$timeout = "3000" 
)

$SNMP = new-object -ComObject olePrn.OleSNMP
$snmp.open("$IP","$community",$CommandAttempts,$timeout)
$Outut = $snmp.Get("$OID")