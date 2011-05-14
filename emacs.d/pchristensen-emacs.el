(add-to-list 'load-path "~/.emacs.d/vendor/")

(setq custom-file "~/.emacs.d/pchristensen/custom.el")
(load custom-file)

(load "pchristensen/global")
(load "pchristensen/defuns")

(vendor 'haml-mode)
(vendor 'sass-mode)
;-----------------------------------

;; (require 'cl)

;; ; from http://steve.yegge.googlepages.com/my-dot-emacs-file
;; (defvar emacs-root (cond ((or (eq system-type 'gnu/linux) (eq system-type 'cyqwin) (eq system-type 'linux)) "/home/peter/")
;; 			 ((eq system-type 'darwin) "/Users/peterchristensen/")
;; 			 (t "C:/Users/Peter/Documents/nix/")))

;; ;;TODO Questionable definitions
;; ;(defvar elisp-root "src/elisp/")
;; ;(add-to-list 'load-path (concat emacs-root "src/lisp/"))
;; ;(add-to-list 'load-path (concat emacs-root "src/elisp/"))

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
