# -*- mode: snippet -*-
# Last modified: <2012-04-14 23:02:23 Saturday by richard>
# name: jam
# key: jam
# contributor: Richard Wong <chao787@gmail.com>
# --
import sys

def main(lines):
    line_list = lines.split("\n")
    lineno = int(line_list[0])
    for i in range(1, lineno + 1):
        process_case(line_list[i])
    pass

def process_case(line):
    pass


if __name__ == '__main__':
    assert len(sys.argv) == 2
    filename = sys.argv[1]
    with open(filename, "r") as f:
        main(f.read())
