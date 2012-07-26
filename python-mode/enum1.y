# -*- mode: snippet -*-
# Last modified: <2012-04-19 15:56:22 Thursday by richard>
# name: enum1
# key: enum1
# contributor: Richard Wong <chao787@gmail.com>
# --
class Enum(set):
    def __getattr__(self, name):
        if name in self:
            return name
        raise AttributeError
# Animals = Enum(["DOG", "CAT", "Horse"])
# print Animals.DOG
