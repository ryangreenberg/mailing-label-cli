#!/bin/bash

set -eou pipefail

make-labels \
    --font RobotoSlabRegular:Roboto_Slab/static/RobotoSlab-Regular.ttf \
    --font RobotoSlabBold:Roboto_Slab/static/RobotoSlab-Bold.ttf \
    --merge-data addresses.tsv \
    --format "<font name='RobotoSlabBold'>%name</font>%n<font name='RobotoSlabRegular'>%address%n%city, %state %zip</font>"
