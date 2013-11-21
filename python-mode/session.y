# -*- mode: snippet -*-
# Last modified: <2013-10-27 00:41:31 Sunday by wongrichard>
# name: session
# key: se
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
with session_scope() as session:
    session.$0
