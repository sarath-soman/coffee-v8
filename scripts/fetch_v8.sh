CUR_DIR=`pwd`
echo $CUR_DIR
export PATH="$CUR_DIR/libs/depot_tools:$PATH"
echo $PATH
chmod +x scripts/pull_v8.sh
scripts/pull_v8.sh