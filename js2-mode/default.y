# -*- mode: snippet -*-
# Last modified: <2014-01-18 22:34:47 Saturday by wongrichard>
# name: default
# key: default
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
${1:parameter} = (typeof $1 === "undefined") ? $0 : $1;
