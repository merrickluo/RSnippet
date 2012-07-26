# -*- mode: snippet -*-
# Last modified: <2012-04-19 15:56:49 Thursday by richard>
# name: enum
# key: enum
# contributor: Richard Wong <chao787@gmail.com>
# --
def enum(**enums):
    return type('Enum', (), enums)
# Numbers = enum('ZERO', 'ONE', 'TWO')