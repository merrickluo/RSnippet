# -*- mode: snippet -*-
# Last modified: <2013-10-05 18:32:46 Saturday by wongrichard>
# name: dir
# key: dir
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: create directory 
  file: path=$0 mode=0744 owner=service group=$1 state=directory
