# -*- mode: snippet -*-
# Last modified: <2016-06-06 20:30:36 Monday by richard>
# name: err
# key: e
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
log.error("${1:str}", $1);
