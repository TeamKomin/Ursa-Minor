## Script written by ytt3r to minimize the ammount of time and effort that it takes
## to build Ursa Minor.
echo "Changing directories"
cd Kernel
echo "Making Clean (it will fail)..."
make clean
echo "Ensuring the defconfig is correct..."
make aries_captivate_defconfig
echo "Building kernel..."
make
echo "Done."
