# -*- mode: snippet -*-
# Last modified: <2012-11-12 19:35:39 Monday by richard>
# name: importrealpath
# key: nsi
# contributor: Richard Wong <chao787@gmail.com>
# --
import inspect
import os
import sys
cur = os.path.realpath(os.path.abspath(os.path.split
                                       (inspect.getfile(
                                           inspect.currentframe()))[0]))
sys.path.insert(0, os.path.join(cur, 'nlp'))
