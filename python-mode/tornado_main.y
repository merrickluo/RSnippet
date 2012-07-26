# -*- mode: snippet -*-
# Last modified: <2012-06-12 09:04:24 Tuesday by richard>
# name: tornado_main
# key: tmain
# contributor: Richard Wong <chao787@gmail.com>
# --
if __name__ == '__main__':
    tornado.options.parse_command_line()
    app = tornado.web.Application(
    handlers = [$0])
    http_server = tornado.httpserver.HTTPServer(app)
    http_server.listen(options.port)
    tornado.ioloop.IOLoop.instance().start()

