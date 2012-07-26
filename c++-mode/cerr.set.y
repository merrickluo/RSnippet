# -*- mode: snippet -*-
# Last modified: <2012-02-25 23:22:32 Saturday by richard>
# name: cerr << "lst line"
# key: cerr,
# contributor: Richard Wong <chao787@gmail.com>
# --
std::cerr << "`(progn (previous-line)
                 (kill-ring-save (line-beginning-position) (line-end-position))
                 (forward-line)
                 (search-forward "\"")
                 (call-interactively 'yank))`" << std::endl;
