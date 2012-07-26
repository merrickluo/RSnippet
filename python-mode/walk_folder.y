# -*- mode: snippet -*-
# Last modified: <2012-06-19 17:23:18 Tuesday by richard>
# name: walk_folder
# key: walk
# contributor: Richard Wong <chao787@gmail.com>
# --
import os

for dirname, dirnames, filenames in os.walk('.'):
    for subdirname in dirnames:
        print os.path.join(dirname, subdirname)
    for filename in filenames:
        print os.path.join(dirname, filename)
