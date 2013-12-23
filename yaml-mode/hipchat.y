# -*- mode: snippet -*-
# Last modified: <2013-12-12 19:23:21 Thursday by wongrichard>
# name: hipchat
# key: hipchat
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --

- name: laime | get git deploy version
  command: /usr/bin/git log -1 --oneline chdir="{{laime_srv_pos}}"
  register: git_rev
  tags:
    - hipchat

- name: laime | send deploy info to ansible.
  hipchat: msg="`{{ansible_ssh_user}}` deployed `{{ git_rev.stdout }}` to `{{ansible_hostname}}`"
           color=purple token=479f95da9dec8207944436ed00fccb room=276373
           from="Deploy Info"
  tags:
    - hipchat
