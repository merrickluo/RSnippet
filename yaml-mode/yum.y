# -*- mode: snippet -*-
# Last modified: <2013-10-05 05:34:15 Saturday by wongrichard>
# name: yum
# key: yum
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --

- name: yum install something.
  yum: name={{ item }} state=present
  with_items:
  - $0