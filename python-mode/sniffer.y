# -*- mode: snippet -*-
# Last modified: <2012-04-16 15:58:34 Monday by richard>
# name: sniffer
# key: sniffer
# contributor: Richard Wong <chao787@gmail.com>
# --
from sniffer import Scanner

paths = ('/path/to/watch/', '/another/path')
scanner = Scanner(paths)
# when file is created (function accepts the filepath string)
scanner.observe('created', file_created_func)

# when file is modified (function accepts the filepath string)
scanner.observe('modified', file_modified_func)

# when file is deleted (function accepts the filepath string)
scanner.observe('deleted', file_deleted_func)

def init_func(filename):
    print "Scanner started listening"
# when scanner.loop() is called
scanner.observe('init', init_func)

# In addition, we can use the same function to listen to multiple events::

    # listen to multiple events
def output_file(filename):
    print "Triggered", filename
scanner.observe(('created', 'modified', 'deleted'), output_file)

# Finally, we start our blocking loop::

# blocks
scanner.loop()
