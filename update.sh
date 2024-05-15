#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYhpm  ��E� ���/o������    @Β��� �i�4�&����ѓddh� 4z�D��D�i6�4Ȟ��� ڀ    h=@���L��ѐɐ  24��0�@�"4
�4M56�i�h4i��4�hf�
D�2��Aʏ,���&�T�s�l�5�����p>ͮ��nW�� @�BN����sat��r��.EW>t�����P2f��y�I�j�J��0�*IyL�XN��~�hg�I�� �u$$}A<�ִ؞�u��P��o��6:Z��b�ǡge�D�:�\4�$��ty��\A{<u#wF���_֨��������ȼ�
8��:d��x\_��.�����~7DY�; �ff��m��n2B�����Ħ$$0�.Q���M\C0"�X�b���H&�E�� �Ir���YeIrA�a2���T��@tV<�~�%��]%xʫ��O6�1Ѷ<��k�2C8�����J�pAmhk��`[��}H6ü����	�a�`���3�V*ɀ֍����_K@�bE☳U�� ���Pl��S�3 ���l�j1�d��.U���VJEL�`&Ns6M��`��B�p�r�.�h�"@Ӡ��dV��)�)�S�Ƽ��<�+S�>�6C�v���Q����1�h��S|a�����U�?J�:\�9LL�M�p,Tb,B��2e�ê_��M��v���a
J�!�r��w�
�iYvC�DL���'B���sgϩ��i�I��(�]c�� �(%% X�n�d(��Ɇ�CS5��n�f��ۋ��f<g��$��	$�		+W�]��BA��� 