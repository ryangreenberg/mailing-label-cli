#!/bin/bash

set -eou pipefail

make-labels --template avery_5195 --content "<font size='8'>Elizabeth Bennet%nLongbourn Estate%nHertfordshire, England</font>"
