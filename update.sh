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
BZh91AY&SY�8ha  �_�Tp}���~�ގ����  D   � P @�U����ȃ%�L	� =C��h��@�Q� B2h��&�M �  ��24Ѧ@b`� h�@`L�$B��&24Ci��5@�i驦���� (��Ӝ�ՇBlN�x�5�R&V�D��m�"&��fjY��ߦi��$
�v�[_����C�_��s���R��J{F�n���Q��umy�[����b���_P�d{
�0	B̌|�z����r�Zi��}��MÓR�_���c}�J�#u� ��&^�\필ȢR�r�+���� �$#�q�c�=Z�h��UB� ��l�M�ͺjS��Ln�->h��;����g�ɭ�T)I2C:�]ʱE���ʘROFu���)̥D닕��l�:3��+��Q4@�C��ߍ�<�[;�S9�3�	]g8
�a�]5���t(!���"잌�D�4J��F�d�7#�P��Y\m�L��F���x���"��GM�3d�0�-��o��0d��Wtt�U}m�uX�8�pL�Y��J$[&�O�A���+\��Cs�q(PV���K��!��S���X_�Vs����I�Q����o������,e��s:�<H�Z,Q�R��_ca���~���FD���p��	����+�f����V&�IY[�,��ٍ�	0�c�A��v�N�C�Y2�,Fl��]t4*I�BNAXtR��m(��ɉ*8+�p�\Ad�B����Y���Z&f���st�g)�8����;�/��$	��Nl���t��.4��w$S�	���