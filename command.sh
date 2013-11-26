
POS=$1

if [ "$POS" == "" ] ; then
    POS=myiso
fi

mkisofs -o ../jmdkina.iso \
   -b isolinux/isolinux-debug.bin -c isolinux/boot.cat \
   -no-emul-boot -boot-load-size 4 -boot-info-table \
   $POS
