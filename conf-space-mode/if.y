# -*- mode: snippet -*-
# Last modified: <2013-11-01 01:23:33 Friday by wongrichard>
# name: if
# key: if
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
if pidof $DAEMON;
then
exec $0
fi
