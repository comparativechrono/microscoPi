# Generic Raspberry OpenPi instructions using the wonderful work of Dan MacLean

## Use in conjunction with:
git://github.com/TeamMacLean/install_opimage

## Steps:
Wipe disc image
Rewrite with Jessie
Expand filesystem, enable camera
sudo apt-get update
sudo apt-get install wpagui
cp /usr/share/applications/wpa_gui.desktop ~/Desktop

Wlan0 to eduroam - enter in the edit page
git clone git://github.com/TeamMacLean/install_opimage
cd install_opimage
make ap

SSID: TH004 Passkey: raspberry

cd install_opimage
make software

insert usb stick, unmount and reformat drive: 

sudo umount /dev/sda1 | sudo mkfs.ext4 /dev/sda1 -L TH004

reformat drive or reboot:
sudo mount /dev/sda1 /mnt/TH004

The above is not permenant, but needs to be done if you don't reboot (JUST REBOOT!)

memory stick located at media/pi/TH004

give file permissions to TH004

cd media/pi/TH004 | chmod 755 *

copy opimage folder to usb stick

Run by doing the following:

cd openpi_interface | nohup python -m CGIHTTPServer 8000 &

Go to server at 10.10.10.1.8000
Use GUI to start openpi image collection
