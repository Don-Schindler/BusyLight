######################################################################
# PowerShell - Driving the Kuando BusyLight
# Test Script 0 - turning the BusyLight off
#
# BusyLightTest0-light-off.ps1
#
# From purusing all the articles on the internet, and looking at some
# documentation, this simply sets all RGB values to 0, thus telling 
# the light to shut off.
#
# Don Schindler
######################################################################

Clear

# This is the path to the BusyLight SDK DLL.  Correct path as needed.
Add-Type -Path "C:\Windows\BusylightSDK.dll"

# Initialize the BusyLight objects
$MyBusyLight = New-Object -TypeName Busylight.SDK
$MyBusyLightColor = New-Object -TypeName Busylight.BusylightColor

# Now, turning off the light is essentially setting the brightness to 0
# for each of the color values (red, green, and blue).
$MyBusyLightColor.RedRgbValue = 0
$MyBusyLightColor.GreenRgbValue = 0
$MyBusyLightColor.BlueRgbValue = 0
$MyBusyLight.Light($MyBusyLightColor)
# The light goes to an off state immediately.