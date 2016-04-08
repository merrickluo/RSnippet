# -*- mode: snippet -*-
# Last modified: <2016-03-23 20:39:53 Wednesday by wongrichard>
# name: volumes
# key: volumes
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
volumes:
  - ${1:/Host/data/path}:${2:/Container/data/path}:$0ro
