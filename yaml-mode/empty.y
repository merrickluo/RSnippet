# -*- mode: snippet -*-
# Last modified: <2013-11-13 15:57:17 Wednesday by wongrichard>
# name: empty
# key: empty
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
---
- hosts: all
  user: root
  gather_facts: no

  vars:
    defaults:
      state: stopped
    complex:
      ghostbusters: [ 'egon', 'ray', 'peter', 'winston' ]
      mice: [ 'pinky', 'brain', 'larry' ]

  tasks:
    - name: copy package to server
      action: ping data='Hi Mom'

    - name: of course this can also be written like so, which is shorter
      ping: data='Hi Mom'

    - name: but what if you have a complex module that needs complicated data?
      action: ping
      args:
         data:
           moo: cow
           asdf: [1,2,3,4]

    - name: can we make that cleaner? sure!
      action: ping
      args: { data: $complex }

    - name: here is an example of how it works with defaults, notice the key=value format wins
      action: service name=httpd state=running
      args: $defaults
