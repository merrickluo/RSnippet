# -*- mode: snippet -*-
# Last modified: <2015-04-16 15:21:46 Thursday by wongrichard>
# name: sed
# key: sed
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
sed -i -e "/'SELF_URL_PATH'/s/ '.*'/ '$0http:\/\/localhost\/'/" ${1:filename}
