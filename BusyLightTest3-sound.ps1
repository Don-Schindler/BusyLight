######################################################################
# PowerShell - Driving the Kuando BusyLight
# Test Script 0 - turning the BusyLight off
#
# BusyLightTest3-sound.ps1
#
# This script sets the BusyLight to play a pre-configured sound from
# the BusyLight.
#
# Don Schindler
######################################################################

Clear

# This is the path to the BusyLight SDK DLL.  Correct path as needed.
Add-Type -Path "C:\Windows\BusylightSDK.dll"

# This initializes BusyLight objects for use
$MyBusyLight = New-Object -TypeName Busylight.SDK
$MyBusyLightColor = New-Object -TypeName Busylight.BusylightColor
$MyBusyLightPulse = New-Object -TypeName Busylight.PulseSequence
$MyBusyLightSoundClip = New-Object -TypeName Busylight.BusylightSoundClip
$MyBusyLightVolume = New-Object -TypeName Busylight.BusylightVolume


# Sound --------------------
# Now that the BusyLight objects have been created, we can start invoking them.
$MyBusyLightColor.BlueRgbValue = 255
$MyBusyLightColor.RedRgbValue = 255
$MyBusyLight.Alert($MyBusyLightColor, 'TelephoneNordic', 'High')

# Need code to shut off light and sound!

# Done!