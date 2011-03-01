## Script written by ytt3r to minimize the ammount of time and effort that it takes
## to build Ursa Minor.
echo "Changing directories"
cd Kernel
echo "Making Clean (it might fail)..."
make clean
echo "Ensuring the defconfig is correct..."
make ga3_eur_defconfig
echo "Building kernel..."
make
echo "Done."
