mkdir out
g++ out/*.o -o out/main -lv8_monolith -Llibs/google/v8/out.gn/arm64.release.sample/obj/ -pthread -std=c++17
cp libs/google/v8/out.gn/arm64.release.sample/icudtl.dat out/