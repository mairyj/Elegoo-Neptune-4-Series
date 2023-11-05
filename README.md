# Neptune-4-Series
My dear friends, hello! Here you will find all my work on the Neptune 4 series.


--------------------------------------------------------------------------------------------------------------
FOR NETPUNE 4/4 PRO : This printer.cfg update is based on the official Elegoo version released on Oct 27, 2023
--------------------------------------------------------------------------------------------------------------

To make the change is quite simple and I made an explanatory video in French here:
https://www.youtube.com/live/P2hcYcHyxnU?si=8-5hb7HC1qCNDelT

Change of October 28, 2023
• Completely redesigned layout with an index to easily find the sections.

• In the [printer] section

◦ max_accel_to_decel: 4000 # Original Value 2500
◦ max_z_accel: 200 # Original Value 100

• In the [virtual_sdcard] section

◦ Removal of 8 M300s (personally there were too many)

• Added the Temperature section to display that of the host and the mcu to the web interface

• change of microsteps from 16 to 64 for XYZE

• change of run_current to 0.55 instead of 0.8 or 1.2 (in order to avoid engine overheating)

• interpolate is set to false (in relation to microsteps going to 64, recommended in the klipper
doc)

• Changed some values in the [Extruder] section (see printer.cfg)

• Added the [firmware_retraction] option

• changed the min and max values of the bed to be more consistent! (see printer.cfg)

• addition of the option [screw_tilt_adjust] (option for bed leveling, do a home before)

• addition of the [bed_screws] option (option for bed leveling with sheets of paper, make a
home first)

• Modification of the M600 (thanks to foxtrot quebec)

• Added Load/Unload Filament macros

• Added macros for PID Extruder / BED / BED2 (just for Pro)


-------------------------------------------------------------------------------------------------------
FOR NETPUNE 4 Plus /4 Max : This printer.cfg update is based on the official Elegoo version 1.2.2.43
-------------------------------------------------------------------------------------------------------

Change made after update 1.2.2.43 Neptune 4 Plus:

● Completely redesigned layout with an index to easily find the sections.

● In the [virtual_sdcard] section

○ Removal of 8 M300s (personally there were too many)

● Added Temperature section to display that of the host and mcu to the web
interface

● for the tmc2209 stepper_x and Y sections

* change of run_current from 1.2 to 0.8

* deactivation of hold_current

* interpalte set to false rather than true (recommends from the klipper doc)

* stealthchop_threshold: 999999 instead of 0 to avoid engine whistling

● added firmware_rectraction section

● change of min and max temperature values of the bed and extruder (see printer.cfg)

● addition of the option [screw_tilt_adjust] (option for bed leveling, do a home
before)

● addition of the [bed_screws] option (option for bed leveling with sheets of paper,
make a home first)

● a version of the different M600

● Added Load/Unload Filament macros

● Added macros for PID Extruder / BED

