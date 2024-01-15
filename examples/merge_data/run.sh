#!/bin/bash

set -eou pipefail

make-labels --merge-data addresses.tsv --format "%name%n%address%n%city, %state %zip"
