#!/bin/bash

# -- shows the line by line step
bash -x ./filename.sh 
sh -x filename.sh


# or 



# -- add -x to the shebang (but only works for here )
./filename.sh       


# or


# -- select from where to where
set -x
...
...
...
set -x
