# -*- mode: snippet -*-
# Last modified: <2012-04-26 10:46:16 Thursday by richard>
# name: table
# key: table
# contributor: Richard Wong <chao787@gmail.com>
# --

from texttable import Texttable

table = Texttable()
table.set_deco(Texttable.HEADER)
table.set_cols_align(["l", "r", "c"])
table.set_cols_valign(["t", "m", "b"])
table.add_rows([ ["Name", "Age", "Nickname"],
    ["Mr\nXavier\nHuon", 32, "Xav'"],
    ["Mr\nBaptiste\nClement", 1, "Baby"] ])
table.set_cols_dtype(['t',  # text
    'f',  # float (decimal)
    'e',  # float (exponent)
    'i',  # integer
    'a']) # automatic
print table.draw()