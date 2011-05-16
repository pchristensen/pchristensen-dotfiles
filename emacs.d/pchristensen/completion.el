;;----------AUTOCOMPLETE-------------------------------------------------------------------------------
;; http://cx4a.org/software/auto-complete/
(add-to-list 'load-path "~/emacs/site-lisp/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs/site-lisp//ac-dict")
(ac-config-default)

;;----------AUTOPAIR-----------------------------------------------------------------------------------
;;http://code.google.com/p/autopair/
;;TODO Doesn't totally work correctly with {} in .js
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;;----------YASNIPPET----------------------------------------------------------------------------------
(add-to-list 'load-path (concat emacs-root "emacs/site-lisp/yasnippet"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat emacs-root "emacs/site-lisp/yasnippet/snippets"))


