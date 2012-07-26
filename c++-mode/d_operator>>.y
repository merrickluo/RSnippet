# -*- mode: snippet -*-
# Last modified: <2012-03-05 15:54:39 Monday by richard>
# name: operator>>
# key: d>>
# contributor: Richard Wong <chao787@gmail.com>
# --
friend std::istream& operator>>(std::istream& s, const ${1:`(find-backward-class-name)`}& ${2:c});
