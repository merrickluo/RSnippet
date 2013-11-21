# -*- mode: snippet -*-
# Last modified: <2013-10-14 20:56:43 Monday by wongrichard>
# name: mkdir
# key: mkdir
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: create directory 
  file: path=$0 mode=0744 owner=service group=$1 state=directory
