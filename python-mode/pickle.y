# -*- mode: snippet -*-
# Last modified: <2013-07-04 17:31:21 Thursday by wongrichard>
# name: pickle
# key: pickle
# contributor: Richard Wong <chao787@gmail.com>
# --
with open("/tmp/url_pool.pickle", "wb") as fout:
     fout.write(cPickle.dumps(URL_Pool))
