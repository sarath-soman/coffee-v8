cd libs
mkdir v8
cd v8
fetch v8
cd v8
git config branch.autosetupmerge always
git config branch.autosetuprebase always
git pull
gclient sync