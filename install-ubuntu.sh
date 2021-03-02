sudo apt install build-essential autoconf automake libtool git libsdl2-dev

git clone https://github.com/libtcod/libtcod.git /tmp/libtcod
cd /tmp/libtcod/buildsys/autotools
autoreconf -i
./configure
make
sudo make install

echo <<" "
# libtcod installed in /usr/local/lib 
# you should probably add /usr/local to PKG_CONFIG_PATH and LD_LIBRARY_PATH

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=/usr/local/lib

