cd libs
mkdir google
cd google
fetch v8
cd v8
git config branch.autosetupmerge always
git config branch.autosetuprebase always
git fetch
ARCH=`uname -m`
echo "Building v8($V8_STABLE_VERSION) for ARCH $ARCH"
git checkout $V8_STABLE_VERSION
gclient sync
#Build Exec
# ./tools/dev/gm.py $ARCH.version

#Build Static library
# ./tools/dev/v8gen.py $ARCH.release.sample
# gn args out.gn/$ARCH.release.sample
gn gen out/$ARCH.staticlib --args="dcheck_always_on=false is_component_build=false is_debug=false target_cpu=\"$ARCH\" use_custom_libcxx=false v8_enable_sandbox=false v8_monolithic=true v8_use_external_startup_data=false"
ninja -C out/$ARCH.staticlib v8_monolith

