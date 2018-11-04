######################################################################
# PowerShell - Driving the Kuando BusyLight
# Test Script 0 - turning the BusyLight off
#
# BusyLightTest1-light-on.ps1
#
# This simply sets all RGB values to 255 (full brightness), thus 
# telling the light to turn on.
#
# Don Schindler
######################################################################

Clear

# This is the path to the BusyLight SDK DLL.  Correct path as needed.
Add-Type -Path "C:\Windows\BusylightSDK.dll"

# Initialize the BusyLight objects
$MyBusyLight = New-Object -TypeName Busylight.SDK
$MyBusyLightColor = New-Object -TypeName Busylight.BusylightColor

# Now, set the color by adjusting the brightness of each of the Red, Green, and Blue LEDs
$MyBusyLightColor.RedRgbValue = 255
$MyBusyLightColor.GreenRgbValue = 255
$MyBusyLightColor.BlueRgbValue = 255
$MyBusyLight.Light($MyBusyLightColor)
Start-Sleep -Seconds 15

#When the progream ends, the light goes back to an off state by setting the brightness to 0.
$MyBusyLightColor.RedRgbValue = 0
$MyBusyLightColor.GreenRgbValue = 0
$MyBusyLightColor.BlueRgbValue = 0
$MyBusyLight.Light($MyBusyLightColor)
# Done!