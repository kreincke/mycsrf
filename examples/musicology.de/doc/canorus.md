# (1) canorus-installation

## (1.1) prep
see https://github.com/Ichthyostega/Canorus-deb
- sudo apt-get install build-essential
- sudo apt-get install libcurl4-gnutls-dev
- sudo apt-get install libgeoip-dev
- sudo apt-get install libxml2
- sudo apt-get install libxml2-dev
- sudo apt-get install libxslt1-dev
- sudo apt-get install ruby-dev
- sudo apt-get install debhelper

## (1.2) install
- download sources https://sourceforge.net/projects/canorus/
- extract sources tar -xjvf canorus-0.7.3rc3.tar.bz2
- ignore https://github.com/Ichthyostega/Canorus-deb 
  but follow the instructions how to build a debian package
- > sudo apt install cmake g++ make libqt5webkit5-dev libqt5svg5-dev qtbase5-dev qttools5-dev qtwebengine5-dev
- Download the SVN/release version of canorus, go to Canorus root directory and run:
- > ./debian/rules binary
** CMake Error at /usr/share/cmake-3.10/Modules/FindPackageHandleStandardArgs.cmake:137 (message):
  Could NOT find ALSA (missing: ALSA_LIBRARY ALSA_INCLUDE_DIR)
** sudo apt-get install libasound2-dev
** sudo apt-get install swig
