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
BZh91AY&SYZ%;�  ���DX���/oޮ����    @QU�S�5<�4L�&b�j!���4�F�MOSi�� $�4�# �ɉ�S�i��茆!�  d
�U� �       �hi���FA�����2h&F!�|�n���q�U�]���Yt��sM���g��.佚u�E��Ĭi����-\� D���zɚ�$��8�ߒ���є�1K�C����`)�sw��^�/O6l�l&��O$"��=��w,z৪�.X[�cb8�E�����6�oȆ��S�a��rYۺ�LH��v�H��q8�WK����D�j��q�.6ho�q;X@���@�]�2�c�V�n��(�g���gO\�R�
���(��
����KvV��8q��T������$���"���)��7V��* ��iyDM^�Z{u��B[e�)��jBA�؇wo^�:�<적�lT�����C`��qN���$��k|D�P��B,��$g�b���G�cI�l�p�.�{�Jo1@^���	��TI$:�>������bt�S*O�d6AUvݱ��V��`*\�{�ԑ��)s�Z�葢[�:�Å*y��9�a7���]X2"?�vľ7(�&���������Sf�ͩ���xF!�N�ұ	���F��gp��W���{�$0cQ�V�o��U������6��O����dRj2#��{�kU�]�"��Qr{g@�'�[w��@�Z�%d7aM���l�C�_/2g]X��{�� ���}�� bq�'��Y�D�
�b�E�f(��ă ?c>R�h��"ZRM��_��(��:#� � 2� trE8P�Z%;�