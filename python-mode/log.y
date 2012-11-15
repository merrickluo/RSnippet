# -*- mode: snippet -*-
# Last modified: <2012-11-06 15:07:39 Tuesday by richard>
# name: log
# key: log
# contributor: Richard Wong <chao787@gmail.com>
# --
logging.basicConfig(filename='/tmp/temp.log',level=logging.DEBUG)

def _log(message):
    """log message to specific position."""
    print message
#     sys.stderr.write(message + os.linesep)

    return
