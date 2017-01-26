Param (
[string]$IP,
[string]$Community,
[string]$OID = 1.3.6.1.4.1.318.1.1.12.1.15,
[int]$CommandAttempts = "2",
[int]$timeout = "3000" 
)

$SNMP = new-object -ComObject olePrn.OleSNMP
$snmp.open("$IP","$community",$CommandAttempts,$timeout)
$Outut = $snmp.Get("$OID")

echo $output

