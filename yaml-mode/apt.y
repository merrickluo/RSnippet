# -*- mode: snippet -*-
# Last modified: <2013-09-28 00:10:55 Saturday by wongrichard>
# name: apt
# key: apt
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: install dependency packages
  apt: name={{ item }} state=installed
  sudo: yes
  with_items:
    -
