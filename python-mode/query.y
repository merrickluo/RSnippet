# -*- mode: snippet -*-
# Last modified: <2013-10-19 13:52:43 Saturday by wongrichard>
# name: query
# key: query
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
session.query($0table, table).join(user.column).all()
