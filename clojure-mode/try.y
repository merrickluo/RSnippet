# -*- mode: snippet -*-
# Last modified: <2016-07-08 14:30:12 Friday by richard>
# name: try
# key: try
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
(try
  $0(throw (Exception. "Java throw"))
  (catch Exception e
    (error "caught exception: " (.getMessage e))
    (throw e)))
