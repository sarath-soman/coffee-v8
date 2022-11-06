cd libs
mkdir google
cd google
fetch v8
cd v8
git config branch.autosetupmerge always
git config branch.autosetuprebase always
git fetch
echo "v8 Version: $V8_STABLE_VERSION, Arch $ARCH"
git checkout $V8_STABLE_VERSION
gclient sync
#Build Exec
# ./tools/dev/gm.py $ARCH.version

#Build Static library
./tools/dev/v8gen.py $ARCH.release.sample
ninja -C out.gn/$ARCH.release.sample v8_monolith

