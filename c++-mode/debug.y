# -*- mode: snippet -*-
# Last modified: <2012-03-06 21:13:47 Tuesday by richard>
# name: debug
# key: debug
# contributor: Richard Wong <chao787@gmail.com>
# insert an debug string.
# --
#ifndef NDEBUG
std::cout << "`(setq debug-string-temp (next-debug-substring))`" << __LINE__ << std::endl;
$0
#endif // `debug-string-temp`
