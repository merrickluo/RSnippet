# -*- mode: snippet -*-
# Last modified: <2013-10-04 22:37:56 Friday by wongrichard>
# name: ppa
# key: ppa
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: $0demo | add some ppa
  sudo: yes
  apt_repository: repo='ppa:soma/ppa' state=present
