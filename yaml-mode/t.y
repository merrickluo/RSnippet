# -*- mode: snippet -*-
# Last modified: <2013-10-05 07:16:49 Saturday by wongrichard>
# name: t
# key: t
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: $0 | test apt-series or rpm-series.
  shell: command -v apt-get
  register: apt_system_installed
  ignore_errors: yes
  when: not apt_system_installed|failed # for apt system
