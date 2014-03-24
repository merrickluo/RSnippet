# -*- mode: snippet -*-
# Last modified: <2014-02-17 11:43:52 Monday by wongrichard>
# name: property
# key: property
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
@property
def ${1:property}(self):
    return self._$1

@$1.setter
def $1(self, value):
    self._$1 = value

@$1.getter
def $1(self):
    return self._$1
