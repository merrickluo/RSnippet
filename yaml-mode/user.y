# -*- mode: snippet -*-
# Last modified: <2013-10-05 14:55:18 Saturday by wongrichard>
# name: user
# key: user
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: Add user "$1"
  user: name=$1 group=$0service createhome=no
