# -*- mode: snippet -*-
# Last modified: <2013-01-15 18:07:58 Tuesday by richard>
# name: folder
# key: cf
# contributor: Richard Wong <chao787@gmail.com>
# --
import inspect
import os
$0current_path = os.path.realpath(
    os.path.abspath(
        os.path.split(inspect.getfile(inspect.currentframe()))[0]))