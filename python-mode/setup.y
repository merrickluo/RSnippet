# -*- mode: snippet -*-
# Last modified: <2012-05-18 17:38:45 Friday by richard>
# name: setup
# key: setup
# contributor: Richard Wong <chao787@gmail.com>
# --
#!/usr/bin/env python

import sys
import os
from distutils.core import setup
# $1 project

if sys.version_info < (2,5):
    raise NotImplementedError("Sorry, you need at least Python 2.5 or Python 3.x to use bottle.")

setup(name='$1',
      version=0.0.1,
      description='Wah?.',
      author='Richard Wong',
      author_email='chao787@gmail.com',
      url='http://github.com/chao787',
      py_modules=['bottle'],
      scripts=['${2:$1}.py'],
      license='BSD',
      platforms = 'any',
      classifiers=['Development Status :: 4 - Beta',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        '$3',
        'Topic :: Internet :: WWW/HTTP :: WSGI :: Server',
        'Programming Language :: Python :: 2.5',
        'Programming Language :: Python :: 2.6',
        'Programming Language :: Python :: 2.7',],
     )




