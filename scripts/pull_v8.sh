cd libs
mkdir v8
cd v8
fetch v8
cd v8
git config branch.autosetupmerge always
git config branch.autosetuprebase always
git fetch
git checkout $V8_STABLE_VERSION
gclient sync