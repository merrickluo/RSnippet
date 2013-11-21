# -*- mode: snippet -*-
# Last modified: <2013-10-05 18:32:57 Saturday by wongrichard>
# name: file
# key: file
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: set file attributes
  file: path=$0 mode=0744 owner=service group=$1 state=directory
