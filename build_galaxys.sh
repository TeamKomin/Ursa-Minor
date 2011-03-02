## Script written by ytt3r/Evan to minimize the amount of time and effort it takes to build Ursa Minor.
echo "Changing Directories..."
cd Kernel
echo "Making clean... It might fail."
make clean
echo "Ensuring the defconfig is correct..."
make aries_galaxys_defconfig
echo "Building kernel..."
make
echo "Done."
