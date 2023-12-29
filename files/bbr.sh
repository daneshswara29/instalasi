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
BZh91AY&SY㤢� V�x0 }����ގ����  D  � P `\>����� �� �C@ѦF�4�L �4�	�q��h�#Md& ��d����	=&@L 4a4d�L0 !�	&I<IOL5�dm6��6��Q��4ѐi�=&�$z�T�����A���M    �� �� Md�`F�Sz��jhP~��4d��z�4j��Y�j�%�%�?7��=c��=�J���Û��x�~�hb���IW��f�ͱ҆�D2QM������qم�9ww�C��d�y�]Y�dAB=Z;�Z�?�V�~�a�t�٩##��BI���ELA\>����X�����~@�Ձaրm\6q�J8"~�[T���k��G'Tm�T��G�pq��.��gH�P��m�^i;Z�����<��n=&��*��fj4���a��y�廙�f������F��d<\����i��9a�)�]���@K��Nj&�@����D��`�А`YTE�RلX�3��c�ғ�df�H��ߝz�� Y�A��y�s�)��M�I3@&!����JZX7R� ̆<�4���ᾀsM���zm�Cq��12�gl}�N
e �Bgk&���m2���&�7�i�Y��S�5�6�$��]�:6ۤҨJ��V{;x��N�q����" �E2��9��ó�ƃ�6�[[����W�BE`�_����B[�(L�u��Hk���A�Q���s\�7��X(¨-"�e;K�0����U��;4�dÓ�P���H�jDgfE⠡�5S��W/%�֦`,��y8�Ph�F������<�� �0 �$����]i������7K�u���q��$�Q��G>��*$"nԟGt�`�j���t�gHH�,�2��5��3�����d&�2������H�`�8��j�� ʚ�;�B=B<g����C~DdB6#d7Ơ�*_��7	��`݂�d^��R�%enZ����6{�.<�(��"�b�/��(��W-���;�N���(`�e,P��3
�����Q��\��`l�S�`_�D�w�ͰfO�`�!��H`�a3 0��+C��x����F���*&�,�Khte����1%ev�q+�q���*��!"�O�$$^X�p���%��H�6v!���oś�%�ZV����|R��.e��3A}�?q�7D8�8�a!m�*��ǡtH.LCD���~�A�e��Cb=2Qv2eG\E�ha�HA�u��B�K�ќ�H�����x��o��LQb@��Pyq�?�;�oj��{&u�P�&5�u"�	��ў^E�Ëq
=>B5E L(�3b��>p�nZ�h�8@��]f{[�|@�Cj�A4����N]R6m�Jk�Fg�N�����U�ڶ��p�qX���Pt@s�(�!�6�:`ɷ��\��W��	(0M��y��Ñ[`稨���
��恱f|15X��
���/`Z4���]٩�5�!`1��[��E;Uk�QFA���+��T!��	J��2)	���fIt����,H����oC�R_��A|$�6J-����}#l-�h`�D8�:�@�&�L�%�aEZm~wɧ�)U��ۊ�l��dˀ����9P`>6L'mlٿR�˶Z/p]�@m,'��g�f��нq�B2���r�h�o�,\X�w�n��¹�1Z��c�ҝE&��n0�^,H�=�j��$"@�қ"`Ŝ.'���8��"Ć��8T�B�x��ik�y��F�"!�2 ,a�P����Ћ��##n��(�iZ�I�&�ၳihnH)Y~��Հ�h��~���o�D=��g%�K�w�����
�Ιe̱V3f�%���@��E�rD���H�*$�% ����~�Q?H���h������ ���H�
t�\ 