# -*- mode: snippet -*-
# Last modified: <2012-11-05 14:57:53 Monday by richard>
# name: tornado
# key: tornado
# contributor: Richard Wong <chao787@gmail.com>
# --
import tornado.httpserver
import tornado.ioloop
import tornado.options
import tornado.web

from tornado.options import define, options
define("port", default=8000, help="run on the given port", type=int)

$0
