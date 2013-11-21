# -*- mode: snippet -*-
# Last modified: <2013-10-19 22:36:13 Saturday by wongrichard>
# name: service
# key: service
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: service | reload some service
  sudo: yes
  service: name=$0 state=reloaded
