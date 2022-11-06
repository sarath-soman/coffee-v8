mkdir out
ARCH=`uname -m`
echo "Linking for ARCH $ARCH"
g++ out/*.o -o out/main -lv8_monolith -Llibs/google/v8/out/$ARCH.staticlib/obj/ -pthread -std=c++17 -DV8_COMPRESS_POINTERS
cp libs/google/v8/out/$ARCH.staticlib/icudtl.dat out/