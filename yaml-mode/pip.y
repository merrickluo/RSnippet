# -*- mode: snippet -*-
# Last modified: <2013-10-05 13:31:37 Saturday by wongrichard>
# name: pip
# key: pip
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: | install some pip packages.
  pip: requirements=/my_app/requirements.txt virtualenv=/my_app/venv
       name=somepackage virtualenv_command=virtualenv-2.7
       state=latest