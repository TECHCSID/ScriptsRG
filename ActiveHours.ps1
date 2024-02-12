$ahs = Get-Item -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings
 
$props = [ordered]@{
     ComputerName = $computerName
     ActiveHoursStart = $ahs.GetValue(‘ActiveHoursStart’)
     ActiveHoursEnd = $ahs.GetValue(‘ActiveHoursEnd’)
}
 
  if ($props.ActiveHoursStart -ge 8) {
	$a = 'nok'
}
 
  if ($props.ActiveHoursEnd -le 18) {
	$a = 'nok'
}
 
$a
