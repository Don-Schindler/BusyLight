# BusyLight

These are PowerShell scripts for primitive operations of the Kuando BusyLight (https://www.busylight.com/en_us/).  Operations are off, on, pulse, sound, and two 'random' demonstrations: random colors and randome pulse.  These scripts can teach how to drive the BusyLight.

I read through some of the code and docs on GitHub and read through some of the code people have posted, then re-wrote the code I learned down to just these primitive operations: on/off/sound/pulse, and two random operations.

## Getting Started

These scripts are NOT independant.  They do have some depancancies.  These scripts require you to have the Kuando BusyLight plugged into a USB port on the system you are running these scripts on.

Once you have the scripts running, you can customize them, and eventually take the steps you have learned and write other scripts to include these operations.  Like, blinking the BusyLight Yellow when new email arrives.


### Prerequisites

These scripts do have some dependancies, namely the BusylightSDK.dll.  All of these scripts use this DLL to direct the BusyLight to operate.  

You will need the BusylightSDK.DLL, as the PowerShell scripts communicates with the device by calling functions in the DLL.  You can get it from the SDK, at https://www.plenom.com/support/develop/.

or, you can get the DLL directly from:
https://github.com/hoovercj/BusyLight-Demo-CSharp
or...
https://github.com/brightwavepartners/Kuando.Busylight
(Admission: I googled BusylightSDK.DLL and found the above two links.)

### Installing

the BusyLight SDK DLL is not a signed DLL, nor was it compiled with a 'Manifest'.  So we need to do two things to accomodate calling this DLL:  We need to make PowerShell aware of this DLL directly, through the Add-Type command, and we also need to have PowerShell elevated and without restrictions.

After the script header and the 'Clear' statement, we need to have PowerShell load the DLL and make it's functions available.  The following two lines should be in each of the scripts:

# This is the path to the BusyLight SDK DLL.  Correct path as needed.
Add-Type -Path "C:\Windows\BusylightSDK.dll"

Put the DLL in a location and then, editing the script, adjust the path to the BusyLight SDK DLL to where you dropped it, plus the name of the DLL (as in the example above).

Next, we need to elevate PowerShell by running it as administrator, then lifing the restrictions on DLLs.

Right click on the PowerShell icon and pick 'run as administrator'.  Once you have the PowerShell window open, you can set elevated privilages by typing: set-executionpolicy unrestricted
 For safety, you might consider adding the parameter '-Scope CurrentUser' or '-Scope Process' as an additional argument to the set-executionpolicy command.

## Running the tests

Make sure that the BusyLight is plugged into the system you are going to run the scripts on.  Then simply execute the scripts.  If all goes well, there should be no error messages.


## Authors

* **Don Schindler** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

The Kuando BusyLight can be found at this URL: https://www.busylight.com/en_us/


