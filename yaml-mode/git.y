# -*- mode: snippet -*-
# Last modified: <2013-10-05 13:39:38 Saturday by wongrichard>
# name: git
# key: git
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: add some git repo.
  git: repo=ssh://$0git@slsls
       dest=/tmp/
       version=specified_version_will_be_checked_out