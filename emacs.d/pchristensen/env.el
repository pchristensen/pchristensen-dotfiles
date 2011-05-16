(defvar root (cond ((or (eq system-type 'gnu/linux) (eq system-type 'cyqwin) (eq system-type 'linux)) "/home/peter/")
			 ((eq system-type 'darwin) "/Users/peterchristensen/")
			 (t "C:/Users/Peter/Documents/nix/")))

(defvar emacs-root (concat root "emacs"))

;; ;; TODO I don't think I need to add-path anymore
;; (labels ((add-path (p)
;; 		   (add-to-list 'load-path (concat emacs-root p))))
;;   (add-path "emacs/lisp") ;; all my personal elisp code
;;   (add-path "emacs/site-lisp") ;; elisp stuff I find on the internet
;;   (add-path "emacs/lisp/cnu") ;; Specific to CashNetUSA setup
;; )


;;----------OSX SPECIFIC-------------------------------------------------------------------------------
;;;https://github.com/aim-stuff/cmd-key-happy/blob/master/INSTALL - this makes the command key => Meta


;;https://github.com/rmm5t/dotfiles/blob/master/emacs.d/rmm5t/env.el
;;; Environment variables
;; (setq exec-path (cons "/usr/local/bin" exec-path))
;; (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
;; (setq exec-path (cons "/usr/texbin" exec-path))
;; (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
;; (setq exec-path (cons "/usr/local/share/npm/bin" exec-path))
;; (setenv "PATH" (concat "/usr/local/share/npm/bin:" (getenv "PATH")))
;; (setq exec-path (cons "/Applications/Emacs.app/Contents/MacOS/bin" exec-path))
;; (setenv "PATH" (concat "/Applications/Emacs.app/Contents/MacOS/bin:" (getenv "PATH")))