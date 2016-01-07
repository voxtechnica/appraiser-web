#!/bin/bash
# Build a Debian package for the Appraiser Service Web Application
export DEBIAN_FRONTEND=noninteractive

# Build the project (assuming this hasn't already been done)
npm install
bower install
npm start build

# Package Version
VER=$(date +%Y.%m.%d-%H%M)
#VER="$CIRCLE_BUILD_NUM"
PKG=voxtechnica-appraiser-web_$VER
echo "Building $PKG"

# Put the required files in a package folder
mkdir -p $PKG/var/www/appraisers
cp -a build/* $PKG/var/www/appraisers/
cp -a deb/etc $PKG/
cp -a deb/DEBIAN $PKG/
echo "Version: $VER" >> $PKG/DEBIAN/control
echo "$VER" > $PKG/var/www/appraisers/version.txt

# Build the Debian Package
dpkg-deb -b $PKG
rm -Rf $PKG

# TODO: Sign the package and put it in a private apt repository
echo "Complete."
