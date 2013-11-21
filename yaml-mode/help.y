# -*- mode: snippet -*-
# Last modified: <2013-09-28 00:22:02 Saturday by wongrichard>
# name: help
# key: help
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
- name: start the ntp service
  service: name=ntpd state=started enabled=yes # for service
  template: src=hosts.j2 dest=/etc/hosts       # for template
  copy: src=hosts.j2 dest=/etc/hosts       # for copy files
  apt: src=hosts.j2 dest=/etc/hosts       # for copy files
  pip: src=hosts.j2 dest=/etc/hosts       # for pypi installation.
  notify: restart iptables ???
  apt:                          # for apt install
  yum:                          # for yum install
  shell:                        # for shell scripts
  get_url:                      # for download things
  command: chdir=/opt/ tar -xvzf ansible-facts-webapp.tgz #for privilege
           creates=/opt/webapp
  wait_for: port={{ riak.http_port }} #???
  when: firewall is defined           #???
  ufw: enable=yes allow=riak          #???
  group: name=tomcat                  #???
  file :                              #???
  local_action:                       #???
  mysql_db: name={{ wp_db_name }} state=present #???
  mysql_user: name={{ wp_db_user }} password={{ wp_db_password }} priv={{ wp_db_name }}.*:ALL host='localhost' state=present #???
