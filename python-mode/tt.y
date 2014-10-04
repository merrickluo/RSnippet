# -*- mode: snippet -*-
# Last modified: <2014-05-08 09:16:42 Thursday by wongrichard>
# name: tt
# key: tt
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
def test_something():
    from pprint import pprint
    pprint($0)
    assert False