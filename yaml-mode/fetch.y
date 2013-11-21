# -*- mode: snippet -*-
# Last modified: <2013-10-07 14:30:05 Monday by wongrichard>
# name: fetch
# key: fetch
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: $0ansible | copy ansible public key back for upload
  sudo: yes
  sudo_user: ansible
  fetch: src=~ansible/.ssh/id_rsa.pub
         dest=${secure_dir}/ssh_keys/ansible/${ansible_hostname}.pub
