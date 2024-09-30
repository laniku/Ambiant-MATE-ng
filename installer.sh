#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "[1/4] Installing themes..."
cp $SCRIPT_DIR/usr/share/themes/* /usr/share/themes/ -r
echo "[2/4] Installing icons and cursors..."
cp $SCRIPT_DIR/usr/share/icons/* /usr/share/icons/ -r
echo "[3/4] Installing sounds..."
cp $SCRIPT_DIR/usr/share/sounds/* /usr/share/sounds/ -r
echo "[4/4] Installing backgrounds..."
cp $SCRIPT_DIR/usr/share/backgrounds/* /usr/share/backgrounds/ -r
echo "Done!"
exit