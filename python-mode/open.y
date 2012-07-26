# -*- mode: snippet -*-
# Last modified: <2012-05-21 16:14:41 Monday by richard>
# name: open
# key: open
# contributor: Richard Wong <chao787@gmail.com>
# --
with codecs.open(${1:filename}, "rb", "utf-8") as fin:
    $0
