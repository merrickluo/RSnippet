# -*- mode: snippet -*-
# Last modified: <2013-10-07 13:31:57 Monday by wongrichard>
# name: lineinfile
# key: lineinfile
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: ensure someline and change it.
  lineinfile: dest=$0 create=yes regexp="^StrictHostKeyChecking "
              line="StrictHostKeyChecking no"
