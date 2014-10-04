# -*- mode: snippet -*-
# Last modified: <2014-07-25 22:53:31 Friday by wongrichard>
# name: async
# key: async
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
(async-start
 ;; What to do in the child process
 (lambda ()
   $0
   "load successfully")
 (lambda (result)
   (message "Async process finished with: %s" result)))
