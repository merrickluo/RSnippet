# -*- mode: snippet -*-
# Last modified: <2012-11-13 18:38:32 Tuesday by richard>
# name: folder
# key: cf
# contributor: Richard Wong <chao787@gmail.com>
# --
import inspect
import os
os.path.realpath(os.path.abspath(os.path.split(inspect.getfile(inspect.currentframe()))[0]))
