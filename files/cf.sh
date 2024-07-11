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
BZh91AY&SY�u��  �_�}�����~����  D  � P P�h U !C�i�       P  B(�M��OMO�=F�P1 h�CL� ��4���!�� d40F��4hA� �L��40����dѠ  4H0M50��$Ƃ4�'�&L�&Mmj=���E�8\{�!cK��U�u o(�0��eBcl#�s���w:,�:B [�>=�!����W��(.$_�)g����Z�#v�N5�Ny�jy��y�(KTs*J��[C���{dS�0�_e5l��A�(:0���H�%�Z����=���i �S�=��� �\b�K���r�H@b�ۀZ��(��\���2��c�Sx){*f	�#��>��輯�ԩt���BE?�,ỡ��-Y����N�N�J����1���ME#�X�N���v8#4��n])����,���0Kwχ��n~����T�X�x�aԅ���@3�u�Uv%3L��$B�#�}Q����:9���������
�iz���H�VtX��L�������;0YÆ �IP��eI.K���5��v�>o�����8���Ưl0fm�r\LZ�����G�Yi��QT5�L���:�h�Mb R�����-z��� �c�����C6^��}us�
.�&"XQpr(�|�$ӥ!tQ�B$�'��,��#�=�Նåk��1�ޙ���ĳ8ohF�7���Xae��!~f
��|�>�i ��f��"�_
tb���"0A�¡:�G�с�D��1��B�=���;G�	�<���Vnl�3���၅� R��z��0�`k�V׻��*��v�=��4?v}AT-�lP[\��O��O2�T��k��ڃ=99�F��u{1Z�Q>�f�钰m�pP+/⩠@����t�@�6.1nL�JZ�E�#B�:ܸ,�`����[.�7��`�>��x*?@��i��ЄV/h7+T�H�d��!��/�~
�mq N?�w$S�	^��