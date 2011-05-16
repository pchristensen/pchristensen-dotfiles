;;;--------Slime-------------------------------------------------------------------------------------------------
;SLIME Setup
(defvar slime-root (concat emacs-root "emacs.d/vendor/slime/slime/"))
(setq inferior-lisp-program "sbcl"
      common-lisp-hyperspec-root (concat "file:" root ".docs/HyperSpec/")
      lisp-indent-function 'common-lisp-indent-function
      slime-startup-animation nil)
(add-to-list 'load-path slime-root)
(eval-after-load "slime"
  '(progn
     (add-to-list 'load-path (concat slime-root "contrib/"))
     (slime-setup '(slime-fancy slime-fuzzy slime-editing-commands slime-tramp slime-repl))
     (setq slime-complete-symbol*-fancy t)
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)))
