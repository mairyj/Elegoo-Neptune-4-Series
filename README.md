# Neptune-4-Series
My dear friends, hello! Here you will find all my work on the Neptune 4 series.

To make the change is quite simple and I made an explanatory video in French here:
https://www.youtube.com/live/P2hcYcHyxnU?si=8-5hb7HC1qCNDelT

!!!!    PLEASE UPDATE OFFICIAL VERSION BEFORE       !!!!
!!!!    PLEASE MAKE THE PID BEFORE YOUR FIRST PRINT !!!!


--------------------------------------------------------------------------------------------------------------
FOR NETPUNE 4/4 PRO : This printer.cfg update is based on the official Elegoo version released 1.2.2.41
--------------------------------------------------------------------------------------------------------------

Changelog based 1.2.2.41 (16 november 2023)

• pressure adavance set 0.012

• add [exclude_object]

• add [gcode_arcs]

• add firmware retraction




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
FOR NETPUNE 4 Plus /4 Max : This printer.cfg update is based on the official Elegoo version 1.2.2.51
-------------------------------------------------------------------------------------------------------

(FR) Changelaog 16 novembre 2023
Changement fais après update 1.2.2.51 Neptune 4 Plus/Max :

• Modification du run_current X de 1.0 à 0.825 (voir réf moteur)
• Modification du run_current Y de 1.4 à 1.1 (voir réf moteur)
• Tous les interpolate stepper sont mis a flase (conseillé dans la doc klilpper)
• tous les stealthchop_threshold sont à 9999999 pour éviter les bruits moteur, si vous voulez gagner un peu de précision mettre la valeur a 0  
• adapter le on_error_gcode dans virtual_sdcard
• PRINT_START inchangé
• Kinematic_position passe de 0.2 à 3.0
• Les steps moteur reste a 64 (voir doc klipper)


Changelog 30 Oct 23
Changement fais après update 1.2.2.43 Neptune 4 Plus/Max: 


• Mise en page totalement refaite avec un index pour retrouver facilement les sections.
• Dans la section [virtual_sdcard]
• Suppression de 8 M300 (personnellement il y en avait trop)
• Ajout de la section Température pour afficher celle de l’host et du mcu à l'interface web
• pour les section tmc2209 stepper_x et Y
• changement du run_current de 1.2 à 0.8
• désactivation du hold_current
• interpalte mis à false plutôt que true (conseille de la doc klipper)
• stealthchop_threshold : 999999 au lieu de 0 pour éviter les sifflement moteur

• ajout de la section firmware_rectraction
• changement des valeur min et max température du bed et extruder (voir printer.cfg)
• ajout de l’option [screw_tilt_adjust] (option pour le bed leveling, faire un home avant)
• ajout de l’option [bed_screws] (option pour le bed leveling avec feuilles de papier, faire un home avant)
• une version du M600 différent
• Ajout des macros Load/Unload Filament
• Ajout des macro pour PID Extruder / BED 





(ENG) Changelog November 16, 2023
Change made after update 1.2.2.51 Neptune 4 Plus/Max:

• Modification of run_current X from 1.0 to 0.825 (see engine ref)
• Modification of run_current Y from 1.4 to 1.1 (see engine ref)
• All interpolate steppers are set to flase (recommended in the Klilpper doc)
• all stealthchop_thresholds are at 9999999 to avoid engine noise, if you want to gain a little precision set the value to 0
• adapt the on_error_gcode in virtual_sdcard
• PRINT_START unchanged
• Kinematic_position goes from 0.2 to 3.0
• The motor steps remain at 64 (see doc klipper)


Changelog 30 Oct 23
Change made after update 1.2.2.43 Neptune 4 Plus/Max:

• Completely redesigned layout with an index to easily find the sections.
• In the [virtual_sdcard] section
• Removal of 8 M300s (personally there were too many)
• Added Temperature section to display that of the host and mcu to the web interface
• for the tmc2209 stepper_x and Y sections
• change of run_current from 1.2 to 0.8
• deactivation of hold_current
• interpalte set to false rather than true (recommends from the klipper doc)
• stealthchop_threshold: 999999 instead of 0 to avoid engine whistling

• added firmware_rectraction section
• change of min and max temperature values ​​of the bed and extruder (see printer.cfg)
• addition of the option [screw_tilt_adjust] (option for bed leveling, do a home before)
• addition of the [bed_screws] option (option for bed leveling with sheets of paper, make a home first)
• a version of the different M600
• Added Load/Unload Filament macros
• Added macros for PID Extruder / BED



