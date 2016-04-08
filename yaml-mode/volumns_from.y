# -*- mode: snippet -*-
# Last modified: <2016-03-23 20:40:38 Wednesday by wongrichard>
# name: volumns_from
# key: volumns_from
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
volumes_from:                 # mode: {ro, rw}
  - ${1:container}:${2:container}:ro
