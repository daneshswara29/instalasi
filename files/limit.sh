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
BZh91AY&SY�iX  T��}�sF�� ?���  D  � P @s�T�C�� � �0  ��M��4�bmM2hh�FA��� �4�&C 0L  ��Jx'�e?Rd�4h  �G[i���S�������a<8@	��i�$����a;&Z+o���bC�򪪬.�%��Y0\��^y�GOwft6y�g��n,iTU,-���.����U�K�K��0S�7��V*�d���x4g��}��հ��M����<#��<�BS�t�3e���X��K�1G{����R��/�ț���<�{�U���|�'	C��!��5��	9����J��I$��/�r��˶����/s*�1�[ߧ~+����m�Q�%���x�:�2�f��-�O
Y� ��$�I$�`L^���=3=�T�5�x�ƚ��(�x�]~�#��&�ߓz�1�'߃���v߰�d�N\�J�V���.50��e�k�����L�	3�tE���K�'5�a~q����i�Z��	� J2a��.g$�4�i��f�4G^��c�?b'��"����r?�	g�]��BCM�`