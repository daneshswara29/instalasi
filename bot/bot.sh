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
BZh91AY&SY�-L  ����}����ޮ����  D   � P PM��ܷnQʎ�8J"eOHda4m4�=F m M���&������MP4h  h 4   )����?Ba!�Ph  hhC@���F�0��M4hM4   I!4S�j���І&�4���d x��`U֠�C�u�},�;�~*/��L^��q
�h�'��jV�QB�4��&N�H[P��{*z�5`ȃ��f�Qn�r�;�BL��)����cZhO,AĴ;�&cb1�a6�_m���0�qt.���	��BN�������!p�	bpF':�1��������cw�C�rXѴv ��:�X�;��F�6�gg��I*�Ҷ�9C�aX���h��88��j��UOj��e��eeA�H�vSx��UE��|'�B1Ed]���tm4�$��|\⷏��\{���b���6����Rރ�k���K�ݕ�Q/N�nkY��ٓ�SA���󠨗��i�;����wG	��|h��?���#�SVô#��=�/TҬ��I�
�}UĬC���%4�j0��J0���x��h�UTR�qu-t0�r����劎F�P�A�:V���.�F�2J��ʅ�9Xng	�ߴ��)����GW�1a� �3x�)���&#��E<�U!�FIhW� ���ܪ#'ԘC)����{LTA�>j�6��"mp�p��9�QO ��tB(��:�q��3b�:��(b�i���p@�;9 pf�F^��ji�iL�.'	���J[�C�t�8�2���.�P��޴w�p��|Ѡ�s�$�]k>(C����|Qu��u��C� 4I<x^� ����s�g5}Z����ez'�a��w܀��z�V�%#!y��1R��ˣ3�0�x�u|yn��=�mI�Ÿ�`3./�ԏW��X�V�����9;>���TE`gT9=�@�7���(`�{����0���
':��*2JU%$k�vk�1��j=���n)]���'E�Ő+��v�"�B*�����d4Ƕ�63��I�	en&���p$�A5U�(�8)���e��d�`�����&cFC�a�lR<S�j�BjF�j�Xw��V�BA�?�A�!�H\�ä3�P隌}��"�(Hv��� 