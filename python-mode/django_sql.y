# -*- mode: snippet -*-
# Last modified: <2013-10-11 11:50:44 Friday by wongrichard>
# name: dsql
# key: dsql
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
from django.db import connection
print ("sql executed:%r." % connection.queries)
