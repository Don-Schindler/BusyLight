######################################################################
# PowerShell - Driving the Kuando BusyLight
# Test Script 0 - turning the BusyLight off
#
# BusyLightTest5-Random-Pulse-On.ps1
#
# This script sets up a pulse of random colors.
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

# Set minimum and maximum colors and set pulse intensity.
$Max = 128
$Min = 10
$MyBusyLightPulse.Step1 = 42
$MyBusyLightPulse.Step2 = 84
$MyBusyLightPulse.Step3 = 126
$MyBusyLightPulse.Step4 = 168
$MyBusyLightPulse.Step5 = 210
$MyBusyLightPulse.Step6 = 170
$MyBusyLightPulse.Step7 = 85

# Loop while setting new colors and pulsing
for ($i=0; $i -le 255; $i += 1) {
    $MyBusyLightColor.RedRgbValue = Random -Maximum $max -Minimum $Min
    $MyBusyLightColor.GreenRgbValue = Random -Maximum $max -Minimum $Min
    $MyBusyLightColor.BlueRgbValue = Random -Maximum $max -Minimum $Min
    $MyBusyLight.Light($MyBusyLightColor)
    $MyBusyLightPulse.Color = $MyBusyLightColor
    $MyBusyLight.Pulse($MyBusyLightPulse)
    Start-Sleep -Seconds 4
}

#Now, turn the light off
    $MyBusyLightColor.RedRgbValue = 0
    $MyBusyLightColor.GreenRgbValue = 0
    $MyBusyLightColor.BlueRgbValue = 0
    $MyBusyLight.Light($MyBusyLightColor)
# Done!