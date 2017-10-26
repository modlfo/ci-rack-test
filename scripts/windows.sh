export PATH=$PATH:/c/msys64/mingw64/bin
shell gcc -dumpmachine
pacman -S -yy --noconfirm git make tar zip unzip mingw-w64-x86_64-gcc mingw-w64-x86_64-cmake
mkdir build
cd build
git clone https://github.com/VCVRack/Rack.git
cd Rack
git submodule update --init --recursive
make dep
make -j 4
cd plugins
git clone https://github.com/modlfo/VultModules.git
cd VultModules
make
make dist
cd dist
zip VultModules.zip ./VultModules/*
cp VultModules.zip ../../../../VultModules.zip
cd ../../../../