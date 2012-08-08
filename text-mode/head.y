# -*- mode: snippet -*-
# Last modified: <2012-08-08 11:15:33 Wednesday by richard>
# name: head
# key: head
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
${1:$(concat comment-start " " (make-string (- 55 (string-width yas/text))
?-) "[" yas/text "]" comment-end)}
`comment-start` $1 ${1:$(make-string (- 55 (string-width yas/text)) ?\s)} `comment-end`
${1:$(concat comment-start " " (make-string (- 55 (string-width yas/text))
?-) "[" yas/text "]" comment-end)}
