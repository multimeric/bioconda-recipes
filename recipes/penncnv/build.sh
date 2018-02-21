#!/bin/bash
pushd kext
    sed -i -e '/#undef bool/d' khmm_wrap.c # Fix syntax
    rm -rf *.*.* # cleanup the precompiled Windows libraries
    CFLAGS=-fPIC make
    cp *.*.*/* $PREFIX/lib # Move kext into lib
popd
cp *.pl $PREFIX/bin
