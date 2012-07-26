# -*- mode: snippet -*-
# Last modified: <2012-02-16 10:21:13 Thursday by richard>
# name: switch
# key: switch
# contributor: Richard Wong <chao787@gmail.com>
# --
switch (${1:cond_var}) {
       case ${2:0}:
       $0
       break;
       default:
       break;
}
