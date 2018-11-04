######################################################################
# PowerShell - Driving the Kuando BusyLight
# Test Script 0 - turning the BusyLight off
#
# BusyLightTest2-pulse-on.ps1
#
# This script sets up a 'pulse' of light on the BusyLight
#
# Don Schindler
######################################################################

Clear

# This is the path to the BusyLight SDK DLL.  Correct path as needed.
Add-Type -Path "C:\Windows\BusylightSDK.dll"

# Initialize the BusyLight objects
$MyBusyLight = New-Object -TypeName Busylight.SDK
$MyBusyLightColor = New-Object -TypeName Busylight.BusylightColor
$MyBusyLightPulse = New-Object -TypeName Busylight.PulseSequence

# Set the color of the light
$MyBusyLightColor.RedRgbValue = 255
$MyBusyLightColor.GreenRgbValue = 0
$MyBusyLightColor.BlueRgbValue = 255

# Pulse --------------------
$MyBusyLightPulse.Color = $MyBusyLightColor
$MyBusyLightPulse.Step1 = 1
$MyBusyLightPulse.Step2 = 64
$MyBusyLightPulse.Step3 = 128
$MyBusyLightPulse.Step4 = 255
$MyBusyLightPulse.Step5 = 128
$MyBusyLightPulse.Step6 = 64
$MyBusyLightPulse.Step7 = 1
$MyBusyLight.Pulse($MyBusyLightPulse)
Start-Sleep -Seconds 15

# When the pulse ends, set the light to an off state.
$MyBusyLightColor.RedRgbValue = 0
$MyBusyLightColor.GreenRgbValue = 0
$MyBusyLightColor.BlueRgbValue = 0
$MyBusyLight.Light($MyBusyLightColor)
#Done!