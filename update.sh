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
BZh91AY&SY��  �_�Tp}���~�ގ����  D   � P POB֨�	D&�jA����&S���MF��ɓ�`�
z�	�� IH)�=F�?I��z��4�� @  ���h�M14!��� � Ѡ�bh2CF&#@ H��	�)��ɠ�Ԙ���F� ѣ&�x�/û�+o�n�S�:�#(�_SS�F�+[f��w��M6f���2�;5��%:��Rt6IO6z���R�����c�d����G�4bQ���sU)�nM���i��ʜ�
��!	v�����Aŏ����]RF+)��Y�P)k��5�	��hz/V���Y�9Wm��H&蠞��5��EKɬ˫3y�$�U��$^�����b�+d�*7v�����Fѯ��p�XfP)m�P�ɂB�� �d���f�IU�����Lz�ang�DER��_���R�abd<�C6+�+�6*�#D#L�۰�_wV/����-�F'.�&�^Uϛ0Db�j$~8d>��;r�����yQ_+�s�3��g��9J(�L�����By�ѭ�]�L��$t�>���������)Sv�<�5'M���k:�R���VU���q��X5f/L��3���C8�5�Uats�$��+|O�pH�7�Y���*�i�2[��
G�4G! �lba�֎�<&9�IӱI���M)����0k�A��KN5�	��'���@)psa<M�s&��.RL�����p8�&������xK��X���'f͜[�p�0ZED�(�Ȩ�O"
�S
A���Q���-������<��#*�I$k��F�M�g֠X�i�b���-�ۭ�=�����6��E)��gr������5�J���Ü�C�хP��Rt����C4M
�D�e�E��W -ڞe�1Nm��b@��@�%�*K48Nz$�-��O���)�(���