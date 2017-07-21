#!/bin/bash

set -eu

[[ ! -d vanilla-rtb ]] && git clone --recursive https://github.com/venediktov/vanilla-rtb.git

[[ ! -d ../build/vanilla-rtb ]] && mkdir -p ../build/vanilla-rtb
cd ../build/vanilla-rtb

cmake -G 'Unix Makefiles'\
    -DCMAKE_INSTALL_PREFIX="$(readlink -f ../../pkg/vanilla-rtb/snapshot)"\
    -DVANILLA_NO_EXAMPLES=1\
    "$(readlink -f ../../code/vanilla-rtb)"

echo 'run "cd ../build/vanilla-rtb && make -j$(nproc) -l$(nproc) install" to build the vanilla-rtb"'
