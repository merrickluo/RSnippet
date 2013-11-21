# -*- mode: snippet -*-
# Last modified: <2013-10-23 12:52:31 Wednesday by wongrichard>
# name: wget
# key: wget
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: download file with sha256 check
  get_url: url=$0 dest=/tmp/somewhere sha256sum=???
