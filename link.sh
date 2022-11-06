mkdir out
g++ out/*.o -o out/main -ld8 -Llibs/google/v8/out/arm64.release/ -ld8 -pthread -std=c++17 -DV8_COMPRESS_POINTERS
cp libs/google/v8/out/arm64.release/icudtl.dat out/