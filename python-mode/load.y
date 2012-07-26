# -*- mode: snippet -*-
# Last modified: <2012-06-21 15:39:26 Thursday by richard>
# name: load
# key: load
# contributor: Richard Wong <chao787@gmail.com>
# --
import cPickle
s = "hello world"
with open("/tmp/str.l", "wb") as fout:
    cPickle.dump(s, fout)
with open("/tmp/str.l", "rb") as fin:
    t = cPickle.load(fin)
print t

