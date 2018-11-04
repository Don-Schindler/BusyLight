######################################################################
# PowerShell - Driving the Kuando BusyLight
# Test Script 0 - turning the BusyLight off
#
# BusyLightTest4-Random-Colors-On.ps1
#
# This script simply loads a random number (as brightness) into each of
# the three LEDs, setting the light to a random color.
#
# Don Schindler
######################################################################

Clear

# This is the path to the BusyLight SDK DLL.  Correct path as needed.
Add-Type -Path "C:\Windows\BusylightSDK.dll"

# Initialize the BusyLight objects
$MyBusyLight = New-Object -TypeName Busylight.SDK
$MyBusyLightColor = New-Object -TypeName Busylight.BusylightColor

# Set constants to the minimum and maximum brightness levels
$Max = 128
$Min = 10

# While looping, assign a random number as the brightness of the LEDs
for ($i=0; $i -le 255; $i += 1) {
    $MyBusyLightColor.RedRgbValue = Random -Maximum $max -Minimum $Min
    $MyBusyLightColor.GreenRgbValue = Random -Maximum $max -Minimum $Min
    $MyBusyLightColor.BlueRgbValue = Random -Maximum $max -Minimum $Min
    $MyBusyLight.Light($MyBusyLightColor)
    Start-Sleep -Seconds 1
}

#Now, turn the light off
    $MyBusyLightColor.RedRgbValue = 0
    $MyBusyLightColor.GreenRgbValue = 0
    $MyBusyLightColor.BlueRgbValue = 0
    $MyBusyLight.Light($MyBusyLightColor)
# Done!