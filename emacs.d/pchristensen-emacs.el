(add-to-list 'load-path "~/.emacs.d/vendor/")

(setq custom-file "~/.emacs.d/pchristensen/custom.el")
(load custom-file)

(load "pchristensen/env")
(load "pchristensen/global")
(load "pchristensen/defuns")
(load "pchristensen/bindings")
(load "pchristensen/tabs")
(load "pchristensen/disabled")
(load "pchristensen/utf-8")
(load "pchristensen/grep")
(load "pchristensen/diff")
(load "pchristensen/ido")
(load "pchristensen/dired")
(load "pchristensen/recentf")
(load "pchristensen/zoom")
(load "pchristensen/flymake")

(vendor 'haml-mode)
(vendor 'sass-mode)
;-----------------------------------

;; (labels ((add-path (p)
;; 		   (add-to-list 'load-path (concat emacs-root p))))
;;   (add-path "emacs/lisp") ;; all my personal elisp code
;;   (add-path "emacs/site-lisp") ;; elisp stuff I find on the internet
;;   (add-path "emacs/lisp/cnu") ;; Specific to CashNetUSA setup
;; )

;; (load-library "display-prefs")  ;; Make the windows look the way I want
;; (load-library "behavior") ;; One-offs and configs to make emacs act the way I want
;; (load-library "utils") ;; Helpful functions and snippets I've collected
;; (load-library "modes") ;; Setup and customization for different modes

;; ;;--------PROJECT----------------------------------------------------------------------------
;; (load-library "groupon") ;; Stuff specific to Groupon
;; (load-library "geekstack") ;; Stuff specific to GeekStack work

;; (load-library "custom") ;;layout customizations
