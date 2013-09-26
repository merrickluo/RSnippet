# -*- mode: snippet -*-
# Last modified: <2013-09-09 17:07:22 Monday by wongrichard>
# name: tornado
# key: tornado
# contributor: Richard Wong <chao787@gmail.com>
# --
import tornado.httpserver
import tornado.ioloop
import tornado.web
from tornado.log import app_log
from tornado.options import define, options, parse_command_line


define("port", default=8000, help="run on the given port", type=int)


class TempHandler(tornado.web.RequestHandler):

    def get(self):
        return


if __name__ == '__main__':
    parse_command_line()
    app_log.info("Starting normal server on http://localhost:%s", options.port)

    app = tornado.web.Application([('/', TempHandler)])
    server = tornado.httpserver.HTTPServer(app)
    server.listen(options.port)

    tornado.ioloop.IOLoop.instance().start()
