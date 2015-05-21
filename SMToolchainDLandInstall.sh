#!/bin/bash
read -p "Enter the full directory path you have AICP with SaberMod installed: " dir
mkdir ~/tempdlforsaber
cd ~/tempdlforsaber
for chain in http://sabermod.net/arm/arm-eabi/arm-eabi-4.8-04292015.tar.bz2 http://sabermod.net/arm/arm-eabi/arm-eabi-4.9-05182015.tar.bz2 http://sabermod.net/arm/arm-eabi/arm-eabi-5.1-05182015.tar.gz http://sabermod.net/arm/arm-eabi/arm-eabi-6.0-05182015.tar.gz http://sabermod.net/arm64/aarch64/aarch64-6.0-05182015.tar.bz2 
do
	echo -e "Downloading $chain"
	curl -O $chain
	echo -e "Done downloading $chain"
done
echo -e "Extracting... This may take a while"
cat *.tar.bz2 | tar -xvjf - -i
for DLedArmTC in arm-eabi-4.8 arm-eabi-4.9 arm-eabi-5.1 arm-eabi-6.0
do
	echo -e "Installing $DLedArmTC"
	cp -f -r $DLedArmTC/ $dir/prebuilts/gcc/linux-x86/arm/$DLedArmTC
done
for DLedArm64TC in aarch64-6.0
do
	echo -e "Installing $DLedArm64TC"
	cp -f -r $DLedArm64TC/ $dir/prebuilts/gcc/linux-x86/aarch64/$DLedArm64TC
done
echo -e "Cleaning up..."
rm -rf ~/tempdlforsaber
echo -e "All done, Enjoy!"
