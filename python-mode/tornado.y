# -*- mode: snippet -*-
# Last modified: <2013-10-01 15:33:38 Tuesday by wongrichard>
# name: tornado
# key: tornado
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
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
