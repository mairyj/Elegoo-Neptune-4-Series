# Bienvenu sur mon GitHub pour les Elegoo Neptune 4

Mes chers camarades bien le bonjour ! 

--------------------------------------------------------------------------------------------------------------

/!\/!\/!\/!\/!\ Merci de prendre le temps de faire un backup de votre configuration et de bien suivre les instructions /!\/!\/!\/!\/!\
Serie de tutoriels : https://youtu.be/tKLLveLwOtk?si=3fk4zhH4wfSTtkz2
--------------------------------------------------------------------------------------------------------------


Vous trouverez sur ce GitHub mes travaux sur la gamme Neptune 4 de chez Elegoo.

J’y réunit les versions officielles fournies par Elegoo trier et mises dans un dossier pour chaque Neptune 4.

Les tutoriels à la racine du github sont compatibles avec toute la gamme. 
Vous allez retrouver : 

- Comment ajouter une webcam à votre Neptune 4.
- Comment ajouter l’option Timelapse
- Une procédure afin de réinstaller l’EMMC (version de Elegoo je travaille sur un tutoriels de mon côté) 

Dans chaque dossiers vous allez trouver : 

- Les START et END Gcode pour cura (je vais ajouter par la suite pour les autres slicer.) 
- Les paramètres pour ajouter la machine à la dernière version de cura. 
- Des fichiers Gcodes afin d'effectuer le test de pressure advance et débit.
- Toutes les versions officielles des firmwares.
- Une version personnelle du fichier de configuration printer.cfg 
- Un profil de BASE Cura pour du PLA (d’autres suivront ainsi que pour d’autre slicer)

* Pour les Neptune 4 et 4 Pro un dossier My printer.cfg est en plus car il y a plusieurs versions avec des moteurs différents j’ai donc fait plusieurs configuration (voir pdf pour savoir lesquels choisir). 

Qu’est ce qui change dans mon printer.cfg ? 

- Le Pressure Advance a déjà été adapté selon mes propres test (à vous de refaire le test pour voir si la valeur est correct chez vous) 
- ajout de l’option [exclude_object]
- ajout de l’option [gcode_arcs]
- ajout de l’option Firmware retraction 
- ajout des températures pour le MCU et le Host dans l’interface web 
- changement des microstep de 16 à 64 (recommander dans la doc klipper)
- changement de l’interpolate de true vers false (recommander dans la doc klipper)
- ajout de l’option [screw_tilt_adjust]
- ajout de l’option [bed_screws]
- ajout des macro pour les PID (voir interface web) 
- ajout des macro load / unload filament sur l’interface web
- run_current adapté pour éviter que les moteurs XY ne chauffent trop.


J’ai réaliser une série de tutoriel en français afin de vous aider dans chaque étapes de la configuration et calibration de votre Neptune 4 : https://youtube.com/playlist?list=PLr0fIhRm8s3-H9RbYeymKW24MqN_aebCA&si=y1KEBVcwO-opS6wy

--------------------------------------------------------------------------------------------------------------

/!\/!\/!\/!\/!\ Si votre imprimante fonctionne bien, il n’est pas nécessaire de faire une mise à jour !!!! N’utiliser mon printer.cfg que si vous savez ce que vous faites ;-) j’ai effectué ses modifications principalement pour moi et elle fonctionne parfaitement sur mes imprimantes. Je les partage donc avec la communauté. Je ne pourrais être tenu responsable de ce que vous faites avec vos imprimantes, le but ici est d'aider et de partager, toutes vos remarques sont bonnes à prendre afin d'améliorer mes configurations et ainsi améliorer l'expérience avec cette gamme d'imprimantes. /!\/!\/!\/!\/!\
--------------------------------------------------------------------------------------------------------------

# Welcome to my GitHub for Elegoo Neptune 4

Hello, my dear friends!

-------------------------------------------------- -------------------------------------------------- ----------

/!\/!\/!\/!\/!\ Please take the time to make a backup of your configuration and follow the instructions carefully /!\/!\/!\/!\/!\
Tutorial series: https://youtu.be/tKLLveLwOtk?si=3fk4zhH4wfSTtkz2
-------------------------------------------------- -------------------------------------------------- ----------


You will find on this GitHub my work on the Neptune 4 range from Elegoo.

I bring together the official versions provided by Elegoo to sort and put in a folder for each Neptune 4.

The tutorials at the root of the github are compatible with the entire range.
You will find:

- How to add a webcam to your Neptune 4.
- How to add Timelapse option
- A procedure to reinstall the EMMC (version of Elegoo I am working on a tutorial on my side)

In each folder you will find:

- START and END Gcode for cura (I will add later for other slicers.)
- Settings to add the machine to the latest version of cura.
- Gcodes files to carry out the pressure advance and flow test.
- All official firmware versions.
- A personal version of the printer.cfg configuration file
- A BASE Cura profile for PLA (others will follow as well as for other slicers)

* For the Neptune 4 and 4 Pro a My printer.cfg folder is additional because there are several versions with different engines so I made several configurations (see pdf to find out which ones to choose).

What is changing in my printer.cfg?

- The Pressure Advance has already been adapted according to my own test (it's up to you to repeat the test to see if the value is correct for you)
- added option [exclude_object]
- added option [gcode_arcs]
- added Firmware retraction option
- added temperatures for the MCU and the Host in the web interface
- change of microsteps from 16 to 64 (recommended in the klipper doc)
- change of interpolate from true to false (recommend in the klipper doc)
- added option [screw_tilt_adjust]
- added option [bed_screws]
- added macros for PIDs (see web interface)
- addition of macro load / unload filament to the web interface
- run_current adapted to prevent the XY motors from heating up too much.


I have produced a series of tutorials in French to help you in each step of the configuration and calibration of your Neptune 4: https://youtube.com/playlist?list=PLr0fIhRm8s3-H9RbYeymKW24MqN_aebCA&si=y1KEBVcwO-opS6wy

-------------------------------------------------- -------------------------------------------------- ----------

/!\/!\/!\/!\/!\ If your printer is working fine, there is no need to update!!!! Only use my printer.cfg if you know what you are doing ;-) I made its modifications mainly for myself and it works perfectly on my printers. So I share them with the community. I cannot be held responsible for what you do with your printers, the goal here is to help and share, all your comments are worth taking in order to improve my configurations and thus improve the experience with this range of printers. printers. /!\/!\/!\/!\/!\
-------------------------------------------------- -------------------------------------------------- ----------