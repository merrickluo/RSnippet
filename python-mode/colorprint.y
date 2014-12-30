# -*- mode: snippet -*-
# Last modified: <2014-11-30 16:14:38 Sunday by wongrichard>
# name: colorprint
# key: cp
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
print('\033[91m' + '$0' + '\033[0m')
