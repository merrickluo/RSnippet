# -*- mode: snippet -*-
# Last modified: <2014-05-08 09:17:13 Thursday by wongrichard>
# name: session
# key: ss
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
with session_scope() as session:
    session.$0
