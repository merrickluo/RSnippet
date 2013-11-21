# -*- mode: snippet -*-
# Last modified: <2013-10-05 05:38:03 Saturday by wongrichard>
# name: get_url
# key: get_url
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: download file with sha256 check
  get_url: url=$0 dest=/tmp/somewhere sha256sum=???
