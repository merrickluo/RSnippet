# -*- mode: snippet -*-
# Last modified: <2013-10-05 18:32:27 Saturday by wongrichard>
# name: link
# key: link
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: link to $1 
  file: src=$1 dest=$0$1 mode=0744 owner=service group=$1 state=link
