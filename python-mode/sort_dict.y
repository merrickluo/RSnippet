# -*- mode: snippet -*-
# Last modified: <2013-09-17 17:25:33 Tuesday by wongrichard>
# name: sort_dict
# key: sd
# contributor: Richard Wong <chao787@gmail.com>
# --
import operator
x = {1: 2, 3: 4, 4:3, 2:1, 0:0}

sorted_x = sorted(x.iteritems(), key=operator.itemgetter(1),reverse=True)
