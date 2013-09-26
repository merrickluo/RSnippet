# -*- mode: snippet -*-
# Last modified: <2013-09-18 16:37:38 Wednesday by wongrichard>
# name: take
# key: take
# contributor: Richard Wong <chao787@gmail.com>
# --
from itertools import islice
def take(n, iterable):
    "Return first n items of the iterable as a list"
    return list(islice(iterable, n))
