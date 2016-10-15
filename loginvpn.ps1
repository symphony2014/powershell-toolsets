#$servers=Get-Content "D:\mycode\powershell\serviers_vpn.txt"
#foreach($server in $servers){
 #  $r=$server.Split(" ") 
  # Add-VpnConnection -Name $r[0] -ServerAddress $r[1] -TunnelType Pptp -UseWinlogonCredential
#}
$names=Get-VpnConnection | select name
$names
$ran=Get-Random -Minimum 0 -Maximum ($names.Length-1)
"test"
$names[$ran].ToString()
rasdial.exe $names[$ran].toString().Trim() symphony2015 01052193248
