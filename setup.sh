#!/usr/bin/env sh

# The setup for ivpy is a little convoluted because it's not
# in a proper package as of March 2020. The fonts dir is needed
# or plottools will crash because it requires this specific font
git clone https://github.com/damoncrockett/ivpy
#mv ivpy/src/ivpy ./utils # Going to use the committed version of these scripts
mv ivpy/fonts ./fonts
rm -rf ./ivpy

echo "Done copying files. Now go modify ivpy plottools.py "
echo "to fix relative import problem. The fonts directory "
echo "should be referenced with ./ instead of ../. This is "
echo "an artifact for ivpy being in a rough pre-beta state."