# -*- mode: snippet -*-
# Last modified: <2013-10-05 06:51:55 Saturday by wongrichard>
# name: key
# key: key
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: get the apt key
  apt_key: url=http://apt.basho.com/gpg/basho.apt.key state=present