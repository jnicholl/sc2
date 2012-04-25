PREFIX=$(pwd)/../../install

PATH=${PREFIX}/../porting-utils/bin:$PATH \
BUILD_HOST=QNX \
PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig \
PKG_CONFIG_LIBDIR=${PREFIX}/lib/pkgconfig \
CPPFLAGS="-D__PLAYBOOK__ -D__QNXNTO__ " \
CFLAGS=" -g " \
LDFLAGS="-L${QNX_TARGET}/armle-v7/lib -L${PREFIX}/lib -lsocket " \
./build.sh uqm config
