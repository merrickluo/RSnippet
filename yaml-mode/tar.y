# -*- mode: snippet -*-
# Last modified: <2013-10-23 14:24:20 Wednesday by wongrichard>
# name: tar
# key: tar
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: tar something out
  command: /bin/tar xvzf ansible-facts-webapp.tgz -C /tmp/
