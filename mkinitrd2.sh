#!/bin/bash

ROOTDIR=$1

if [ "$ROOTDIR" == "" ]; then
    ROOTDIR=betainitrd
fi

echo "gen init ramfs list ... "
./gen_initramfs_list.sh $ROOTDIR/ > filelist
echo "gen init cpio to get initrd...."
./gen_init_cpio filelist > initrd
echo "gzip initrd ..."
rm initrd.gz -rf
gzip initrd

echo "copy initrd.gz to myiso/kernel ..."
cp initrd.gz myiso/kernel -rdf
echo "copy down ..."

