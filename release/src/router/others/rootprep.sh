#!/bin/bash

ROOTDIR=$PWD

mkdir -p -m 0755 dev
mkdir -p -m 0755 proc
mkdir -p -m 0755 tmp
mkdir -p -m 0755 jffs
mkdir -p -m 0755 cifs1
mkdir -p -m 0755 cifs2
mkdir -p -m 0755 opt

ln -sf tmp/mnt mnt
ln -sf tmp/var var
ln -sf tmp/etc etc
ln -sf tmp/home home
ln -sf tmp/home/root root
(cd usr && ln -sf ../tmp)

# !!TB
ln -sf /tmp/var/wwwext www/ext
ln -sf /tmp/var/wwwext www/user
ln -sf /www/ext/proxy.pac www/proxy.pac
ln -sf /www/ext/proxy.pac www/wpad.dat
