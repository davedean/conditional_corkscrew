#!/bin/bash

# if/then corkscrewer for sometimes proxying and sometimes going direct, because honestly internet .. how did you not figure this out yet?!!

# echo $@ > /tmp/allargs

if [ "`networksetup -getcurrentlocation`" == "Work" ] ; then
  ~/.ssh/corkscrew $@
else
  # bit of a hack :(
        shift
        shift
        nc $@
fi
