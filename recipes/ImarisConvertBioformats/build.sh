cd ImarisConvertBioformats
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE="Release" -DJAVA_HOME="${PREFIX}" -DFreeImage_ROOT="${PREFIX}"
make
make install
