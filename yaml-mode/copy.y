# -*- mode: snippet -*-
# Last modified: <2013-10-14 21:42:35 Monday by wongrichard>
# name: copy
# key: copy
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: some thing copy from ansible server
  copy: src=$0 dest=/tmp/inputfile owner=? group=?
