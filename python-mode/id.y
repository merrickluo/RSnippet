# -*- mode: snippet -*-
# Last modified: <2013-11-03 11:52:07 Sunday by wongrichard>
# name: id
# key: id
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
if self.request.headers['user_id'] != user_id:
    raise NoPrivilegeError()
