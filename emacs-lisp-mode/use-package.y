# -*- mode: snippet -*-
# Last modified: <2016-09-20 17:51:09 Tuesday by richard>
# name: use-package
# key: use
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --

(use-package $0package-name
  ; :if window-system             ; conditional loading
  :after    ; Defer loading of a package until after any of the named
  (dired)
  ; :disabled t
  :defer t  ; :commands, :bind*?, :bind-keymap*?, :mode, :interpreter implies
  :commands ; for autoload
  (isearch-moccur isearch-all)
  :init     ; before code load
  (setq foo-variable t)
  :config   ; execute code after a package is loaded
  (foo-mode 1)
  (foo-mode 2)
  :bind (("M-s O" . moccur)
         :map isearch-mode-map
         ("M-o" . isearch-moccur)
         ("M-O" . isearch-moccur-all))
  :mode "\\\\.rb\\\\'"
  :interpreter "ruby"
  )
