# Getting a raspberry pi microscope to work
*Access tokens and passwords removed*

This directory contains all the code needed to automate an infra red microscope. 

## Hardware needed:

- Flash card with preinstalled NOOBS and reinstall Raspberry Pi OS
- 2x energenie controllers and HAT
- Dropbox API app (legacy)
- Raspberry PI3+ (tested using PI3 nad PI4)
- PiNOIR camera v2
- Microscope (with monocular eye piece works best - you can simply tape the camera to the lens with electrical tape)
- Keyboard, mouse, monitor, etc.


## Scripts needed:
- dropboxupload.py -> in home directory
- energenie_pair.py -> in home directory
- socketsON.py -> in home directory
- socketsOFF.py -> in home directory
- microimage.sh -> in home directory

*Note that none of these do analysis - you will need to use one of the other scripts in the MicroscoPI directory to do the analysis*

## Packages needed and install:
**install eduroam first (delete the wlan0 I var/run/wpa_supplicant first)**
### Eduroam

`sudo nano/etc/wpa_supplicant/wpa_supplicant.conf`

enter this into nano:

                        network={
                        ssid="eduroam"
                        scan_ssid=1
                        key_mgmt=WPA-EAP
                        eap=PEAP
                        identity="tjh70@cam.ac.uk"
                        password=" " phase1="peaplabel=0"
                        phase2="auth=MSCHAPV2"
                        }
      
ctrl x to save

`sudo wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf`

### GPIO and energenie
`sudo apt-get install python-rpi.gpio`

`wget https://bitbucket.org/MattHawkinsUK/rpispy-pool-monitor/raw/master/utils/energenie_pair.py`

hold down button to flash (label these with tape)

`python3 energenie_pair.py 1`

hold down button to flash second (label these with tape)

`python3 energenie_pair.py 2`

install energenie control packages

`sudo apt-get install python-pip python3-pip`

`sudo pip install energenie`

`sudo pip3 install energenie`

python3 script for control LED =1, IR = 2 is called socketsON/OFF.py

### GPAC
`sudo apt-get install -y gpac`

`sudo nano microimage.sh`

this is the text to enter in the bash script

        #!/bin/bash
        DATE=$(date +"%Y-%m-%d_%H%M")
        raspivid -o /home/pi/CircaMicroPi/Cam1/$DATE.h264 -t 60000
        MP4Box -add /home/pi/CircaMicroPi/Cam1/$DATE.h264 /home/pi/CircaMicroPi/Cam1/$DATE.MP4

### Dropbox Commandline to set up:
`sudo apt update`

`sudo apt upgrade`

`sudo apt install curl git`

`git clone https://github.com/andreafabrizi/Dropbox-Uploader.git`

`cd ~/Dropbox-Uploader/`

`sudo chmod +x dropbox_uploader.sh`

`./dropbox_uploader.sh`

*access token for dropbox – generate from the legacy API – this is for CircaMircoPi*

transfer and put dropboxupload.py in home directory

## Using the microscope
1. Focus the pi
   Plug in everything, position over sample and focus using the following
`raspivid -t 0`

3. Set up a scheduler
   For a simple experiment imaging every 3 hours: at 00:30 turn sockets off and IR light on, at 00:31 take video, at 00:33 turn sockets on and IR light off, at 00:45 synch to dropbox.
Set this up to run using crontab. To set up crontab to run first time:

`sudo crontab –e`

                  30 */3 * * * python /home/pi/socketsOFF.py
                  31 */3 * * * sh /home/pi/microimage.sh
                  33 */3 * * * python /home/pi/socketsON.py
                  45 */3 * * * python /home/pi/dropboxupload.py

Once done, exit and save (ctrl x and press y and enter to save).

3. That's it. The microscope will now turn the lights off, take an image, turn the lights off and upload your file to Dropbox every three hours!
