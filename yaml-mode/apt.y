# -*- mode: snippet -*-
# Last modified: <2013-10-12 00:17:19 Saturday by wongrichard>
# name: apt
# key: apt
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: install dependency packages
  sudo: yes
  apt: pkg={{ item }} state=installed
  with_items:
    -
