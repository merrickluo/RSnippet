# -*- mode: snippet -*-
# Last modified: <2013-10-24 11:39:52 Thursday by wongrichard>
# name: template
# key: template
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: template to $0somewhere
  sudo: yes
  template: src=upstart.conf.j2 dest=
