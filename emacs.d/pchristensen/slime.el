;;;--------Slime-------------------------------------------------------------------------------------------------
;SLIME Setup
(defvar slime-root (concat emacs-root "vendor/slime/"))
;; (setq inferior-lisp-program "sbcl"
;;       common-lisp-hyperspec-root (concat "file:" root ".docs/HyperSpec/")
;;       lisp-indent-function 'common-lisp-indent-function
;;       slime-startup-animation nil)
(add-to-list 'load-path slime-root)
;; (eval-after-load "slime"
;;   '(progn
;;      (add-to-list 'load-path (concat slime-root "contrib/"))
;;      (slime-setup '(slime-fancy slime-fuzzy slime-editing-commands slime-tramp slime-repl))
;;      (setq slime-complete-symbol*-fancy t)
;;      (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)))

;;;; TODO These should all be loaded after the mode is auto-loaded.  eval-after-load?
;; ;Marco Barringer's recommendations
;; ;Marco's Highly Opinionated Guide to Editing Lisp Code
;; ;(define-key slime-mode-map (kbd "[") 'insert-parentheses)
;; ;(define-key slime-mode-map (kbd "]") 'move-past-close-and-reindent)
;; ;(define-key slime-mode-map (kbd "(") (lambda () (interactive) (insert "[")))
;; ;(define-key slime-mode-map (kbd ")") (lambda () (interactive) (insert "]")))

;; ;; TODO I bet a bunch of these are default in the new version of paredit
;; (define-key slime-mode-map (kbd "[") 'paredit-open-parenthesis)
;; (define-key slime-mode-map (kbd "]") 'paredit-close-parenthesis)
;; (define-key slime-mode-map (kbd "RET") 'paredit-newline)
;; (define-key slime-mode-map (kbd "<return>") 'paredit-newline)
;; (define-key slime-mode-map (kbd "C-j") 'newline)
;; (define-key slime-mode-map (kbd "C-M-f") 'paredit-forward)
;; (define-key slime-mode-map (kbd "C-M-b") 'paredit-backward)
;; (define-key slime-mode-map (kbd "M-(") 'paredit-wrap-sexp)
;; (define-key slime-mode-map (kbd "M-s") 'paredit-splice-sexp)
;; (define-key slime-mode-map (kbd "M-r") 'paredit-raise-sexp)
;; (define-key slime-mode-map (kbd "(") (lambda () (interactive) (insert "[")))
;; (define-key slime-mode-map (kbd ")") (lambda () (interactive) (insert "]")))
;; (define-key slime-mode-map (kbd "C-c 0") 'paredit-forward-slurp-sexp)
;; (define-key slime-mode-map (kbd "C-c M-0") 'paredit-forward-barf-sexp)
;; (define-key slime-mode-map (kbd "C-c 9") 'paredit-backward-slurp-sexp)
;; (define-key slime-mode-map (kbd "C-c M-9") 'paredit-backward-barf-sexp)

;; ;(define-key slime-mode-map [(?\()] 'paredit-open-list)
;; ;(define-key slime-mode-map [(?\))] 'paredit-close-list)
;; ;(define-key slime-mode-map [(return)] 'paredit-newline)

;; ;(define-key slime-mode-map [(control ?\[)] (lambda () (interactive) (insert "(")))
;; ;(define-key slime-mode-map [(control ?\])] (lambda () (interactive) (insert ")")))

;; ;(define-key slime-mode-map (kbd "C-t") 'transpose-sexps)
;; ;(define-key slime-mode-map (kbd "C-M-t") 'transpose-chars)
;; (define-key slime-mode-map (kbd "C-b") 'backward-sexp)
;; (define-key slime-mode-map (kbd "C-M-b") 'backward-char)
;; (define-key slime-mode-map (kbd "C-f") 'forward-sexp)
;; (define-key slime-mode-map (kbd "C-M-f") 'forward-char)

;; (define-key slime-mode-map (kbd "C-c d") 'backward-kill-sexp)
;; (define-key slime-mode-map (kbd "C-c k") 'kill-sexp)

;; ;---SLIME settings-----------
;; (global-set-key "\C-cs" 'slime-selector)
;; ;http://parijatmishra.wordpress.com/2008/08/14/up-and-running-with-emacs-sbcl-and-slime/
;; ;(define-key slime-repl-mode-map (kbd "C-c ;") 'slime-insert-balanced-comments)
;; ;(define-key slime-repl-mode-map (kbd "C-c M-;") 'slime-remove-balanced-comments)
;; ;(define-key slime-mode-map (kbd "C-c ;") 'slime-insert-balanced-comments)
;; ;(define-key slime-mode-map (kbd "C-c M-;") 'slime-remove-balanced-comments)
;; (define-key slime-mode-map (kbd "C-c ]") 'slime-close-all-parens-in-sexp)
;; (define-key slime-mode-map (kbd "RET") 'newline-and-indent)

;; ;Bill Clementson: SLIME Tips and Techniques - Part 6 (Send SEXPs to REPL)
;; ;(require 'pc-select)
;; (define-key lisp-mode-map [f7] 'slime-send-dwim)
;; (define-key lisp-mode-map [f8] '(lambda ()
;; 				 (interactive)
;; 				 (slime-send-dwim 1)))
