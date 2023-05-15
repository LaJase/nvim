#!/usr/bin/sh

export NVIM_TESTER=./local-environment

LOCAL_DIR=$(dirname "$PWD")
export LOCAL_DIR

alias nvimtest='XDG_DATA_HOME=$NVIM_TESTER/share XDG_CACHE_HOME=$NVIM_TESTER XDG_CONFIG_HOME=$LOCAL_DIR nvim'

nvimTest() {
    rm -rf $NVIM_TESTER
    nvimtest
}
