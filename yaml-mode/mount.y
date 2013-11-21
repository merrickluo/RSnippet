# -*- mode: snippet -*-
# Last modified: <2013-10-31 16:53:10 Thursday by wongrichard>
# name: mount
# key: mount
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: mount something in server
  mount: name=/srv/disk src='LABEL=SOME_LABEL' state=present
