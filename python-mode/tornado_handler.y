# -*- mode: snippet -*-
# Last modified: <2012-07-20 11:36:18 Friday by richard>
# name: tornado_handler
# key: th
# contributor: Richard Wong <chao787@gmail.com>
# --
import tornado.httpserver
import tornado.ioloop
from tornado.web import Application
from tornado.options import define, options, logging
from summarization_handler import SummarizationHander
define("port", default=8000, help="run on the given port", type=int)


class NLP_App(Application):
    def __init__(self):
        handlers = [
            (r'/summarization', SummarizationHander),
        ]

        tornado.web.Application.__init__(self, handlers)

if __name__ == '__main__':
    tornado.options.parse_command_line()
    logging.info("Starting Tornado web server on http://localhost:%s" % options.port)

    app = NLP_App()
    server = tornado.httpserver.HTTPServer(app)
    server.listen(options.port)

    tornado.ioloop.IOLoop.instance().start()


# auto_abstract_server ended here
