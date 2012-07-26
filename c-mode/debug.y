# -*- mode: snippet -*-
# Last modified: <2012-03-03 16:40:11 Saturday by richard>
# name: debug
# key: debug
# contributor: Richard Wong <chao787@gmail.com>
# insert an debug string.
# --
#ifndef NDEBUG
        printf("`(setq debug-string-temp (next-debug-substring))`\n");
$0
#endif // `debug-string-temp`
