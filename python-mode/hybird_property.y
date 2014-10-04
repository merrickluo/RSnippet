# -*- mode: snippet -*-
# Last modified: <2014-08-15 12:57:35 Friday by wongrichard>
# name: hybrid
# key: hybrid
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
_${1:column_name} = Column('$1', $0)

@hybrid_property
def $1(self):
    return self._$1

@$1.setter
def $1(self, value):
    self._$1 = value
