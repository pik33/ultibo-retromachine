sudo cp /boot/kernel7.img /boot/kernel7_l.img
sudo cp kernel7.img /boot/kernel7.img
if [[ "$?" == "0" ]]
then
    sudo reboot
else
    echo unsuccessful update of /boot/kernel7.img
fi
