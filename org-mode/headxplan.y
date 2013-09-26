# -*- mode: snippet -*-
# Last modified: <2013-06-13 08:50:17 Thursday by wongrichard>
# name: headxplan
# key: headxplan
# contributor: Richard Wong <chao787@gmail.com>
# --
# -*- mode: org -*-
# Last modified: < >
#+TODO: TODO(t) UNDERGOING(u) | DONE(d) CANCELED(c) FAILED(f)
#+STARTUP: showall
#+TITLE:   ${1:`(concat
(format-time-string "%b %d")
" - "
(int-to-string (+ 7 (string-to-int (format-time-string "%d"))))
(format-time-string " (Week %U)"))`}

* Relationship
** TODO:

* Professional Skill
**

* Daily Journal
** $0