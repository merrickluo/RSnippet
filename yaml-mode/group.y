# -*- mode: snippet -*-
# Last modified: <2013-10-05 18:06:05 Saturday by wongrichard>
# name: group
# key: group
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: add group \`$0$1\`
  group: name=${1:groupname} gid=???
