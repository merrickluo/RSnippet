# -*- mode: snippet -*-
# Last modified: <2012-08-03 21:51:52 Friday by richard>
# name: folder
# key: currentfolder
# contributor: Richard Wong <chao787@gmail.com>
# --
import inspect
import os
os.path.realpath(os.path.abspath(os.path.split(inspect.getfile(inspect.currentframe()))[0]))
