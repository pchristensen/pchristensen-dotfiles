;;----------AUTOCOMPLETE-------------------------------------------------------------------------------
;; http://cx4a.org/software/auto-complete/
(add-to-list 'load-path "~/emacs/site-lisp/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs/site-lisp/ac-dict")
(ac-config-default)

