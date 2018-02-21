#!/bin/bash
sed -i -e '/#undef bool/d' khmm_wrap.c
pushd kext
    rm -rf *.*.* # cleanup the precompiled Windows libraries
    make
    cp *.*.*/* $PREFIX/lib # Move kext into lib
popd
cp *.pl $PREFIX/bin
